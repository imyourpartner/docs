### Crear solucion api

```
dotnet new webapi -o API
```

### Dependencias
```
dotnet add package Microsoft.EntityFrameworkCore.SqlServer --version 7.0.0-preview.3.22175.1
dotnet add package Microsoft.EntityFrameworkCore.Design --version 7.0.0-preview.3.22175.1
```

### EF
```
dotnet ef migration add initial
```
