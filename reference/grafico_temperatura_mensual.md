# Graficar la temperatura media mensual

Calcula y grafica la temperatura media mensual de una o más estaciones
meteorológicas.

## Usage

``` r
grafico_temperatura_mensual(datos, colores = NULL, titulo = "Temperatura")
```

## Arguments

- datos:

  Data frame con las columnas `fecha` (tipo `Date`), `id` y
  `temperatura_abrigo_150cm`.

- colores:

  Vector con un color por estación. Si tiene nombres, los nombres deben
  coincidir con los `id`. Si no tiene nombres, se asignan en el orden en
  que aparecen las estaciones. Si es `NULL`, se eligen colores al azar.

- titulo:

  Título del gráfico. Por defecto, `"Temperatura"`.

## Value

Un objeto de ggplot2, que se puede seguir modificando con `+`.

## Details

Se da error si `datos` no tiene filas o si la cantidad de colores no
coincide con la cantidad de estaciones.

## Examples

``` r
grafico_temperatura_mensual(estaciones[estaciones$id == "NH0437", ], "steelblue")
```
