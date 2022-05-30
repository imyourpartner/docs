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

- `INDEX` CONSTRAINT: se utiliza para crear y recuperar datos de la base de datos muy rápidament

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
    is_active BIT DEFAULT(1) -- IS ACTIVE '1'
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

select *
from Students;
```

```sql
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
    CONSTRAINT PK_AssetID PRIMARY KEY(asset_id), -- Estableciendo PK
    CONSTRAINT UQ_Code UNIQUE(code)              --
)
```
