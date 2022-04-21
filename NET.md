### Crear solucion api

```
dotnet new webapi -o API
```

### Instalar dependencias Dependencias
```
dotnet add package Microsoft.EntityFrameworkCore.SqlServer --version 7.0.0-preview.3.22175.1
dotnet add package MySql.EntityFrameworkCore --version 6.0.0
dotnet add package Microsoft.EntityFrameworkCore.Design --version 7.0.0-preview.3.22175.1
dotnet add package Microsoft.EntityFrameworkCore.Tools --version 7.0.0-preview.3.22175.1
# SQLITE
dotnet add package Microsoft.EntityFrameworkCore.Sqlite
```

### Desinstalar dependecias
```
dotnet remove package Microsoft.EntityFrameworkCore.Tools
```


# Entity Framework

### Instalacion de EF
```
dotnet tool install --global dotnet-ef
```

### Agregar migracion
```
dotnet ef migrations add initial

```

### Aplicar migracion a la base de datos
```
dotnet ef database update
```