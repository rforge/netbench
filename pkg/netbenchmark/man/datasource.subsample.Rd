\name{datasource.subsample}
\alias{datasource.subsample}
\title{Subsampling datasource procedure}

\description{
  \code{datasource.subsample} picks randomly the specified amount of experiments from the original datasource
  and also adds noise to the subsampled dataset if it is specified.
}
\usage{
 datasource.subsample(datasource,experiments=NA,datasets.num=5,local.noise=20,global.noise=0,noiseType="normal",samplevar=TRUE)
}
\arguments{
\item{datasource}{data.frame where columns contain variables and rows contain experiments.} 
\item{experiments}{Integer specifying the number of experiments that for performing the subsampling of datasources (default: NA).}
\item{datasets.num}{Integer specifying the number of datasets to be generated for each of the selected original datasources (default: 5).}
\item{local.noise}{Integer specifying the desired percentage of local noise to be added at each of the subsampled datasets (default: 20).}
\item{global.noise}{Integer specifying the desired percentage of global noise to be added at each of the subsampled datasets (default: 0).}
\item{noiseType}{Character specifying the type of the noise to be added (default: "normal").}	
\item{samplevar}{Logical specifying the generation of datasets with different number of experiments. (default: TRUE).}	
}
\value{
  \code{datasource.subsample} returns a list with \code{datasets.num} elements, each one of objects contains a data.frame of the subsampled dataset with the amount of Gaussian noise
  specified that would contain the same number of variables. 
}
\details{
  If the argument \code{experiments} is NA, the value \code{experiments} will be calculated automatically in order to have \code{datasets.num} smaller datasets that does not have the same experiment twice inside each dataset.
  Each of the subsampled datasets \code{experiments} would have a number of experiments around \code{experiments} \eqn{ \pm 20 \% } (if \code{samplevar} is TRUE)
  that would be chosen randomly among the original the original number of experiments without replacement. 
  If the argument \code{experiments} is a number, the number of \code{datasets.num} is calculated automatically.
  If the number of specified \code{experiments} is greater or equal than the original number of experiments, then only a dataset 
  will be generated and the subsampled dataset
  would have the same dimensions as the original one but the experiments will be unsorted randomly.
  
  Two different types of noises are added independently:
  \itemize{
   \item "Local": the standard deviation of the noise is different for each variable.  
   \code{local.noise} specifies the percentage for each variable ( \eqn{ \pm 20 \% }).
   \item "Global": the standard deviation of the noise is the same for the whole dataset. 
    \code{global.noise} specifies the percentage of the mean standard deviation of all the variables ( \eqn{ \pm 20 \% }).
  }
   
  The distribution of noise is set with \code{noiseType}, it is possible to choose between "normal" (\code{\link[stats]{rnorm}})
  and "lognormal" (\code{\link[stats]{rlnorm}}). The argument \code{noiseType} can be a single character, this
  specifies the same distribution for both "Local" and "Global" noise, it also can be a vector of characters with two elements,
  the former specifies the distribution of "Local" noise and the later the distribution of "Global" noise.
  
   
}
\seealso{ \code{\link{netbenchmark}} }

\examples{
# Subsample
data.list.1 <- datasource.subsample(syntren300.data)
data.list.2 <- datasource.subsample(syntren300.data,global.noise=10)
# Inference
inf.net.1 <- cor(data.list.1[[1]])
inf.net.2 <- cor(data.list.2[[4]])
# Evaluate
table.1 <- evaluate(inf.net.1,syntren300.net)
table.2 <- evaluate(inf.net.2,syntren300.net)
}
\keyword{misc}

