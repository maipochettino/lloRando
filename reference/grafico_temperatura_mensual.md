# Graficar la temperatura media mensual

Calcula y grafica la temperatura media mensual de una o más estaciones
meteorológicas.

## Usage

``` r
grafico_temperatura_mensual(datos, colores = NULL, titulo = "Temperatura")
```

## Arguments

- datos:

  Data frame con las columnas fecha, id y temperatura_abrigo_150cm.

- colores:

  Vector de colores para las estaciones. Si es NULL, se eligen colores
  al azar.

- titulo:

  Título del gráfico. Por defecto, "Temperatura".

## Value

Un gráfico de ggplot2.

## Examples

``` r
grafico_temperatura_mensual(estaciones)
#> Warning: Removed 1 row containing missing values or values outside the scale range
#> (`geom_line()`).
```
