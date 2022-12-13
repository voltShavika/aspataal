const multer = require("multer")
const {v4 : uuidv4} = require('uuid')
const DIR = './public/'

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, DIR);
    },
    filename: (req, file, cb) => {
        const filename = uuidv4() + "" + file.originalname.toLowerCase().split(' ').join('')
        cb(null, filename)
    }
});

const upload = multer({
    storage: storage,
    fileFilter: (req, file, cb) => {
        if(file.mimetype == "image/jpg" || file.mimetype == "image/jpeg" || file.mimetype == "image/png"){
            cb(null, true);
        } else{
            cb(null, false);
            return cb("Only .jpg .jpeg and .png are supported");
        }
    }
})

const uploadSingleFile = upload.single("photo");
  
module.exports = {
  upload,
  uploadSingleFile
}