GO
USE master;

GO
DROP DATABASE MyFirstDatabase;


-- DATABASE
GO
CREATE DATABASE MyFirstDatabase;

--SELECT TABASE
GO
USE MyFirstDatabase;

-- TABLE COMPANY
GO
CREATE TABLE Company
(
    [company_id] INT IDENTITY(1,1) NOT NULL,
    [comercial_name] VARCHAR(50) NOT NULL,
    [alias_name] VARCHAR(50) NOT NULL,
    [rnc] INT NOT NULL,
    [is_active] BIT DEFAULT(1) NOT NULL,
    [address] VARCHAR(200),
    CONSTRAINT PK_COMPANY_ID PRIMARY KEY(company_id),
    CONSTRAINT UQ_COMPANY_RNC UNIQUE (rnc)
)

-- TABLE INVENTORY
GO
CREATE TABLE Inventory
(
    [inventory_id] INT NOT NULL IDENTITY(1,1),
    [company_id] INT,
    [name] VARCHAR(50),
    [observations] VARCHAR(500),
    [date_created] DATETIME DEFAULT(GETDATE()),
    CONSTRAINT PK_INVENTORY PRIMARY KEY (inventory_id),
    CONSTRAINT FK_INVENTORY_COMPANY FOREIGN KEY(company_id) REFERENCES Company(company_id)
)

-- TABLE ASSET
GO
CREATE TABLE Asset
(
    [asset_id] INT NOT NULL IDENTITY(1,1),
    [company_id] INT,
    [code] INT,
    [model_name] VARCHAR(50),
    [model_number] VARCHAR(50),
    [serial_number] VARCHAR(30),
    [price] DECIMAL(10,2),
    CONSTRAINT PK_ASSET_ID PRIMARY KEY(asset_id),
    CONSTRAINT FK_ASSET_COMPANY FOREIGN KEY(company_id) REFERENCES Company(company_id),
    CONSTRAINT UQ_ASSET_CODE UNIQUE(code)
)

--TABLE INVENTORY_ASSET
CREATE TABLE Inventory_Asset
(
    [inventory_id] INT,
    [asset_id] INT,
    CONSTRAINT FK_ASSET_ID FOREIGN KEY (asset_id) REFERENCES Asset(asset_id),
    CONSTRAINT FK_IVENTORY_ID FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id)
)


-- TABLE ASSET TYPE
GO
CREATE TABLE AssetType
(
    [assettype_id] INT NOT NULL IDENTITY(1,1),
    [asset_id] INT,
    [type] VARCHAR(50) NOT NULL,
    CONSTRAINT PK_ASSSETYPE_ID PRIMARY KEY (assettype_id),
    CONSTRAINT FK_ASSETTYPE_ASSET FOREIGN KEY(asset_id) REFERENCES Asset(asset_id),
)

-- TABLE ASSET CATEGORY
CREATE TABLE AssetCategory
(
    [assetcategory_id] INT IDENTITY(1,1),
    [asset_id] INT,
    [name] VARCHAR(50),
    CONSTRAINT PK_ASSETCATEGORY PRIMARY KEY (assetcategory_id),
    CONSTRAINT FK_ASSETCATEGORY_ASSET FOREIGN KEY(asset_id) REFERENCES Asset(asset_id),
    CONSTRAINT UQ_ASSETCATEGORY_NAME UNIQUE(name)
)

-- TABLE ASSET MADE BY
CREATE TABLE AssetMadeBy
(
    [assetmadeby_id] INT IDENTITY(1,1),
    [asset_id] INT,
    [name] VARCHAR(80),
    CONSTRAINT PK_ASSSETMADEBY PRIMARY KEY(assetmadeby_id),
    CONSTRAINT FK_ASSETMADEBY_ASSET FOREIGN KEY (asset_id) REFERENCES Asset(asset_id),
    CONSTRAINT UQ_ASSETMADEBY_NAME UNIQUE(name)

)


/* 
                    SEED DATA IN THE DATABASE
*/

-- INSERT COMPANY
GO
INSERT INTO Company
    (comercial_name,alias_name,rnc)
VALUES
    ('Company A', 'Alias A', 5748251),
    ('Company B', 'Alias B', 9151215),
    ('Company C', 'Alias C', 3423433),
    ('Company D', 'Alias D', 9195161);


-- INSERT ASSET
INSERT INTO Asset
    (serial_number,price,model_name,model_number,code)
VALUES
    ('A7W8F148F1', 100.99, 'Galaxy S10', 'SM-S105M', 100),
    ('A7W8F148F2', 100.99, 'Galaxy S10', 'SM-S105M', 101),
    ('A7W8F148F3', 100.99, 'Galaxy S10', 'SM-S105M', 102),
    ('A7W8F148F4', 100.99, 'Galaxy S10', 'SM-S105M', 103),
    ('ASD61AS5S1', 200.99, 'Galaxy 20', 'SM-S208Z', 104),
    ('ASD61AS5S2', 200.99, 'Galaxy 20', 'SM-S208Z', 105),
    ('35D6D5D8E1', 300.99, 'Galaxy 30', 'SM-S30X2', 106),
    ('35D6D5D8E2', 300.99, 'Galaxy 30', 'SM-S30X2', 107),
    ('35D6D5D8E3', 300.99, 'Galaxy 30', 'SM-S30X2', 108),
    ('1E9E1E1D5D1', 1300.59, 'Iphone 13', 'IPHONE-13X8S4A', 109),
    ('1E9E1E1D5D2', 1300.59, 'Iphone 13', 'IPHONE-13X8S4A', 110),
    ('F5E6W1F141', 350, 'HZW 2021', 'TX-20HZW2021', 111),
    ('F5E6W1F141', 450.41, 'HZW 2021', 'TX-30HZW2021', 112),
    ('F5E6W1F142', 599.99, 'HZW 2021', 'TX-405HZW2021', 113);

