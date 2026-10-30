datos_prueba <- data.frame(
  id = c("A", "A", "B", "B"),
  temperatura_abrigo_150cm = c(10, 20, 15, NA)
)

test_that("devuelve media y desvio para cada estacion", {
  res <- tabla_resumen_temperatura(datos_prueba)
  expect_equal(nrow(res), 4)
  expect_named(res, c("id", "estadistico", "valor"))
})

test_that("calcula bien la media ignorando los NA", {
  res <- tabla_resumen_temperatura(datos_prueba)
  media_a <- res$valor[res$id == "A" & res$estadistico == "media"]
  media_b <- res$valor[res$id == "B" & res$estadistico == "media"]
  expect_equal(media_a, 15)
  expect_equal(media_b, 15)
})
