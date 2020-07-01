## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(ezcox)

## ---- fig.width=7, fig.height=5-----------------------------------------------
library(survival)
show_forest(lung, covariates = c("sex", "ph.ecog"), controls = "age")
show_forest(lung, covariates = c("sex", "ph.ecog"), controls = "age", merge_models = TRUE)
show_forest(lung,
  covariates = c("sex", "ph.ecog"), controls = "age", merge_models = TRUE,
  drop_controls = TRUE
)
show_forest(lung,
  covariates = c("sex", "ph.ecog"), controls = "age", merge_models = TRUE,
  vars_to_show = "sex"
)


