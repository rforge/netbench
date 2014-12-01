\name{rate}
\alias{rate}
\title{Inference Validation}

\description{
\code{rate} compares the infered network to the true underlying network for all the 
sorted predictions provided and appends the resulting confusion matrices to the returned object.     
}
\usage{
rate(PredEdgeList, GSEdgeList, ngenes, sym)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{PredEdgeList}{
   The inferred network in the form of a EdgeList.
}
  \item{GSEdgeList}{
The true underlying in the form of a EdgeList.
}
  \item{ngenes}{
Integrer denoting the number of total genes in the network.}
 \item{sym}{Boolean specifying if the evaluation is symmetric (default: TRUE) - see \code{\link{evaluate}}.}
}

\author{
Pau Bellot
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{ \code{\link{netbenchmark}},  \code{\link{evaluate}},  \code{\link{comp.metr}}} 

\keyword{ misc }

