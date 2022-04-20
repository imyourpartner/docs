### Crear solucion api

```
dotnet new webapi -o API
```

### Dependencias
```
dotnet add package Microsoft.EntityFrameworkCore.SqlServer --version 7.0.0-preview.3.22175.1
dotnet add package Microsoft.EntityFrameworkCore.Design --version 7.0.0-preview.3.22175.1
dotnet add package Microsoft.EntityFrameworkCore.Tools --version 7.0.0-preview.3.22175.1
```

## Entity Framework

### Instalacion de EF
```
dotnet tool install --global dotnet-ef
```

```
dotnet ef migrations add initial
```
