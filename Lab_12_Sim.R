generate_data=function(n, p){
  responses=vector(length=n)
  for (i in 1:length(response)){
    responses[i]=rnorm(1)
  }
  return(list(covarites=matrix(rnorm(n*p),nrow=n,ncol = p),responses=responses))
}