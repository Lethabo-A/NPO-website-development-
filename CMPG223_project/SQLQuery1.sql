CREATE TABLE patients (
    ID INT PRIMARY KEY,
    name VARCHAR(100),
    surname VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    allergies VARCHAR(MAX),
    prescriptions VARCHAR(MAX),
    current_diagnosis VARCHAR(MAX),
    past_medical_history VARCHAR(MAX),
    past_surgical_history VARCHAR(MAX),
    vaccine_status VARCHAR(MAX),
    pregnancy_history VARCHAR(MAX),
    social_history VARCHAR(MAX)
);