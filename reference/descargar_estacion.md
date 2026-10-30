# Descargar y leer los datos de una estación

Descarga el CSV de una estación meteorológica y lo lee como un
data.frame. Si el archivo ya existe en la ruta indicada, lo lee
directamente sin volver a descargarlo.

## Usage

``` r
descargar_estacion(id, ruta)
```

## Arguments

- id:

  Identificador de la estación, por ejemplo "NH0437".

- ruta:

  Ruta donde se guardará el archivo CSV.

## Value

Un tibble con los datos de la estación.

## Examples

``` r
if (FALSE) { # \dontrun{
datos <- descargar_estacion("NH0437", "datos/NH0437.csv")
} # }
```
