\name{toy.net}
\docType{data}
\alias{toy.net}
\title{Simulated Toy example of Gene Expression Data}
\description{
    True underlying network used to generate the dataset 
    at \code{\link{toy.data}}.
}
\usage{data(toy.net)}
\format{
    \code{toy.net} is the true underlying network used to generate the dataset 
    loaded at \code{\link{toy.data}}.
}
\source{
    GNW v3.1  with source network :  Example (Ecoli)
}
\references{
    Schaffter, Thomas, Daniel Marbach, and Dario Floreano. "GeneNetWeaver: 
    in silico benchmark generation and performance profiling of network 
    inference methods." Bioinformatics 27.16 (2011): 2263-2270.
}
\value{
   \code{matrix} containg underlying network.
}
\seealso{
    \code{\link{toy.data}}
}
\examples{
    data(toy.net)
    # Print size
    nEdges<- sum(toy.net)
}
\keyword{datasets}
