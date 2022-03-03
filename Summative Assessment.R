set.seed(10000)
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
N=1000
p=1
n1=1

#This loop runs whilst the type I error, p, is above 0.05
while(p>0.05){
  
  #We choose some Critical value, c, here I have chosen
  #to use 0.7 as we will only be proceeding if a high proportion
  #of the sample respond, thus we need to know what sample size 
  #is needed to reduce the sample size to below 0.05.
  c=0.7*theta0
  
  x=rbinom(N,n1,theta0)
  
  #Here, p is the Type I error.
  p=mean(x>=c)
  n1=n1+1
}

