set.seed(4287248)
#Parameters
#Theta Under the Null
theta.null=0.5
#Theta under the Alternate.
theta.alt=0.7
#Type 1 error under theta=0.5, want alpha<0.05
alpha=0.05
#Type II error under theta=0.7, want beta<0.2
beta=0.2



#Investigating the size of the first Trial
N=100000

#We choose some Critical value, c, here I have chosen
#to use 65% of the size as we will only be proceeding if a high proportion
#of the sample respond, thus we need to know what sample size 
#is needed to reduce the type I error to below 0.05.
Error=Error_func(N,theta.null,0.65,type=1)


#Here we plot the type I errors, an plot a line in red for error=0.05.
plot(Error, xlab="Sample Size", ylab="Type I Error",main="The Type I error rates of each sample size")
abline(h=0.05, col="red")
abline(v=40,lty=2)
legend(65,0.5,legend = c("Error=0.05","Sample Size of 40"),col=c("red","black"),lty=c(1,2))

#Now for the Type II Error under theta.alt.
N=100000


Error=Error_func(N,theta.alt,0.65,type=2)
plot(Error, xlab="Sample Size",ylab="Type II Error",main="The Type II error rates of each sample size")
abline(h=0.2, col="red")
abline(v=75,lty=2)
legend(65,0.5,legend = c("Error=0.2","Sample Size of 75"),col=c("red","black"),lty=c(1,2))


#Using the above code we have determined the following parameters
n1=40
n2=75
lambda=0.8
gamma=2


#Timed running of the monte carlo estimation.
ptm <- proc.time()
eval_desgn(n1,n2,lambda,gamma)
proc.time() - ptm

