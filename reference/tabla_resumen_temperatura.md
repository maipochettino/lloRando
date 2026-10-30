# Resumir la temperatura por estación

Calcula la media y el desvío estándar de la temperatura de abrigo a 150
cm para cada estación.

## Usage

``` r
tabla_resumen_temperatura(datos)
```

## Arguments

- datos:

  Data frame con las columnas id y temperatura_abrigo_150cm.

## Value

Un tibble con la estación, el estadístico y su valor.

## Examples

``` r
if (FALSE) { # \dontrun{
tabla_resumen_temperatura(datos_meteorologicos)
} # }
```
