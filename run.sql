USE Prueba;

GO
IF OBJECT_ID('Asset')IS NOT NULL
DROP TABLE Asset;

GO
CREATE TABLE Asset
(
    asset_id INT IDENTITY NOT NULL,
    code INT NOT NULL,
    name VARCHAR(100),
    CONSTRAINT PK_AssetID PRIMARY KEY(asset_id),
    -- Estableciendo PK
    CONSTRAINT UQ_Code UNIQUE(code)
    -- 
)

CREATE TABLE Inventory
(
    inventory_id INT PRIMARY KEY IDENTITY NOT NULL,
    name VARCHAR(100),
)


SELECT *
FROM sys.key_constraints
WHERE type = 'UQ' OR type = 'PK';





---------------

IF OBJECT_ID('Students') IS NOT NULL
    DROP TABLE Students;

GO
CREATE TABLE Students
(
    name VARCHAR(6),
    age TINYINT,

);

GO
INSERT INTO Students
    (name,age)
VALUES
    ('maria', 22),
    ('jose', 12),
    ('carlos', 32),
    ('lucia', 42),
    ('pedro', 18),
    ('juan', 16)


GO
ALTER TABLE Students
ADD 
dni VARCHAR(50),        -- ADD A NEW COLUMN
ddress VARCHAR(300),    -- ADD A NEW COLUMN
sex BIT;                -- ADD A NEW COLUMN

GO
ALTER TABLE Students
DROP COLUMN name,age,sex;
-- DROP A COLUMN NAME


sp_rename 'table_name.old_column_name', 'new_column_name', 'COLUMN';
sp_rename 'Students.dni', 'cedula', 'COLUMN';

select *
from Students;

