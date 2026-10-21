#' zinbcdpmm: Bayesian ZINB--Ordinal Joint Model with CDPMM Random Effects
#'
#' Fits a Bayesian joint model for longitudinal zero-inflated negative
#' binomial and ordinal outcomes with CDPMM shared random effects via a
#' blocked Gibbs sampler.
#'
#' @keywords internal
#' @importFrom stats cor dnbinom plogis quantile rbeta rbinom rchisq rgamma rlogis rnbinom rnorm runif setNames var
#' @importFrom mvtnorm rmvnorm
#' @importFrom BayesLogit rpg
#' @importFrom MCMCpack riwish
#' @importFrom truncnorm rtruncnorm
#' @importFrom loo waic loo
"_PACKAGE"
