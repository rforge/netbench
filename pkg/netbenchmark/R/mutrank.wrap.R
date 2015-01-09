mutrank.wrap<-function(data){
    m<-cor(data,method = "pearson")
    apply(m,1,rank)->r
    diag(r)<-0
    r*t(r)/2->net
    colnames(net)<-colnames(data)
    rownames(net)<-colnames(data)
    return(net)
}