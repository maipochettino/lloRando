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
tabla_resumen_temperatura(estaciones)
#> # A tibble: 10 × 3
#>    id     estadistico valor
#>    <chr>  <chr>       <dbl>
#>  1 NH0046 media       17.3 
#>  2 NH0046 desvio       5.90
#>  3 NH0098 media       18.6 
#>  4 NH0098 desvio       5.98
#>  5 NH0437 media       20.2 
#>  6 NH0437 desvio       5.77
#>  7 NH0472 media       18.0 
#>  8 NH0472 desvio       5.94
#>  9 NH0910 media       17.7 
#> 10 NH0910 desvio       6.12
```
