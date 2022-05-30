# Introducción a Transact-SQL

### Crear base de datos

```sql
CREATE DATABASE Nombre_BD;
```

### Seleccionar DB

```sql
USE Nombre_BD;
```

### Crear Tabla

```sql
CREATE TABLE Nombre_de_la_tabla
(
    tile VARCHAR(50) NOT NULL,
    body VARCHAR(MAX) NOT NULL,
)
```

### Mostrar la estructura de una tabla

```sql
exec sp_columns "usuarios";
```

### Mostrar todas las tablas creadas en una BD

```sql
exec sp_tables @table_owner = "dbo";
```

### Borrar Tabla

```sql
DROP TABLE Nombre_de_la_tabla;
```

### Insertar registro en una tabla

```sql
INSERT INTO Prueba.dbo.usuarios
(
nombre, clave
)
VALUES
(
'jose', 'jose123'
),
(
'maria', 'maria123'
),
(
'carlos', 'carlos123'
);
```

### SELECT

Instrucción `SELECT` se utiliza para seleccionar datos de tabla en una base de datos.

Los datos devueltos se almacenan en una tabla de resultados, denominada conjunto de resultados.

```sql
SELECT nombre, clave
FROM Prueba.dbo.usuarios
```

### GO

Cuando tenemos un lote de comandos SQL y necesitamos particionarlo en distintos sublotes debemos utilizar el comando `GO`, no es un comando SQL sino un comando propio del "SQL Server Management Studio".

```sql
IF OBJECT_ID('Books') IS NOT NULL
    DROP TABLE Books;

GO
CREATE TABLE Books
(
    title VARCHAR(10),
    author VARCHAR(10),
    quantity INTEGER
);

GO
exec sp_columns Books;

GO
INSERT INTO Prueba.dbo.Books
    (title,author,quantity)
VALUES
    ('Example A', 'A', 1),
    ('Example B', 'B', 12),
    ('Example C', 'C', 123),
    ('Example D', 'D', 123467890),
    ('Example E', 'E', 1234678901);

GO
SELECT *
FROM Books;
```

### WHERE

```sql
SELECT *
FROM Prueba.dbo.usuarios
WHERE nombre='jose';
```

### WHERE

La cláusula `WHERE` de MS SQL Server se usa para especificar una condición mientras se recuperan los datos de una sola tabla o se unen con varias tablas.Si se cumple la condición dada, solo entonces devuelve un valor específico de la tabla.

```sql
IF OBJECT_ID('Students') IS NOT NULL
    DROP TABLE Students;

GO
CREATE TABLE Students
(
    name VARCHAR(6),
    age TINYINT,
);

GO
exec sp_columns Students;

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
SELECT *
FROM Students
WHERE AGE > 20;
```

### DELETE

La cláusula `DELETE` se utiliza para eliminar los registros existentes de una tabla. Se Debe usar la cláusula `WHERE` con la consulta `DELETE` para eliminar las filas seleccionadas; de lo contrario, **se eliminarían todos los registros.**

```sql
GO
DELETE
FROM Students
WHERE age < 18;

GO
SELECT *
FROM Students
```

### UPDATE

La cláusula `UPDATE` se utiliza para editar/actualizar/modificar uno o varios registros.

```sql
UPDATE Students set status = 0
WHERE AGE > 18;

GO
SELECT *
FROM Students;
```

### IDENTITY

Permite generar automáticamente un número único(1,2,3,4,5,6,7.etc..) cuando se inserta un nuevo registro en una tabla. este es el campo de clave principal que se creara automáticamente cada vez que se inserta un nuevo registro por motivos de rendimiento por su tamaño en bytes.

```sql
CREATE TABLE Asset
(
id INT IDENTITY,
code INT NOT NULL,
name VARCHAR(150),
);
```

### AS

Permite cambiar el nombre de una tabla en el resultado del query

```sql
SELECT code AS 'codigo de barra', name
from Asset;
```

### ALTER TABLE

La cláusula `ALTER TABLE` se utiliza para agregar, eliminar o modificar columnas en una tabla existente. También se usa para agregar y eliminar varias restricciones en una tabla existente.

#### ADD COLUMN

```sql
ALTER TABLE Students
ADD
dni VARCHAR(50),        -- ADD A NEW COLUMN
ddress VARCHAR(300),    -- ADD A NEW COLUMN
sex BIT;                -- ADD A NEW COLUMN
```

#### DROP COLUMN

```sql
ALTER TABLE Students
DROP COLUMN name,age,sex;  -- DROP A COLUMN NAME
```

> Cambiar el nombre de la columna en la tabla. No puede usar la declaración ALTER TABLE en SQL Server para cambiar el nombre de una columna en una tabla. Sin embargo, puede usar sp_rename, aunque Microsoft recomienda que descarte y vuelva a crear la tabla para que los scripts y los procedimientos almacenados no se rompan.

```sql
sp_rename 'Students.dni', 'cedula', 'COLUMN';
```

# Funciones

## Funciones para el manejo de cadenas

### SUBSTRING()

`substring(cadena,inicio,longitud)`: devuelve una parte de la cadena especificada como primer argumento, empezando desde la posición especificada por el segundo argumento y de tantos caracteres de longitud como indica el tercer argumento.

```sql
SELECT SUBSTRING('Samsung Galaxy S10',16,3) AS Resultado
```

> Resultado: 'S10'

### STR()

`str(numero,longitud,cantidaddecimales)`: convierte números a caracteres;
el primer parámetro indica el valor numérico a convertir,
el segundo la longitud del resultado (debe ser mayor o igual a la parte entera del número más el signo si lo tuviese)
el tercero, la cantidad de decimales.
El segundo y tercer argumento son opcionales y deben ser positivos.
