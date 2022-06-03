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
``


## Database First
El enfoque de `Database First`  proporciona una alternativa a los enfoques de  `Code First`. Crea códigos de modelo (clases, propiedades, DbContext, etc.) a partir de la base de datos existente. Se puede usar las demás funcionalidades, como la sincronización del modelo/base de datos y la generación de código.

**Flujo de trabajo de `Code First`:**

-> Crear base de datos

-> Trabajar en función a `store procedures` o ejecutar codigo SQL explicitamente en un string