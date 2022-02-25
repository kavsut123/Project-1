type_II <- function(quant, delta, var, n) {
  # Calculates type II error of a z-test of means given
  # quant - the critical value
  # delta - the hypothesised mean difference
  # var - the variance of the continuous outcome
  # n - the sample size is each group
  
  tII <- pnorm(q = quant - delta / sqrt(2 * var / n), mean = 0, sd = 1)
  return(tII)
}

# For example,
type_II(quant = 1.64, delta = 0.3, var = 1, n = 100)