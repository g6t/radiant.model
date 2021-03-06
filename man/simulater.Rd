% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulater.R
\name{simulater}
\alias{simulater}
\title{Simulate data for decision analysis}
\usage{
simulater(const = "", lnorm = "", norm = "", unif = "", discrete = "",
  binom = "", sequ = "", grid = "", data = "", form = "", seed = "",
  name = "", nr = 1000, dat = NULL)
}
\arguments{
\item{const}{A string listing the constants to include in the analysis (e.g., "cost = 3; size = 4")}

\item{lnorm}{A string listing the log-normally distributed random variables to include in the analysis (e.g., "demand 2000 1000" where the first number is the log-mean and the second is the log-standard deviation)}

\item{norm}{A string listing the normally distributed random variables to include in the analysis (e.g., "demand 2000 1000" where the first number is the mean and the second is the standard deviation)}

\item{unif}{A string listing the uniformly distributed random variables to include in the analysis (e.g., "demand 0 1" where the first number is the minimum value and the second is the maximum value)}

\item{discrete}{A string listing the random variables with a discrete distribution to include in the analysis (e.g., "price 5 8 .3 .7" where the first set of numbers are the values and the second set the probabilities}

\item{binom}{A string listing the random variables with a binomail distribution to include in the analysis (e.g., "crash 100 .01") where the first number is the number of trials and the second is the probability of success)}

\item{sequ}{A string listing the start and end for a sequence to include in the analysis (e.g., "trend 1 100 1"). The number of 'steps' is determined by the number of simulations.}

\item{grid}{A string listing the start, end, and step for a set of sequences to include in the analysis (e.g., "trend 1 100 1"). The number of rows in the expanded will over ride the number of simulations}

\item{data}{Name of a dataset to be used in the calculations}

\item{form}{A string with the formula to evaluate (e.g., "profit = demand * (price - cost)")}

\item{seed}{To repeat a simulation with the same randomly generated values enter a number into Random seed input box.}

\item{name}{To save the simulated data for further analysis specify a name in the Sim name input box. You can then investigate the simulated data by choosing the specified name from the Datasets dropdown in any of the other Data tabs.}

\item{nr}{Number of simulations}

\item{dat}{Data list from previous simulation. Used by repeater function}
}
\value{
A data.frame with the created variables
}
\description{
Simulate data for decision analysis
}
\details{
See \url{https://radiant-rstats.github.io/docs/model/simulater.html} for an example in Radiant
}
\examples{
result <- simulater(const = "cost 3", norm = "demand 2000 1000",
                   discrete = "price 5 8 .3 .7",
                   form = "profit = demand * (price - cost)")

}
\seealso{
\code{\link{summary.simulater}} to summarize results

\code{\link{plot.simulater}} to plot results
}
