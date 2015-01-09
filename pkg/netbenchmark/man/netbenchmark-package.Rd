\name{netbenchmark-package}
\alias{netbenchmark-package}
\docType{package}
\title{Benchmarking of several inference networks methods}
\description{
    For a given list of network inference algorithms, \code{netbenchmark} 
    performs a benchmark between them. It makes use of four different big gene 
    datasources, it relies on a random subsampling of each one of the 
    datasource and noise addition in order to generate the datasets. 
    This package is licensed under a Creative Commons 
    Attribution-NonCommercial-ShareAlike 3.0 Unported License.
}
\details{
    \tabular{ll}{
	   Package: \tab netbenchmark\cr
	   Type: \tab Package\cr
	   Version: \tab 0.99.0\cr
	   Date: \tab 2014-02-17\cr
	   License: \tab GPL-3 \cr
	}
}
\author{
   Pau Bellot, Catharina Olsen, Patrick E Meyer
    Maintainer: Pau Bellot <pau.bellot@upc.edu>
}
\references{
  ~~future work~
}
\keyword{ package }
\examples{
    # Define a wrapper of a simple inference method 
    Spearmancor<-function(data){
        cor(data,method="spearman")
    }
    results<-netbenchmark(datasources.names="syntren300",datasets.num=2,
    methods="Spearmancor")
    \dontrun{
        AUPR20.list<-netbenchmark(datasources.names=c("syntren300",
            "rogers1000"),datasets.num=7)
        AUPR20.300exp.list<-netbenchmark(methods=c("aracne.wrap","mrnet.wrap",
            "GeneNet.wrap"),datasources.names=c("syntren300","rogers1000"),
        experiments=300,global.noise=10,noiseType="lognormal")
        AUPR20.n30.list<-netbenchmark(methods=c("all.fast","mrnet.wrap",
            "Genie3.wrap"),eval="AUROC",local.noise=30)
    }
}