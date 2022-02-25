set.seed(10000)

#Parameters needed for estimating theta.
N=10000 #Number of realisations in the monte carlo estimate.
a=0.5   #The initial value of a in the prior.
b=0.5   #The initial value of b in the prior.

#Use monte carlo estimation to produce an estimate for theta.
thetas=0
for(i in 1:N){
  theta=rbeta(1, a, b)
  thetas=thetas+theta
}

theta.est=thetas/N

#Type I error under ho: theta=0.5,
var=1   #Population Variance.

Z=(theta.est-0.5)/sqrt(var/N)
Z
tI <- 1-pnorm(Z, mean = 0, sd = 1)
tI
