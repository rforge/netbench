\name{zsc}
\alias{zsc}
\alias{netbenchmark_zsc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
    Z-score c++ function
}
\description{
    Z-score c++ function
}
\usage{
    zsc(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
    \item{x}{Numeric matrix with the microarray dataset to infer the network. 
    Columns contain variables and rows contain samples.}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
    A matrix of doubles with the inferred adjacency matrix.
}

\references{
    Prill, Robert J., et al. "Towards a rigorous assessment of systems 
    biology models: the DREAM3 challenges." PloS one 5.2 (2010): e9202.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~
\seealso{
    \code{\link{netbenchmark}}
}
\examples{
    # Data
    data<-runif(100)
    dim(data)<-c(10,10)
    # Inference
    net<-zsc(data)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
