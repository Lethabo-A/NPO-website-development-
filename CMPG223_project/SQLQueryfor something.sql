CREATE TABLE Occupants (
    [Identification/Passport Number]  INT PRIMARY KEY NOT NULL,
    Name VARCHAR(50),
    Surname VARCHAR(50),
    Gender NVARCHAR(50),
    Citizenship VARCHAR(50),
    [Previous Address] NVARCHAR(50),
    [Transfer Home] NVARCHAR(50),
 [Relative Contact Information] VARCHAR(50), 
 [Medical Conditions] VARCHAR(MAX)
   
);