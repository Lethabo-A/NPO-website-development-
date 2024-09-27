CREATE TABLE patients (
    ID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(100)NOT NULL,
    Surname VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Allergies TEXT,
    Prescriptions TEXT,
    [Current Diagnosis] TEXT,
    [Past Medical History] TEXT,
    [Past Surgical History] TEXT,
    [Vaccine Status] TEXT,
    [Pregnancy History] TEXT,
    [Social History] TEXT
);
