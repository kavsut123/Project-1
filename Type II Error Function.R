type_II <- function(quant, delta, var, n, r) {
  # Calculates type II error of a z-test of means given
  # quant - the critical value
  # delta - the hypothesised mean difference
  # var - the variance of the continuous outcome
  # n - the sample size in group 1
  # r- represents the ratio between the two sample sizes.
  
  tII <- pnorm(q = quant - delta / sqrt(var / n + var / ceiling(r*n)), mean = 0, sd = 1)
  return(tII)
}
