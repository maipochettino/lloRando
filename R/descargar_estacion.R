
#' Descargar y leer los datos de una estación
#'
#' Descarga el CSV de una estación meteorológica y lo lee
#' como un data.frame.
#'
#' @param id Identificador de la estación, por ejemplo "NH0437".
#' @param ruta Ruta donde se guardará el archivo CSV.
#'
#' @return Un tibble con los datos de la estación.
#' @export
#'
#' @examples
#' \dontrun{
#' datos <- descargar_estacion("NH0437", "datos/NH0437.csv")
#' }
descargar_estacion <- function(id, ruta) {

  url_base <- paste0(
    "https://raw.githubusercontent.com/",
    "rse-r/intro-programacion/main/datos/"
  )

  url <- paste0(url_base, id, ".csv")

  dir.create(
    dirname(ruta),
    recursive = TRUE,
    showWarnings = FALSE
  )

  download.file(
    url = url,
    destfile = ruta,
    mode = "wb"
  )

  datos <- readr::read_csv(ruta, show_col_types = FALSE)

  return(datos)
}

