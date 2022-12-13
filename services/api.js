const db = require("./db");
const config = require('../config');

const registerPatient = async (patient) => {
    const result = await db.query(`
        INSERT INTO Patient (name, email, phone, address, photo, password, psychiatrist_id)
        VALUES
        ("${patient.name}", "${patient.email}", "${patient.phone}", "${patient.address}", "${patient.photo}", "${patient.password}", ${patient.psychiatrist_id})
    `)
    let msg = "Error in registering patient";
    if(result.affectedRows){
        msg = "Patient Registered Successfully"
    }

    return {msg};
}

const getHospitalSummary = async (id) => {
    const hospital = await db.query(`
        select H.id, H.name, T2.total_patients, T2.id as psy_id, T2.name as psy_name, T2.patient_counts
        from Hospital as H
        left join
        (
            select hospital_id, id, name, patient_counts, sum(patient_counts) over(partition by hospital_id) as total_patients
            from
            (
                select Psy.hospital_id, Psy.id, Psy.name, count(*) as patient_counts from 
                Psychiatrist as Psy
                inner join
                Patient as Pat
                on Psy.id = Pat.psychiatrist_id
                group by Psy.hospital_id, Psy.id, Psy.name
            ) as T
            where hospital_id = ${id}
        ) as T2
        on H.id = T2.hospital_id where H.id = ${id};
    `);
    return hospital;
}

module.exports = {
    getHospitalSummary,
    registerPatient
}