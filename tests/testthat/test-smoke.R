test_that("simulate and short joint fit run", {
  set.seed(1)
  dat <- simulate_zinb_ordinal(n = 8, nis = 2, scenario = 1, re_dist = "normal")
  expect_s3_class(dat, "zinbcdpmm_data")
  expect_equal(dat$n, 8L)

  fit <- suppressWarnings(
    fit_zinb_ordinal(dat, chain = 25, burn = 10, thin = 5, G = 2)
  )
  expect_s3_class(fit, "zinbcdpmm_fit")
  expect_true(is.numeric(fit$alpha_est))
  expect_true(is.finite(fit$dic))
})
