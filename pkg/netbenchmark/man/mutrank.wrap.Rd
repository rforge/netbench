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
  \item{data}{Numeric matrix with the microarray dataset to infer the network. Columns contain variables and rows contain samples.}
}
% \details{
% %%  ~~ If necessary, more details than the description above ~~
% }
% \value{
% %%  ~Describe the value returned
% %%  If it is a LIST, use
% %%  \item{comp1 }{Description of 'comp1'}
% %%  \item{comp2 }{Description of 'comp2'}
% %% ...
% }
 \references{
Obayashi, Takeshi, and Kengo Kinoshita. "Rank of correlation coefficient as a comparable measure for biological significance of gene coexpression." DNA research 16.5 (2009): 249-260. }



\examples{
\dontrun{
# Inference
net<-mutrank.wrap(syntren300.data)
# Evaluation
table <- evaluate(net,syntren300.net)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
