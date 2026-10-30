#' Resumir la temperatura por estación
#'
#' Calcula la media y el desvío estándar de la temperatura
#' de abrigo a 150 cm para cada estación.
#'
#' @param datos Data frame con las columnas id
#' y temperatura_abrigo_150cm.
#'
#' @return Un tibble con la estación, el estadístico
#' y su valor.
#' @export
#'
#' @examples
#' \dontrun{
#' tabla_resumen_temperatura(datos_meteorologicos)
#' }
tabla_resumen_temperatura <- function(datos) {

  resumen <- datos |>
    dplyr::group_by(id) |>
    dplyr::summarise(
      media = mean(temperatura_abrigo_150cm, na.rm = TRUE),
      desvio = stats::sd(temperatura_abrigo_150cm, na.rm = TRUE),
      .groups = "drop"
    )

  resultado <- tidyr::pivot_longer(
    resumen,
    cols = c(media, desvio),
    names_to = "estadistico",
    values_to = "valor"
  )

  return(resultado)
}
