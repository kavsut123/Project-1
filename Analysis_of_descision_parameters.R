
n1=40
n2=75

#The following code is used to evaluate parmeters of lambda and gamma

values=expand.grid(lambda = seq(0, 1, 0.05),gamma = seq(0, 1, 0.05))

exp_n= numeric(nrow(values))
for(i in 1:nrow(values)) {
  exp_n[i] <- evaluate_design(values[i, 1], values[i, 2], n1 = n1, n2 = n2)[1]
}


#Makes a data frame B to make the data more user friendly
B=matrix(exp_n,nrow=21,ncol=21)
B=data.frame(B,row.names=seq(0, 1, 0.05))
colnames(B)=seq(0, 1, 0.05)