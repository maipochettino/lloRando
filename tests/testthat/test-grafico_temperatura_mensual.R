datos_prueba <- data.frame(
  id = c("A", "A", "B", "B"),
  fecha = as.Date(c("2020-01-01", "2020-02-01", "2020-01-01", "2020-02-01")),
  temperatura_abrigo_150cm = c(10, 20, 15, 25)
)

test_that("devuelve un grafico de ggplot2", {
  g <- grafico_temperatura_mensual(datos_prueba, colores = c("red", "blue"))
  expect_true(inherits(g, "ggplot"))
})

test_that("da error si no hay datos", {
  expect_error(grafico_temperatura_mensual(datos_prueba[0, ]))
})

test_that("da error si la cantidad de colores no coincide", {
  expect_error(grafico_temperatura_mensual(datos_prueba, colores = "red"))
})
