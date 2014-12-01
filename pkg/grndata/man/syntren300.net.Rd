\docType{data}
\name{syntren300.net}
\alias{syntren300.net}
\title{Simulated Gene Expression Data}
\description{
True underlying network used to generate the dataset 
 at \code{\link{syntren300.data}}.
 }
\usage{data(syntren300.net)}
\format{
\code{true.net} is the true underlying network used to generate the dataset loaded
 at \code{\link{syntren300.data}}.
}
\source{
 SynTReN 1.1.3 with source network : ecoli\_nn.sif
}

\references{
Van den Bulcke, Tim, et al. "SynTReN: a generator of synthetic gene 
expression data for design and analysis of structure learning algorithms." 
BMC bioinformatics 7.1 (2006): 43.
}
\seealso{\code{\link{syntren300.data}}, \code{\link{syntren1000.data}}, \code{\link{rogers1000.data}}, \code{\link{gnw1565.data}}, \code{\link{gnw2000.data}}}


\examples{
# Number of directed edges
nEdges<- sum(syntren3000.net)
}

\keyword{datasets}
