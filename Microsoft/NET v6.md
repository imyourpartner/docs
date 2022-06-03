# .NET 6 DOCUMENTATION

## Crear una solucion api

```hs
dotnet new webapi -o API
```

# Entity Framework
## Instalación de las herramientas
`dotnet ef` se puede instalar como una herramienta global o local. La mayoría de los desarrolladores prefieren instalar dotnet efcomo una herramienta global usando el siguiente comando:
### Instalacion

```hs
dotnet tool install --global dotnet-ef
```

Para usarlo como una herramienta local, restaure las dependencias de un proyecto que lo declara como una dependencia de herramientas usando un archivo de manifiesto de herramienta .

Actualice la herramienta con el siguiente comando:
### Actualizacion

```hs
dotnet tool update --global dotnet-ef
```

Antes de que pueda usar las herramientas en un proyecto específico, deberá agregarle el Microsoft.EntityFrameworkCore.Designpaquete.

### Package obligatorio
```hs
dotnet add package Microsoft.EntityFrameworkCore.Design
```

# Trabajando con migraciones
### Agregar migracion

```hs
dotnet ef migrations add initial
```

### Aplicar migracion a la base de datos
```hs
dotnet ef database update
```

### Desinstalar dependecias
```hs
dotnet remove package Microsoft.EntityFrameworkCore.Tools
```
## Code First
Se enfoca en el dominio de la aplicación y comienza a crear clases para su entidad de dominio en lugar de diseñar primero su base de datos y luego crear las clases que coincidan con el diseño de su base de datos. La siguiente figura ilustra el enfoque de código primero.

**Flujo de trabajo de `Code First`:**

-> Crear o modificar clases de dominio 

-> Configurar estas clases de dominio mediante Fluent-API o atributos de anotación de datos

-> Crear o actualiza el esquema de la base de datos mediante migración automatizada o migración basada en código.

Los cambios se aplican a la base de datos despues de ejecutar:
```hs
dotnet ef database update
```


## Database First
El enfoque de `Database First`  proporciona una alternativa a los enfoques de  `Code First`. Crea códigos de modelo (clases, propiedades, DbContext, etc.) a partir de la base de datos existente. Se puede usar las demás funcionalidades, como la sincronización del modelo/base de datos y la generación de código.

**Flujo de trabajo de `Code First`:**

-> Crear base de datos

-> Trabajar en función a `store procedures` o ejecutar codigo SQL explicitamente en un string


Generar clases (Entidades) a partir de una BD existente:
Utilice el comando DbContext Scaffold para generar el modelo. El comando tiene dos argumentos obligatorios: una cadena de conexión y un proveedor. La cadena de conexión dependerá de su entorno y proveedor de base de datos. El argumento del proveedor es el proveedor de Entity Framework para la base de datos elegida. Este ejemplo utiliza la base de datos de muestra AdventureWorks para el servidor SQL proporcionada por Microsoft.

``hs
dotnet ef dbcontext scaffold "Server=SERV-01\SQLEXPRESS01\;Database=MyFirstDatabase;Trusted_Connection=True;" Microsoft.EntityFrameworkCore.SqlServer -o Model
```
La opción `-o`  (o alternativamente --output-dir) especifica el directorio (`carpeta`) donde se generarán los archivos de clase. Si se omite, los archivos de clase se generarán en el directorio del proyecto (donde se encuentra el archivo .csproj ).

La clase `DbContext`  tomará el nombre de la base de datos más "Contexto". Puede anular esto usando la opción -co --context, por ejemplo

``hs
dotnet ef dbcontext scaffold "Server=.\;Database=AdventureWorksLT2012;Trusted_Connection=True;" Microsoft.EntityFrameworkCore.SqlServer -o Model -c "AdventureContext"
```

### Actualización del modelo
El enfoque recomendado para mantener los cambios en la base de datos sincronizados con el modelo generado es usar migraciones, es decir, primero hacer los cambios en el modelo y luego usar herramientas para generar código que propague las modificaciones a la base de datos. Sin embargo, dependiendo de sus circunstancias, esto puede no ser siempre una opción. Si necesita volver a montar el modelo después de que se hayan realizado cambios en el esquema de la base de datos, puede hacerlo especificando la opción -fo , por ejemplo:--force

```hs
dotnet ef dbcontext scaffold "Server=.\;Database=AdventureWorksLT2012;Trusted_Connection=True;" Microsoft.EntityFrameworkCore.SqlServer --force
```

Todos los archivos de clase se sobrescribirán, lo que significa que se perderán todas las modificaciones que haya realizado, por ejemplo, agregar atributos o miembros adicionales. Puede mitigar esto optando por usar la API Fluent para la configuración y usando clases de configuración separadas . Además, puede usar clases parciales para declarar propiedades adicionales que no se asignan a columnas en las tablas de la base de datos.