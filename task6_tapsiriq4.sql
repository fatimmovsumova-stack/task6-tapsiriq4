USE UniversityDB;
GO

IF OBJECT_ID('Grades', 'U') IS NOT NULL DROP TABLE Grades;
IF OBJECT_ID('Students', 'U') IS NOT NULL DROP TABLE Students;
GO

CREATE TABLE Students (
    StudentId INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NULL,
    Age INT NOT NULL,
    FacultyId INT NOT NULL
);

INSERT INTO Students (FirstName, LastName, Email, Age, FacultyId) VALUES
('Elvin', 'Mammadov', 'elvin.mammadov@bmu.edu.az', 20, 1),
('Aysel', 'Aliyeva', 'aysel.aliyeva@bmu.edu.az', 19, 2),
('Orxan', 'Hasanov', 'orxan.hasanov@bmu.edu.az', 22, 1),
('Murad', 'Musayev', 'murad.musayev@bmu.edu.az', 21, 2),
('Nigar', 'Mustafayeva', 'nigar.mustafayeva@bmu.edu.az', 18, 3);
GO

SELECT 
    FirstName AS Ad,
    LastName AS Soyad,
    Age AS Yas
FROM Students;

SELECT 
    FirstName AS Ad,
    LastName AS Soyad,
    Age AS Yas
FROM Students
WHERE Age BETWEEN 19 AND 21
ORDER BY Age DESC;

SELECT 
    FirstName AS Ad,
    LastName AS Soyad,
    Age AS Yas
FROM Students
WHERE LastName LIKE 'M%';

SELECT TOP 3
    FirstName AS Ad,
    LastName AS Soyad,
    Age AS Yas
FROM Students
ORDER BY Age DESC;

SELECT 
    FirstName AS Ad,
    LastName AS Soyad,
    Age AS Yas,
    FacultyId AS FakulteId
FROM Students
WHERE FacultyId IN (1, 2);
GO