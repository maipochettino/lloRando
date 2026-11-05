library(readr)
library(dplyr)

archivos <- list.files("data-raw", pattern = "^estacion-.*\\.csv$", full.names = TRUE)

estaciones <- archivos |>
  lapply(read_csv, guess_max = Inf, show_col_types = FALSE) |>
  bind_rows() |>
  mutate(fecha = as.Date(fecha))

usethis::use_data(estaciones, overwrite = TRUE, compress = "xz")
