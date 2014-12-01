\name{netbenchmark}
\alias{netbenchmark}

\title{Benchmarking of several network inference algorithms from data}
\usage{
netbenchmark(methods="all.fast",datasources.names="all",experiments=150,eval="AUPR",no.topedges=20,datasets.num=5,local.noise=20,global.noise=0,noiseType="normal",sym=TRUE,plot=FALSE,seed=NULL)
}
\arguments{
  \item{methods}{A vector of strings containing the names of network inference algorithms wrappers to be compared (default: "all.fast").}
  \item{datasources.names}{A vector of strings containing the names of network datasources to be included in the benchmark (default: "all").}
  \item{experiments}{Integer specifying the number of experiments to generate the subsampled datasets (default: 150) - see \code{\link{datasource.subsample}}.}
  \item{eval}{The name of the evaluation metric among the following ones: "no.truepos", "AUROC" or "AUPR" (default : "AUPR")  - see \code{\link{evaluate}}.}
  \item{no.topedges}{Float specifying the percentage  number of links to be considered in the evaluation (default: 20).}
  \item{datasets.num}{Integer specifying the number of datasets.num to be generated for each of the selected original datasources (default: 5).}
  \item{local.noise}{Integer specifying the desired percentage of local noise to be added at each of the subsampled datasets (default: 20) - see \code{\link{datasource.subsample}}.}
  \item{global.noise}{Integer specifying the desired percentage of global noise to be added at each of the subsampled datasets (default: 20) - see \code{\link{datasource.subsample}}.}
  \item{noiseType}{String specifying the type of the noise to be added: "normal" or "lognormal" (default: "normal") - see \code{\link{datasource.subsample}}
  .}
  \item{sym}{Boolean specifying if the evaluation is symmetric (default: TRUE) - see \code{\link{evaluate}}.}
    \item{plot}{(default: FALSE) }
   \item{seed}{A single value, interpreted as an integer to specify seeds, useful for creating simulations that can be reproduced (default: \code{NULL}) - see \code{\link[base]{set.seed}}.}
}
\value{
\code{netbenchmark} returns a list with three data.frames. The first is a data.frame which is the result table of the selected measure. The second is a matrix which is the corresponding pvalue table of the corresponding statistical test 
for each one of the \code{datasets.num} between the best algorithm and the others. The third is a data.frame which contains the CPU Time Used (in seconds) by the algorithm to infer the network.
Each data.frame will have the same number of columns as methods provided by the user and an additional one for a random method, and the numbers of rows will depend on the number of \code{datasets.num} and datasources specified by the user.
}
\description{
  For a given vector of string of the names of wrapper functions that compute a network inference methods, \code{netbenchmark} performs a benchmark between them.
   It makes use of four different big gene datasources, it relies on a random subsampling  without repetition of each one of the datasets and noise addition in order to generate the source data. 
}
\details{
 The argument \code{methods} accepts "all.fast" and "all" (case insensitive) as a parameters:
 \itemize{
\item "all.fast" performs network inference with "aracne", "c3net", "clr", "GeneNet", "mutual ranking", "mrnetb", "pcit"
\item "all" performs network inference with "aracne", "c3net", "clr", "GeneNet", "Genie3", "mutual ranking", mrnet", "mrnetb", "pcit" 
} 
 All the measures only evaluates the first \code{no.topedges} \% of the possible links inferred by each algorithm at each dataset.
 The statistical  used is the Wilcoxon Rank Sum Test (\code{\link{wilcox.test}}). This test compares the number of true positives of any method with number of trials specified with the best method at each replicate.
  
}
\author{
  Pau Bellot, Catharina Olsen and Patrick E Meyer 
  Maintainer: Pau Bellot <pau.bellot@upc.edu>
}
\seealso{ \code{\link{datasource.subsample}},  \code{\link{evaluate}},  \code{\link{comp.metr}}} 
\references{
 ~~future work~
}     
\examples{
\dontrun{
top20.fast.list<-netbenchmark()
top20.list<-netbenchmark(methods="all",eval="no.truepos")
top50.list<-netbenchmark(datasets.num=8,eval="AUPR",no.topedges=50,noise=10)
top9.list<-netbenchmark(datasets.num=8,no.topedges=9,local.noise=15,noiseType="lognormal")
#To generate precision table from true positive table:
# pre.tbl<-cbind(top20.list[[1]][,(1:2)],top20.list[[1]][,-(1:2)]/top20.list[[3]])
#To generate recall table from true positive table:
# rec.tbl<-cbind(top20.list[[1]][,(1:2)],top20.list[[1]][,-(1:2)]/top20.list[[4]])
#To export the tables to LaTeX 
# library(xtable)
# xtable(top20.fast.list[[1]])
}
}
\keyword{misc}
