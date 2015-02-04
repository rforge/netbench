\name{getData}
\alias{getData}
\title{Datasource and underlying network loading}
\description{
   Function to load a gene expression datasource and the network that have
   generate it.
}
\usage{
    getData(datasource.name=NULL,getNet=TRUE)
} 
\arguments{
    \item{datasource.name}{A character containing the name of 
    network datasources to (default: NULL).}
    \item{getNet}{Logical specifying if the true underlying network should be
    returned (default: TRUE).}
}
\value{
    The function \code{getData} loads the specified datasource by
    \code{datasource.name} and its true underlying network if 
    it is specified by \code{getNet}.
}
\details{
    If \code{getNet} is TRUE the function will return a list with two 
    components:
    \enumerate{
        \item A data.frame with the specified datasoruce.
        \item A matrix with the true underlying network.
    }
}
\examples{
    # Get only datasource
    data <- getData(datasource.name="syntren300",getNet=FALSE)
    # Get the datasource and network in a list
    mydata <- getData(datasource.name="syntren1000")
    data <- mydata[[1]]
    net <- mydata[[2]]
}
\keyword{misc}
