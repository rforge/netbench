datasource.subsample<-function(datasource,experiments=NA,datasets.num=5,local.noise=20,global.noise=0,noiseType="normal",samplevar=TRUE)
{
  #sampledata
  s<-dim(datasource) # obs x variables
  if(is.na(experiments)){
    experiments<-s[1]/datasets.num
  }else{
    if (experiments>s[1]){
      experiments<-s[1]
      datasets.num=1
      warning("number of experiments is to big, only one replicate will be generated")
    }
  }
  data.list<-vector('list',datasets.num)
  if(samplevar){
    smps<-round(runif(datasets.num,round(experiments*0.8),round(experiments*1.2)))
  }else{
    smps<-rep(experiments,datasets.num)
  }
  if(sum(smps)>s[1]){
    warning("The specified number of experiments and datasets is bigger than the orginal number of experiments in the dataset, sampling with replacement will be used")
    idxs<-double()
    for(n in 1:datasets.num){
      idxs<-c(idxs,sample(s[1],smps[n],replace = FALSE))
    }  
  }else{
    idxs<-sample(s[1],sum(smps),replace = FALSE) 
  }
  if(length(noiseType)==1){
    rep(noiseType,2)->noiseType
  }
  for(n in 1:datasets.num){
    idx<-idxs[1:smps[n]]
    idxs<-idxs[-(1:smps[n])]
    rdata<-datasource[idx,]
    sds<-apply(rdata, 2, sd)
    if (local.noise!=0){
      noise.l<-runif(1,local.noise*0.8,local.noise*1.2)
      rdata<-apply(rdata,2,.addnoise,noise=noise.l,noiseType=noiseType[1])
    }
    if (global.noise!=0){
      noise.l<-runif(1,global.noise*0.8,global.noise*1.2)
      if(noiseType[2]=="normal"){
        Gnoise<-matrix(rnorm(dim(rdata)[1]*s[2],mean=0,sd=mean(sds)*noise.l/100), dim(rdata)[1], s[2])
      }
      if(noiseType[2]=="lognormal"){
        Gnoise<-matrix(rlnorm(dim(rdata)[1]*s[2],meanlog=0,sdlog=mean(sds)*noise.l/100), dim(rdata)[1], s[2])
      }
      rdata<-rdata+Gnoise
    }
    data.list[[n]]<-rdata
  }
  return(data.list) 
}

`.addnoise`<-function(x,noise=0,noiseType="normal"){
 if(sd(x)!=0){
   s.d<-runif(1,noise*0.8,noise*1.2)*sd(x)/100
 }else{
    #Even though the standard deviation of the variable is zero 
    #we add some noise
   s.d<-runif(1,0.01,0.15)
 }
  if(noiseType=="normal"){
    n<-rnorm(length(x),mean=0,sd=s.d)
  }
  if(noiseType=="lognormal"){
    n<-rlnorm(length(x), meanlog = 0, sdlog = s.d)
  }
  return(x+n)
}
