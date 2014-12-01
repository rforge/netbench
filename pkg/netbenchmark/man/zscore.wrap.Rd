\name{zscore.wrap}
\alias{zscore.wrap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Zscore wrapper function
}
\description{
Z-score wrapper function.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
zscore.wrap(data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{Numeric matrix with the microarray dataset to infer the network. Columns contain variables and rows contain samples.}
}
\details{
Zscore  is a method that assumes interventional data, more concretely knockout experiments that leads to a change in other genes. The assumption is that the knocked-out gene \eqn{i} in the experiment \eqn{k} affects more strongly to the genes that it regulates than the others, the effect of the gene \eqn{i} over the gene \eqn{j} is captured with the Zscore \eqn{z_{ij}}:

\deqn{ 
z_{ij}=|\frac{x_{jk}-\mu_j}{\sigma_j}|
}

\eqn{mu_j} and \eqn{\sigma_j} are respectively the mean and standard deviation of the empirical distribution of the gene \eqn{j}.
 }

 \value{
\code{zscore.wrap} returns a matrix which is the weighted adjacency matrix of the network 
inferred by Zscore algorithm.
 }
 \references{
 Prill, Robert J., et al. "Towards a rigorous assessment of systems biology models: the DREAM3 challenges." PloS one 5.2 (2010): e9202.
 }
% \author{
% %%  ~~who you are~~
% }
% \note{
% %%  ~~further notes~~
% }

%% ~Make other sections like Warning with \section{Warning }{....} ~

% \seealso{
% %% ~~objects to See Also as \code{\link{help}}, ~~~
% }
\examples{
\dontrun{
# Inference
net<-zscore.wrap(syntren300.data)
# Evaluation
table <- evaluate(net,syntren300.net)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
