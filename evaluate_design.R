evaluate_design= function(lambda, gamma, n1, n2) {
  
  # Calculate the expected sample size of a design defined by its 
  # decision rule parameters (lambda, gamma) and sample size 
  # parameters (n1, n2), along with its standard error.
  
  # Threshold to determine progression, based on the decision rule.
  c1= 1 - lambda * (n1 / n2)^gamma
  
  # Vector of possible stage 1 outcomes.
  y1s=0:n1
  
  # Vector of corresponding progression decisions.
  stops = pbeta(0.5, y1s + 0.5, n1 - y1s + 0.5) < c1
  
  # For each outcome, calculate its probability.
  y1probabilities= y1_prob(y1s, n1)
  
  sum(n1 * stops * y1probabilities + n2 * (!stops) * y1probabilities)
}
