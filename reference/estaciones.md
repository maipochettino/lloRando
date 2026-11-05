# Datos diarios de cinco estaciones del INTA

Observaciones meteorológicas diarias de las estaciones NH0046, NH0098,
NH0437, NH0472 y NH0910, de la provincia de Santa Fe. Las celdas vacías
de los archivos originales figuran como `NA`.

## Usage

``` r
estaciones
```

## Format

Un tibble con 95681 filas (una por estación y día) y 35 columnas.
Algunas de las principales:

- id:

  Identificador de la estación.

- fecha:

  Fecha de la observación (`Date`).

- temperatura_abrigo_150cm:

  Temperatura media a 150 cm, en °C.

- precipitacion_pluviometrica:

  Precipitación.

- humedad_media_8_14_20:

  Humedad media.

- velocidad_viento_200cm_media:

  Velocidad media del viento a 200 cm.

- radiacion_global:

  Radiación global.

- evapotranspiracion_potencial:

  Evapotranspiración potencial.

Las demás columnas se pueden ver con `names(estaciones)`.

## Source

<https://github.com/rse-r/intro-programacion/tree/main/datos>

## Examples

``` r
head(estaciones)
#> # A tibble: 6 × 35
#>   id     fecha      temperatura_abrigo_150cm temperatura_abrigo_150cm_maxima
#>   <chr>  <date>                        <dbl>                           <dbl>
#> 1 NH0046 1973-01-01                     27                              33.6
#> 2 NH0046 1973-01-02                     27.2                            34.9
#> 3 NH0046 1973-01-03                     25.2                            29.6
#> 4 NH0046 1973-01-04                     26.4                            32.6
#> 5 NH0046 1973-01-05                     26.0                            31  
#> 6 NH0046 1973-01-06                     20.4                            27.5
#> # ℹ 31 more variables: temperatura_abrigo_150cm_minima <dbl>,
#> #   temperatura_intemperie_5cm_minima <dbl>,
#> #   temperatura_intemperie_50cm_minima <dbl>,
#> #   temperatura_suelo_5cm_media <dbl>, temperatura_suelo_10cm_media <dbl>,
#> #   temperatura_inte_5cm <lgl>, temperatura_intemperie_150cm_minima <lgl>,
#> #   humedad_suelo <lgl>, precipitacion_pluviometrica <dbl>, granizo <dbl>,
#> #   nieve <dbl>, heliofania_efectiva <dbl>, heliofania_relativa <dbl>, …
table(estaciones$id)
#> 
#> NH0046 NH0098 NH0437 NH0472 NH0910 
#>  17041  23733  18929  20425  15553 
```
