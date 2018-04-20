generate_data=function(n, p){
  return(list(covariates=matrix(rnorm(n*p),nrow=n,ncol = p),responses=c(rnorm(n))))
}


model_selection=function(covariates, responses,cutoff){
  model1=lm(responses~covariates)
  covars2=covariates[,which(summary(model1)$coefficients[,'Pr(>|t|)']<cutoff)]
  print(length(covars2))
  if(length(covars2)==0){
    return(c())
  }
  model2=lm(responses~covars2)
  return(summary(model2)$coefficients[,'Pr(>|t|)'])
}