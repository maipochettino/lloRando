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
