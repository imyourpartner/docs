# .NET 6 DOCUMENTATION

## Crear una solucion api

```hs
dotnet new webapi -o API
```

### Instalar dependencias Dependencias
```hs
# EF
dotnet add package MySql.EntityFrameworkCore
# EF Comandos
dotnet add package Microsoft.EntityFrameworkCore.Tools
dotnet add package Microsoft.EntityFrameworkCore.Design
# Conector SQL
dotnet add package Microsoft.EntityFrameworkCore.SqlServer
# SQLITE
dotnet add package Microsoft.EntityFrameworkCore.Sqlite
```

### Desinstalar dependecias
```hs
dotnet remove package Microsoft.EntityFrameworkCore.Tools
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

```csharp
namespace API.Dtos
{
    public class DtoRequirement
    {
        public int id { get; set; }
        public string title { get; set; }
        public string description { get; set; }
    }
}
```