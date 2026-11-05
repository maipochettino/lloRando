#' Datos diarios de cinco estaciones del INTA
#'
#' Observaciones meteorológicas diarias de las estaciones NH0046, NH0098,
#' NH0437, NH0472 y NH0910, de la provincia de Santa Fe. Las celdas vacías
#' de los archivos originales figuran como `NA`.
#'
#' @format Un tibble con 95681 filas (una por estación y día) y 35 columnas.
#'   Algunas de las principales:
#' \describe{
#'   \item{id}{Identificador de la estación.}
#'   \item{fecha}{Fecha de la observación (`Date`).}
#'   \item{temperatura_abrigo_150cm}{Temperatura media a 150 cm, en °C.}
#'   \item{precipitacion_pluviometrica}{Precipitación.}
#'   \item{humedad_media_8_14_20}{Humedad media.}
#'   \item{velocidad_viento_200cm_media}{Velocidad media del viento a 200 cm.}
#'   \item{radiacion_global}{Radiación global.}
#'   \item{evapotranspiracion_potencial}{Evapotranspiración potencial.}
#' }
#' Las demás columnas se pueden ver con `names(estaciones)`.
#'
#' @source <https://github.com/rse-r/intro-programacion/tree/main/datos>
#' @examples
#' head(estaciones)
#' table(estaciones$id)
"estaciones"
