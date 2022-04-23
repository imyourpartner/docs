### Crear solucion api

```
dotnet new webapi -o API
```

### Instalar dependencias Dependencias
```
dotnet add package Microsoft.EntityFrameworkCore.SqlServer
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet add package Microsoft.EntityFrameworkCore.Tools
dotnet add package MySql.EntityFrameworkCore
# SQLITE
dotnet add package Microsoft.EntityFrameworkCore.Sqlite
```

### Desinstalar dependecias
```
dotnet remove package Microsoft.EntityFrameworkCore.Tools
```


# Entity Framework
## Instalación de las herramientas
`dotnet ef` se puede instalar como una herramienta global o local. La mayoría de los desarrolladores prefieren instalar dotnet efcomo una herramienta global usando el siguiente comando:
### Instalacion

```
dotnet tool install --global dotnet-ef
```


Para usarlo como una herramienta local, restaure las dependencias de un proyecto que lo declara como una dependencia de herramientas usando un archivo de manifiesto de herramienta .

Actualice la herramienta con el siguiente comando:
### Actualizacion

```
dotnet tool update --global dotnet-ef
```

Antes de que pueda usar las herramientas en un proyecto específico, deberá agregarle el Microsoft.EntityFrameworkCore.Designpaquete.

### Package obligatorio
```
dotnet add package Microsoft.EntityFrameworkCore.Design
```

# Trabajando con migraciones
### Agregar migracion

```
dotnet ef migrations add initial
```

### Aplicar migracion a la base de datos
```
dotnet ef database update
```