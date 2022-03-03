set.seed(4287248)
#Parameters
#Theta Under the Null
theta0=0.5
#Theta under the Alternate.
theta1=0.7
#Type 1 error under theta=0.5, want alpha<0.05
alpha=0.05
#Type II error under theta=0.7, want beta<0.2
beta=0.2



#Investigating the size of the first Trial
N=100000
p=1
n1=1
#This loop runs whilst the type I error, p, is above 0.05
while(p>0.05){
  
  #We choose some Critical value, c, here I have chosen
  #to use 0.7 as we will only be proceeding if a high proportion
  #of the sample respond, thus we need to know what sample size 
  #is needed to reduce the sample size to below 0.05.
  c=0.7*n1
  
  x=rbinom(N,n1,theta0)
  
  #Here, p is the Type I error.
  p=mean(x>=c)
  n1=n1+1
}

#Now we have a rough idea of what n1, should be we test sample
#size a bit above to give us a better idea of what n1 should be.
Error=numeric(30)
for(i in 1:30){
  x=rbinom(N,i,theta0)
  Error[i]=mean(x>=0.7*i)
}

#Here we plot the type I errors, an plot a line in red for error=0.05.
plot(Error, xlab="Sample Size of Phase 1", ylab="Type I Error",main="The Tye I error rates of each phase one sample size")
abline(h=0.05, col="red")
