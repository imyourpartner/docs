# CONSTRAINTS

Los `CONSTRAINT` ó `restricciones` son las reglas aplicadas a las columnas de datos de una tabla. Estos se utilizan para limitar el tipo de datos que pueden entrar en una tabla. Esto asegura la precisión y confiabilidad de los datos en la base de datos.

Los `CONSTRAINT` pueden estar a nivel de `columna` o de `tabla`.

Las restricciones de nivel de `columna` se aplican solo a una `columna`, mientras que las restricciones de nivel de `tabla` se aplican a toda la `tabla`.

Las siguientes son algunas de las `restricciones` más utilizadas disponibles en SQL:

- `NOT NULL` CONSTRAINT: asegura que una columna no puede tener un valor NULL.De forma predeterminada, una columna puede contener valores `NULL`.La restricción `NOT NUL` obliga a una columna a NO aceptar valores `NULOS`.Esto obliga a que un campo siempre contenga un valor, lo que significa que no puede insertar un nuevo registro o actualizar un registro sin agregar un valor a este campo.

- `DEFAULT` CONSTRAINT: proporciona un valor predeterminado para una columna cuando no se especifica ninguno.

- `UNIQUE` CONSTRAINT: asegura que todos los valores en una columna sean diferentes(Unicos).

- `PRIMARY KEY`: identifica de forma única cada fila/registro en una tabla de base de datos.

- `FOREIGN Key`: identifica de forma única una fila/registro en cualquiera de las tablas de la base de datos dada.

- `CHECK` CONSTRAINT : la restricción CHECK garantiza que todos los valores de una columna satisfagan ciertas condiciones.

- `INDEX` CONSTRAINT: se utiliza para crear y recuperar datos de la base de datos muy rápidamente.

**Índices implícitos**

Los índices implícitos son índices que el servidor de la base de datos crea automáticamente cuando se crea un objeto. Los índices se crean automáticamente para restricciones de clave principal y restricciones únicas.

### LIST OF CONSTRAINTS

```sql
SELECT *
FROM sys.key_constraints
WHERE TYPE = 'PK' OR TYPE='UQ';
```

### NOT NULL

```sql
IF OBJECT_ID('Students') IS NOT NULL
    DROP TABLE Students;

GO
CREATE TABLE Students
(
    name VARCHAR(6) NOT NULL,
    age TINYINT,
    status BIT DEFAULT (1)
);

GO
INSERT INTO Students
    (name,age)
VALUES
    (NULL, 22),  -- Nombre NULL
    ('jose', 12)
```

**ERROR**

> Msg 515, Level 16, State 2, Line 14

> Cannot insert the value NULL into column 'name', table 'Prueba.dbo.Students'; column does not allow nulls. INSERT fails.

### DEFAULT

```sql
IF OBJECT_ID('Students') IS NOT NULL
    DROP TABLE Students;

GO
CREATE TABLE Students
(
    name VARCHAR(6),
    age TINYINT,
    is_active BIT DEFAULT(1) -- IS ACTIVE  DEFAULT VALUE '1'
);
```

### UNIQUE

```sql
CREATE TABLE Student
(
    name VARCHAR(30),
    dni int,
    -- CONSTRAINT UQ
    CONSTRAINT UQ_Student_DNI UNIQUE (dni) -- UNIQUE COLUMN
);
```

### PRIMARY KEY

```sql
CREATE TABLE Student
(
    student_id INT IDENTITY,
    name VARCHAR(30),
    dni int,
    --CONSTRAINT PK
    CONSTRAINT PK_STUDENT_ID PRIMARY KEY (student_id) -- PRIMARY KEY COLUMN
);
```

### FOREIGN KEY

```sql
CREATE TABLE Student
(
    student_id INT IDENTITY,-- PRIMARY KEY COLUMN
    name VARCHAR(30),
    dni int,
    -- CONSTRAINT
    CONSTRAINT PK_STUDENT_ID PRIMARY KEY (student_id),
);

GO
CREATE TABLE Credit
(
    credit_id INT IDENTITY NOT NULL, -- PRIMARY KEY COLUMN
    student_id INT NOT NULL,         -- FOREIGN KEY COLUMN
    credit SMALLMONEY,
    -- CONSTRAINT
    CONSTRAINT PK_CREDIT_CREDIT_ID PRIMARY KEY (credit_id), --PK
    CONSTRAINT FK_CREDIT_STUDENT FOREIGN KEY(student_id)    --FK
    REFERENCES Student(student_id) -- RELATIONSHIP
);
```

### CHECK

```sql
CREATE TABLE Student
(
    student_id INT IDENTITY
    name VARCHAR(30),
    age TINYINT
        CONSTRAINT CH_STUDENT_AGE CHECK (age>=18 AND age<=30)
)

INSERT INTO Student(name,age)
VALUES
('maria', 30),
('jose',40)
```

> The INSERT statement conflicted with the CHECK constraint "CH_STUDENT_AGE". The conflict occurred in database "Develop", table "dbo.Student", column 'age'..
