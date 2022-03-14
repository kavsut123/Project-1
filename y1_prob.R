y1_prob= function(y1, n1) {
  # Calculate the probability of observing y_1 responses in n_1 trials
  # under a Beta-binomial model with Beta(a = 0.5, b = 0.5) prior.
  
  choose(n1, y1) * beta(y1 + 0.5, n1 - y1 + 0.5) / beta(0.5, 0.5)
}


#Unit test of the function
sum(y1_prob(0:10,10))
