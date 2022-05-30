DROP DATABASE Prueba;
CREATE DATABASE Prueba;
USE PRUEBA;
GO
IF OBJECT_ID('Student') IS NOT NULL
    DROP TABLE Student;

GO
IF OBJECT_ID('Course') IS NOT NULL
    DROP TABLE Course;

CREATE TABLE Students
(
    student_id INT IDENTITY,
    -- BAD IDEA TO USE IDENTITY FUNCTION
    name VARCHAR(20),
    CONSTRAINT PK_STUDENT_ID PRIMARY KEY (student_id)
)

CREATE TABLE Users
(
    user_id INT IDENTITY,
    -- BAD IDEA TO USE IDENTITY FUNCTION
    stundent_id INT NOT NULL,
    username VARCHAR(20) NOT NULL,
    CONSTRAINT PK_USERID PRIMARY KEY (user_id),
    CONSTRAINT FK_USER_STUDENT FOREIGN KEY (stundent_id) REFERENCES Students(student_id),
    CONSTRAINT UQ_STUNDENT_ID UNIQUE (stundent_id),
    CONSTRAINT UQ_USERNAME UNIQUE (username),
)

INSERT INTO Students
    (name)
VALUES
    ('carlos'),
    ('pedro'),
    ('maria'),
    ('PRUEBA')

INSERT INTO Users
    (stundent_id, username)
VALUES
    (1, 'carlos123'),
    (2, 'pedro123'),
    (3, 'maria123'),
    (6, 'CVVEGRERG')

SELECT *
FROM Students;
SELECT *
FROM Users;