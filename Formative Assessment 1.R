set.seed(10000)

#Parameters needed for estimating theta.
N=10000 #Number of realisations in the monte carlo estimate.
a=0.5   #The initial value of a in the prior.
b=0.5   #The initial value of b in the prior.

#Use monte carlo estimation to produce an estimate for theta.
thetas=0
for(i in 1:N){
  theta=rbeta(1, 0.5, 0.5)
  thetas=thetas+theta
}

theta.est=thetas/N
