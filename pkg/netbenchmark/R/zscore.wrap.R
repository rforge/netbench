zscore.wrap<-function(data){
  Z<-zsc(as.matrix(data))
  Z<-abs(Z)
  colnames(Z)<-colnames(data)
  rownames(Z)<-colnames(data)
  pmax(Z,t(Z))->Z
  Z
}