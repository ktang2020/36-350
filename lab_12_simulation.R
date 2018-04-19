generate_data=function(n, p){
  response=vector(length=n)
  for (i in 1:length(response)){
    response[i]=rnorm(1)
  }
  return(covarites=matrix(rnorm(n*p),nrow=n,ncol = p),responses=vect)
}