-- INSERT ASSET TYPE
GO
INSERT INTO AssetType
    (type)
VALUES
    ('Cellphone'),
    ('Phone'),
    ('TV'),
    ('SMART TV'),
    ('Monitor'),
    ('Keyword'),
    ('Mouse'),
    ('Workstation'),
    ('Laptop'),
    ('Server'),
    ('Firewall'),
    ('Switch'),
    ('Access Point'),
    ('Router'),
    ('Patch Panel'),
    ('Chair'),
    ('Table'),
    ('Printer'),
    ('Refrigerator');


-- INSERT ASSET CATEGORY
GO
INSERT INTO AssetCategory
    (name)
VALUES
    ('Office equipment'),
    ('Network equipament'),
    ('Kitchen equipment and utensils');

-- INSER TO ASSET MADE By
GO
INSERT INTO AssetMadeBy
    (name)
VALUES
    ('Samsung'),
    ('Apple'),
    ('Cisco'),
    ('TP-LINK'),
    ('Ubiquiti'),
    ('LG'),
    ('White Westinghouse'),
    ('HP'),
    ('Whirlpool'),
    ('Frigidaire'),
    ('Cetron');

    

-- INSERT INVENTORY
GO
INSERT INTO Inventory
    (name,company_id)
VALUES
    ('Inventory name 1', 1),
    ('Inventory name 2', 1),
    ('Inventory name 3', 2);



SELECT AssetType.[type]
FROM Asset INNER JOIN AssetType ON Asset.asset_id = AssetType.assettype_id




-- SELECT *
-- FROM Company;
-- SELECT *
-- FROM Asset;
-- SELECT *
-- FROM AssetType;
-- SELECT *
-- FROM AssetCategory;
-- SELECT *
-- FROM AssetMadeBy;
-- SELECT *
-- FROM INVENTORY;


select *
from Asset




CREATE PROCEDURE OR
ALTER sp_Asset_GetAll
AS
BEGIN
    SELECT *
    FROM Asset
    ORDER BY Asset DESC
END;








-- -- TABLE ASSET
-- GO
-- CREATE TABLE Asset
-- (
--     [asset_id] INT NOT NULL IDENTITY(1,1),
--     [name] VARCHAR(100) NOT NULL,
--     [code] INT,
--     CONSTRAINT PK_ASSET PRIMARY KEY (asset_id),
-- )


-- -- TABLE ASSET DETAIL
-- GO
-- CREATE TABLE AssetDetail
-- (
--     [assetdetail_id] INT NOT NULL IDENTITY(1,1),
--     [assetmadeby_id] INT,
--     [asset_id] INT,
--     [code] INT NOT NULL,
--     [model_name] VARCHAR(50),
--     [model_number] VARCHAR(50),
--     [serial_number] VARCHAR(30),
--     [price] DECIMAL(10,2),
--     CONSTRAINT PK_ASSETDETAIL PRIMARY KEY(assetdetail_id),
--     CONSTRAINT FK_ASSETDETAIL_ASSET FOREIGN KEY(asset_id) REFERENCES Asset(asset_id),
-- )

-- INSERT ASSET DETAIL
-- GO
-- INSERT INTO AssetDetail
--     (serial_number,price,model_name,model_number,assetmadeby_id,asset_id)
-- VALUES
--     ('A7W8F148F1', 100.99, 'Galaxy S10', 'SM-S105M', 1, 1),
--     ('A7W8F148F2', 100.99, 'Galaxy S10', 'SM-S105M', 1, 1),
--     ('A7W8F148F3', 100.99, 'Galaxy S10', 'SM-S105M', 1, 1),
--     ('A7W8F148F4', 100.99, 'Galaxy S10', 'SM-S105M', 1, 1),
--     ('ASD61AS5S1', 200.99, 'Galaxy 20', 'SM-S208Z', 1, 2),
--     ('ASD61AS5S2', 200.99, 'Galaxy 20', 'SM-S208Z', 1, 2),
--     ('35D6D5D8E1', 300.99, 'Galaxy 30', 'SM-S30X2', 1, 3),
--     ('35D6D5D8E2', 300.99, 'Galaxy 30', 'SM-S30X2', 1, 3),
--     ('35D6D5D8E3', 300.99, 'Galaxy 30', 'SM-S30X2', 1, 3),
--     ('1E9E1E1D5D1', 1300.59, 'Iphone 13', 'IPHONE-13X8S4A', 2, 4),
--     ('1E9E1E1D5D2', 1300.59, 'Iphone 13', 'IPHONE-13X8S4A', 2, 4),
--     ('F5E6W1F141', 350, 'HZW 2021', 'TX-20HZW2021', 6, 5),
--     ('F5E6W1F141', 450.41, 'HZW 2021', 'TX-30HZW2021', 6, 6),
--     ('F5E6W1F142', 599.99, 'HZW 2021', 'TX-405HZW2021', 6, 7);