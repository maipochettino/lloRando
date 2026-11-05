library(readr)

metadatos <- read_csv(
  "data-raw/metadatos.csv",
  show_col_types = FALSE
)

usethis::use_data(metadatos, overwrite = TRUE, compress = "xz")
