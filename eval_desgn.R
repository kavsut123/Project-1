eval_desgn=function(n1,n2,lambda,gamma){
  M=10000
  
  # Create an empty vector to store simulated NS.
  Ns=numeric(M)
  for (i in 1:M) {
    # Simulate theta from its prior, and then the stage 1 data conditional
    # on this theta.
    theta = rbeta(1, 0.5, 0.5)
    y1 = rbinom(1, n1, theta)
    
    # Get posterior Beta(a1, b1) parameters.
    a1 <- 0.5 + y1
    b1 <- 0.5 + n1 - y1
    
    # Probability of futility.
    fut1 <- pbeta(0.5, a1, b1)
    
    # Threshold to determine progression, based on the decision rule.
    C1 <- 1 - lambda * (n1 / n2)^gamma
    
    # Note the final total sample size and store in the vector Ns.
    if (fut1 < C1) {
      Ns[i] <- n1
    } else {
      Ns[i] <- n2
    }
  }
  
  #Expected Number of Patients need to complete the trial.
  mean(Ns)
}
