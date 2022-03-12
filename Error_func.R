Error_func=function(N,theta,c,type){
  #N is the number needed in the Monte Carlo Estimate
  #Theta is the value of theta we are using.
  #c is the critical value
  #type is the type of error we want
  
  #Error is a vector to store the errors in.
  Error=numeric(100)
  for(i in 1:100){
    x=rbinom(N,i,theta)
    if(type==1){
      Error[i]=mean(x>=c*i)
      
    }
    if(type==2){
      Error[i]=1-mean(x>=c*i)
    }
  }
  #prints out the errors vector
  Error
}
