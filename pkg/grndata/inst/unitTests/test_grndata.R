library(grndata)
library(RUnit)
#------------------------------------------------------------------------------
runTests = function()
{
  test_DataSouces()
} # runTests
#------------------------------------------------------------------------------
test_DataSouces = function()
{
    datasources.names<-c("rogers1000","syntren1000","syntren300",
    "gnw1565","gnw2000")
    ngenes<-c(1000,1000,300,1565,2000)
    nexp<-c(1000,1000,800,1565,2000)
    edges<-c(1350,4695,468,7264,10392)
    for(n in 1:5){
        #loading the whole datasource
        data<-eval(parse(text=paste(datasources.names[n],".data",sep=""))) 
        #loading the golden standard
        net<-eval(parse(text=paste(datasources.names[n],".net",sep="")))
        checkEquals(is.data.frame(data),TRUE)
        checkEquals(ncol(data), nrow(net))
        checkEquals(ncol(data), ngenes[n])
        checkEquals(nrow(data), nexp[n])
        checkEquals(sum(net), edges[n])
      checkEquals(sum(is.na(data)),0)
    }
} # test_DataSouces
#------------------------------------------------------------------------------