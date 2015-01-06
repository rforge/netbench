\docType{data}
\name{syntren1000.net}
\alias{syntren1000.net}
\title{Simulated Gene Expression Data}
\description{
True underlying network used to generate the dataset 
 at \code{\link{syntren1000.data}}.

 }
\usage{data(syntren1000.net)}
\format{
 \code{true.net} is the true underlying network used to generate the 
 dataset loaded  at \code{\link{syntren1000.data}}.
}
\source{
 SynTReN 1.1.3 with source network : ecoli\_nn.sif
}

\references{
Van den Bulcke, Tim, et al. "SynTReN: a generator of synthetic gene 
expression data for design and analysis of structure learning algorithms." 
BMC Bioinformatics 7.1 (2006): 43.
}

\seealso{\code{\link{syntren1000.data}},\code{\link{gnw1565.data}}, 
\code{\link{gnw2000.data}}, \code{\link{rogers1000.data}}, 
\code{\link{syntren300.data}}}

\examples{
data(syntren1000.net)
# Number of directed edges
nEdges<- sum(syntren1000.net)
}

\keyword{datasets}
