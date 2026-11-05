#' Datos meteorológicos de estaciones
#'
#' Conjunto de observaciones meteorológicas registradas en cinco estaciones.
#' Incluye información sobre temperatura, precipitaciones, humedad,
#' viento, radiación y otras variables meteorológicas.
#'
#' @format Un data frame con 95681 filas y 35 columnas:
#' \describe{
#'   \item{id}{Identificador de la estación meteorológica.}
#'   \item{fecha}{Fecha de la observación.}
#'   \item{temperatura_abrigo_150cm}{Temperatura registrada a 150 cm.}
#'   \item{precipitacion_pluviometrica}{Variable de precipitación.}
#'   \item{granizo}{Registro de granizo.}
#'   \item{nieve}{Registro de nieve.}
#'   \item{humedad_media_8_14_20}{Registro de humedad media.}
#'   \item{velocidad_viento_200cm_media}{Velocidad media del viento a 200 cm.}
#'   \item{radiacion_global}{Radiación global.}
#'   \item{evapotranspiracion_potencial}{Evapotranspiración potencial.}
#' }
#'
#' @source Datos descargados del repositorio
#' \url{https://github.com/rse-r/intro-programacion}
#'
#' @examples
#' head(estacion_completo)
"estacion_completo"

#' Metadatos de estaciones meteorológicas
#'
#' Información descriptiva de las estaciones meteorológicas,
#' incluyendo su identificación, ubicación geográfica y período
#' de registro de datos.
#'
#' @format Un data frame con 258 filas y 11 columnas:
#' \describe{
#'   \item{id}{Identificador de la estación.}
#'   \item{nombre}{Nombre de la estación meteorológica.}
#'   \item{tipo}{Tipo de estación.}
#'   \item{localidad}{Localidad donde se encuentra.}
#'   \item{provincia}{Provincia donde se encuentra.}
#'   \item{lat}{Latitud de la estación.}
#'   \item{lon}{Longitud de la estación.}
#'   \item{altura}{Altura de la estación.}
#'   \item{ubicacion}{Descripción de su ubicación.}
#'   \item{desde}{Fecha de inicio del período registrado.}
#'   \item{hasta}{Fecha de finalización del período registrado.}
#' }
#'
#' @source Datos descargados del repositorio
#' \url{https://github.com/rse-r/intro-programacion}
#'
#' @examples
#' head(metadatos)
"metadatos"
