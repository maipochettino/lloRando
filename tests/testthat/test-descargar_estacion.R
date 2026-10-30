test_that("si el archivo ya existe, lo lee sin descargar", {
  ruta <- tempfile(fileext = ".csv")
  writeLines(
    c("id,fecha,temperatura_abrigo_150cm", "X,2020-01-01,12.5"),
    ruta
  )

  expect_message(datos <- descargar_estacion("X", ruta), "ya exist")
  expect_equal(nrow(datos), 1)
  expect_equal(datos$temperatura_abrigo_150cm, 12.5)
})
