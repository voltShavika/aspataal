const express = require("express");
const multer = require("multer")
const {checkSchema, validationResult} = require('express-validator');
const {uploadSingleFile} = require("../helper")

const { getHospitalSummary, registerPatient, getPsychiatrist } = require("../services/api");

const router = express.Router();

router.post("/hospital", async (req, res, next) => {
    try{
        console.log(req.body);
        const rows  = await getHospitalSummary(parseInt(req.body.id));
        if(rows.length > 0){
            const data = {
                hospital_name: rows[0].name,
                hospital_id: rows[0].id,
                total_patient_counts: rows[0].total_patients?parseInt(rows[0].total_patients):0,
                psychiatrist_details:[]
            }
            if(rows[0].psy_id != null){
                data.psychiatrist_details = rows.map(r => {
                    return {
                        id: r.psy_id,
                        name: r.psy_name,
                        patients_count: r.patient_counts
                    }
                })
            }
            res.status(200).json(data)
        }
        else{
            next({statusCode: 400, message: `No Hospital with id ${req.body.id}`});
        }
    }
    catch(e) {
        next({message: `Please Enter a valid hospital id`});
    }
})

const PatientFormSchema = {
    name: {
        notEmpty: true,
        errorMessage: "Name cannot be empty"
    },
    email: {
        isEmail: true,
        errorMessage: "Email should be valid"
    },
    phone: {
        isMobilePhone: true,
        errorMessage: "Phone number should be valid"
    },
    address: {
        isLength: {
            min: 10
        },
        errorMessage: "Address cannot be blank"
    },
    password: {
        isStrongPassword: {
            minLength: 8,
            maxLength: 15,
            minLowercase: 1,
            minUppercase: 1,
            minNumbers: 1
        },
        errorMessage: "Password should be min 8 characters and maximum 15. Should have a upper case, a lower case, a number and a symbol"
    },
    psychiatrist_id: {
        custom: {
            options: async id => {
                try{
                    const results = await getPsychiatrist(id);
                    console.log("Results", results);
                    if(results.length < 1){
                        return Promise.reject("Please enter valid psychiatrist id")
                    }
                    return false;
                }
                catch(e) {
                    return Promise.reject("Please enter valid psychiatrist id");
                }
            }
        },
        errorMessage: "Please enter valid psychiatrist id"
    }

}

router.post("/register", (req, res, next) => {
    uploadSingleFile(req, res, async (fileError) => {
        let errors = [];
        if(fileError){
            errors.push({msg: fileError})
        }
        else{
            if(!req.hasOwnProperty("file")){
                errors.push({msg: "Photo cannot be blank"})
            }
        }
        try {
            console.log(req.body);
            await Promise.all(checkSchema(PatientFormSchema).map(chain => chain.run(req)));
            errors = errors.concat(validationResult(req).array());
            if(errors.length > 0){
                return res.status(400).json({
                    errors: errors.map(v => v.msg)
                })
            }

            req.body.photo = '/public/' + req.file.filename;
            return res.status(201).json(await registerPatient(req.body))
        }
        catch(e) {
            next(e);
        }
    })
})

module.exports = router;


