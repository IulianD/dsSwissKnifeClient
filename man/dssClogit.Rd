% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dssClogit.R
\name{dssClogit}
\alias{dssClogit}
\title{Remote clogit}
\usage{
dssClogit(..., async = TRUE, wait = TRUE, datasources = NULL)
}
\arguments{
\item{...}{arguments to be sent to clogit.
Note, the data argument must be a character, the name of the input dataframe.}

\item{async}{same as in datashield.assign}

\item{wait}{same as in datashield.assign}

\item{datasources}{same as in datashield.assign}
}
\value{
A stripped down clogit model (without the call and the residuals)
}
\description{
Executes clogit \{survival\} on the remote nodes
}
\examples{
# open a local pseudo connection:
opals <- dssCreatePseudoServers(servers = 1, tie_first_to_GlobalEnv = 1)
# load the infert dataset
datashield.aggregate(opals[1], as.symbol('partialData("infert")'))
clogit.model <- dssClogit(formula = case ~ spontaneous + induced + stratum, data='infert', datasources = opals[1])
summary(clogit.model$local1)

}
