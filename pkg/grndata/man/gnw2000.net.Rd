\docType{data}
\name{gnw2000.net}
\alias{gnw2000.net}
\title{Simulated Gene Expression Data}
\description{
True underlying network used to generate the dataset 
 at \code{\link{gnw2000.data}}.
 }
\usage{data(gnw2000.net)}
\format{
\code{true.net} is the true underlying network used to generate the dataset loaded
 at \code{\link{gnw2000.data}}.
}
\source{
 GNW v3.1  with source network : Yeast
}

\references{
Schaffter, Thomas, Daniel Marbach, and Dario Floreano. "GeneNetWeaver: in silico benchmark 
generation and performance profiling of network inference methods." Bioinformatics 27.16 (2011): 2263-2270.
}

\seealso{  \code{\link{gnw2000.data}}, \code{\link{gnw1565.data}}, \code{\link{rogers1000.data}}, \code{\link{syntren300.data}}, \code{\link{syntren1000.data}}}

\examples{
data(gnw2000.net)
# Number of directed edges
nEdges<- sum(gnw2000.net)
}

\keyword{datasets}
