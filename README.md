# aspataal

A simple Node + Express based REST server for registering a patient and view summary of a hospital

### Major Libraries
- `mysql2` - For Mysql database connection
- `express-validator` - For data validation and custom validations. It has Schema based validation which is very powerfull and simple
- `multer` - For uploading files in multipart/form-data


### API endpoints

1. `http://localhost:8000/api/hospital`


Request
<pre>
  type: `POST`
  body: json
  {
    "id": 1
  }
</pre>
Response
<pre>
  {
    "hospital_name": "Indira Gandhi Institute of Medical Sciences (IGIMS)",
    "hospital_id": 3,
    "total_patient_counts": 16,
    "psychiatrist_details": [
        {
            "id": 11,
            "name": "Monu Singh",
            "patients_count": 2
        },
        {
            "id": 12,
            "name": "Vipin Singh",
            "patients_count": 4
        },
        {
            "id": 13,
            "name": "Arav Mithril",
            "patients_count": 2
        },
        {
            "id": 14,
            "name": "Sauron",
            "patients_count": 4
        },
        {
            "id": 15,
            "name": "Hallbrand Great",
            "patients_count": 4
        }
    ]
}
</pre>

2. `http://localhost:8000/api/register` - To register a patient by psychiatrist

Request
<pre>
  type: POST,
  body: form-data
  {
    name: "Your name",
    email: "email",
    phone: "+919823232323,
    address: "C171 A surya nagar",
    photo: "someawesomepic.jpg",
    password: "Strong@123",
    psychiatrist_id: 1
  }
</pre>
Response

Check the Http response code:
- `201` then patient was register succesfully, `{"message": "Patient Registed Succesfully"}`
- `400` then there validation errors in your data, `{"errors": ["Errors", "like", "this"]}`
- `500` Something went wrong in server, `{"message": "Some internal Error"}`

#### Database

I have included the database dump at `./database/aspataal.sql`


