type_II <- function(x, quant, var, r) {
  # Calculates type II error of a z-test of means given
  # x - c(n, delta)
  # n - sample size in group 1
  # r- is the ration between sample zies n1 and n2.
  # delta - the hypothesised mean difference
  # quant - the critical value
  # var - the variance of the continuous outcome
  
  n <- x[1]
  delta <- x[2]
  
  tII <- pnorm(q = quant - delta / sqrt(var / n + var / ceiling(r*n)), mean = 0, sd = 1)
  return(tII)
}