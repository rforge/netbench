\name{mutrank.wrap}
\alias{mutrank.wrap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
    Mutual Rank wrapper function
}
\description{
    A wrapper function for mutual rank.
}
\usage{
    mutrank.wrap(data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
    \item{data}{Numeric matrix with the microarray dataset to infer the 
    network. Columns contain variables and rows contain samples.}
}
% \details{
% %%  ~~ If necessary, more details than the description above ~~
% }
\value{    
    \code{mutrank.wrap} returns a matrix which is the weighted adjacency 
    matrix of the network inferred by Mutual Rank algorithm.
}
\references{
    Obayashi, Takeshi, and Kengo Kinoshita. "Rank of correlation coefficient as 
    a comparable measure for biological significance of gene coexpression." 
    DNA research 16.5 (2009): 249-260.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

% \seealso{
% %% ~~objects to See Also as \code{\link{help}}, ~~~
% }
\examples{
    # Data
    data<-runif(100)
    dim(data)<-c(10,10)
    # Inference
    net<-mutrank.wrap(as.data.frame(data))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
