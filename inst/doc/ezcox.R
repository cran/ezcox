## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----example-------------------------------------------------------------
library(ezcox)
data("lung", package = "survival")

# Build unvariable models
ezcox(lung, covariates = c("age", "sex", "ph.ecog"))

# Build multi-variable models
# Control variable 'age'
ezcox(lung, covariates = c("sex", "ph.ecog"), controls = "age")

