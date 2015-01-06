\docType{data}
\name{rogers1000.net}
\alias{rogers1000.net}
\title{Simulated Gene Expression Data}
\description{
True underlying network used to generate the dataset 
 at \code{\link{rogers1000.data}}.
 }
\usage{data(rogers1000.net)}
\format{
\code{true.net} is the true underlying network used to generate the 
dataset loaded at \code{\link{rogers1000.data}}.
}
\source{
 sRogers with Power-law tail topology 
}

\references{
Rogers, Simon, and Mark Girolami. "A Bayesian regression approach 
to the inference of regulatory networks from gene expression data."
 Bioinformatics 21.14 (2005): 3131-3137.
}

\seealso{\code{\link{rogers1000.data}}, \code{\link{gnw1565.data}}, 
\code{\link{gnw2000.data}}, \code{\link{syntren300.data}}, 
\code{\link{syntren1000.data}}}

\examples{
data(rogers1000.net)
# Number of directed edges
nEdges<- sum(rogers1000.net)
}

\keyword{datasets}
