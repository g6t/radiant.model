% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/naivebayes.R
\name{plot.nb}
\alias{plot.nb}
\title{Plot method for the nb function}
\usage{
\method{plot}{nb}(x, ...)
}
\arguments{
\item{x}{Return value from \code{\link{nb}}}

\item{...}{further arguments passed to or from other methods}
}
\description{
Plot method for the nb function
}
\details{
See \url{https://radiant-rstats.github.io/docs/model/nb.html} for an example in Radiant
}
\examples{
result <- nb("titanic", "survived", c("pclass","sex"))
plot(result)
result <- nb("titanic", "pclass", c("sex","age"))
plot(result)

}
\seealso{
\code{\link{nb}} to generate results

\code{\link{summary.nb}} to summarize results

\code{\link{predict.nb}} for prediction
}
