\name{experiments.bench}
\alias{experiments.bench}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Noise sensibility benchmark
}
\description{
For a given vector of string of the names of wrapper functions that compute a network inference methods, \code{experiments.bench} performs a number of experiments sensibility test.
   It makes use of five different big gene datasets subsampling them to generate different 
   datasets.num of the network with different number of experiments.
}
\usage{
experiments.bench(methods = "all.fast", datasources.names = "all",
                 experiments = c(20, 50, 150), eval = "AUPR",
                 no.topedges = 20, datasets.num = 3, local.noise = 20,
                 global.noise = 0, noiseType = "normal", sym = TRUE,
                 seed = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{methods}{A vector of strings containing the names of network inference algorithms wrappers to be compared (default: "all.fast").}
    \item{datasources.names}{A vector of strings containing the names of network datasets to be included in the benchmark (default: "all").}
    \item{experiments}{A vector to set the number of experiments to test the methods (default=c(20,50,150)).}
  \item{eval}{The name of the evaluation metric among the following ones: "no.truepos", "AUROC" or "AUPR" (default : "AUPR")  - see \code{\link{evaluate}}.}
  \item{no.topedges}{Float specifying the percentage  number of links to be considered in the evaluation (default: 20).}
  \item{datasets.num}{Number of repetitions in the noise evaluation, for each method and each dataset and each noise intensity (default: 3).}
   \item{local.noise}{Integer specifying the desired percentage of local noise to be added at each of the subsampled datasets (default: 20) - see \code{\link{datasource.subsample}}.}
  \item{global.noise}{Integer specifying the desired percentage of global noise to be added at each of the subsampled datasets (default: 20) - see \code{\link{datasource.subsample}}.}
  \item{noiseType}{String specifying the type of the noise to be added: "normal" or "lognormal" (default: "normal") - see \code{\link{datasource.subsample}}
  .}
 \item{sym}{Boolean specifying if the evaluation is symmetric (default: TRUE) - see \code{\link{evaluate}}.}
   \item{seed}{A single value, interpreted as an integer to specify seeds, useful for creating simulations that can be reproduced (default: \code{NULL}) - see \code{\link[base]{set.seed}}.}
}
\details{
The argument \code{methods} accepts "all.fast" and "all" (case insensitive) as a parameters:
\itemize{
\item "all.fast" performs network inference with "aracne", "c3net", "clr", "GeneNet", "mutual ranking", "mrnetb", "pcit"
\item "all" performs network inference with "aracne", "c3net", "clr", "GeneNet", "Genie3", "mutual ranking", mrnet", "mrnetb", "pcit" 
} 
 It evaluates the first \code{no.topedges} \% of the possible links inferred by each algorithm at each dataset.
}
\value{
\code{experiments.bench} returns a list with two element. The first is a data.frame which is the result table containing the number of true positives as an evaluation measure. 
It evaluates each algorithm specified at \code{methods} at each one of the specified
\code{datasources.names} with different noise intensities.

}
% \references{
% %% ~put references to the literature/web site here ~
% }
\author{
Pau Bellot and Patrick Meyer
}
% \note{
% %%  ~~further notes~~
% }

%% ~Make other sections like Warning with \section{Warning }{....} ~

% \seealso{
% %% ~~objects to See Also as \code{\link{help}}, ~~~
% }
\examples{
\dontrun{
m<-experiments.bench(datasources.names="syntren300",datasets.num=5)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

