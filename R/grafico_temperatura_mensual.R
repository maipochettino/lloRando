#' Graficar la temperatura media mensual
#'
#' Calcula y grafica la temperatura media mensual
#' de una o más estaciones meteorológicas.
#'
#' @param datos Data frame con las columnas fecha,
#' id y temperatura_abrigo_150cm.
#' @param colores Vector de colores para las estaciones.
#' Si es NULL, se eligen colores al azar.
#' @param titulo Título del gráfico. Por defecto, "Temperatura".
#'
#' @return Un gráfico de ggplot2.
#' @export
#'
#' @examples
#' \dontrun{
#' grafico_temperatura_mensual(datos_meteorologicos)
#' }
grafico_temperatura_mensual <- function(
    datos,
    colores = NULL,
    titulo = "Temperatura") {

  estaciones <- unique(as.character(datos$id))

  if (length(estaciones) == 0 || nrow(datos) == 0) {
    stop("El data frame no contiene observaciones.")
  }

  if (is.null(colores)) {
    colores <- sample(
      grDevices::colors(),
      length(estaciones)
    )
  }

  if (length(colores) != length(estaciones)) {
    stop("Debe indicarse un color por cada estaci\u00f3n.")
  }

  names(colores) <- estaciones

  datos_mensuales <- datos |>
    dplyr::mutate(
      mes = lubridate::floor_date(fecha, "month")
    ) |>
    dplyr::group_by(id, mes) |>
    dplyr::summarise(
      media = mean(
        temperatura_abrigo_150cm,
        na.rm = TRUE
      ),
      .groups = "drop"
    )

  grafico <- ggplot2::ggplot(
    datos_mensuales,
    ggplot2::aes(
      x = mes,
      y = media,
      color = id,
      group = id
    )
  ) +
    ggplot2::geom_line() +
    ggplot2::scale_color_manual(values = colores) +
    ggplot2::labs(
      title = titulo,
      x = "Mes",
      y = "Temperatura media (\u00b0C)",
      color = "Estaci\u00f3n"
    ) +
    ggplot2::theme_minimal()

  return(grafico)
}
