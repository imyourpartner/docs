CREATE TABLE Requiriments
(
    requiriment_id INT
    INDENTITY,
    title VARCHAR
    (50),
    body VARCHAR
    (3000),
    created_date DATETIME DEFAULT
    (GETDATE
    ()),
    created_by_user INT,
    -- CONSTRAINT
    CONSTRAINT PK_REQUIRIMENT_RequirimentID PRIMARY KEY
    (requiriment_id),
)