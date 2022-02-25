type_II <- function(alpha, delta, var, n, r, two_sided = FALSE) {
  # Calculates type II error of a z-test of means given
  # alpha - the nominal type I error rate
  # delta - the hypothesised mean difference
  # var - the variance of the continuous outcome
  # n - the sample size in group 1
  # r- represents the ratio between the two sample sizes n1 and n2.
  # two_sided -TRUE indicates a two-sided test is needed, FALSE a 
  # one-sided test.
  
  # Get the critical value to use in the hypothesis test.
  quant <- qnorm(p = 1 - alpha, mean = 0, sd = 1)
  if(two_sided) quant <- qnorm(p = 1 - alpha/2, mean = 0, sd = 1)
  
  tII <- pnorm(q = quant - delta / sqrt(var / n + var / ceiling(r*n)), mean = 0, sd = 1)
  return(tII)
}