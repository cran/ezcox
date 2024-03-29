# Generated by roxytest: Do not edit by hand!

context("File R/show_forest.R: @testexamples")

test_that("Function show_forest() @ L36", {
  
  library(survival)
  show_forest(lung, covariates = c("sex", "ph.ecog"), controls = "age")
  show_forest(lung, covariates = c("sex", "ph.ecog"), controls = "age", merge_models = TRUE)
  show_forest(lung,
    covariates = c("sex", "ph.ecog"), controls = "age", merge_models = TRUE,
    drop_controls = TRUE
  )
  p <- show_forest(lung,
    covariates = c("sex", "ph.ecog"), controls = "age", merge_models = TRUE,
    vars_to_show = "sex"
  )
  p
  expect_s3_class(p, "ggplot")
})

