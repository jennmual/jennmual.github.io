# Script R para crear la estructura de archivos
create_github_pages_structure <- function() {
  # Crear directorios
  dirs <- c("styles", "scripts", "images/graficas", "data", "assets/css", "assets/js")
  sapply(dirs, function(x) if(!dir.exists(x)) dir.create(x, recursive = TRUE))
  
  # Crear archivos HTML
  writeLines(c(
    '<!DOCTYPE html>',
    '<html lang="es">',
    '<head>',
    '    <meta charset="UTF-8">',
    '    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
    '    <title>Análisis de Temperaturas - Jenn Mual</title>',
    '    <link rel="stylesheet" href="styles/style.css">',
    '    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">',
    '</head>',
    '<body>',
    '    <!-- Contenido -->',
    '    <h1>Bienvenido a mi análisis de temperaturas</h1>',
    '    <p>Página en construcción...</p>',
    '</body>',
    '</html>'
  ), "index.html")
  
  # Crear CSS básico
  writeLines(c(
    'body { font-family: Arial, sans-serif; margin: 40px; }',
    'h1 { color: #007bff; }'
  ), "styles/style.css")
  
  cat("✅ Estructura creada exitosamente!\n")
  cat("📁 Directorios creados:\n")
  cat(paste("-", dirs, collapse = "\n"), "\n")
  cat("📄 Archivos creados: index.html, styles/style.css\n")
}

# Ejecutar la función
create_github_pages_structure()