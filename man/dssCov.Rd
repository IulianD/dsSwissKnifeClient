% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dssCov.R
\name{dssCov}
\alias{dssCov}
\title{The covariance matrix of a data frame or matrix}
\usage{
dssCov(
  x,
  collist = NULL,
  type = "combine",
  async = TRUE,
  wait = TRUE,
  datasources = NULL
)
}
\arguments{
\item{x}{a character name of the data frame}

\item{collist}{a vector of columns for the covariances. They must exist in x.
If null, all the *numeric* columns from x will be used.}

\item{type}{a character which represents the type of analysis to carry out.
If type is set to 'combine',  global column means are calculated if type is set to 'split', the column means are
calculated separately for each node.}

\item{async}{a logical, see datashield.aggregate}

\item{wait}{a logical, see datashield.aggregate}

\item{datasources}{a list of opal objects obtained after logging into the opal servers (see datashield.login)}
}
\value{
a list with one element for each node (or one $global element if type='combine'). Each element contains
a vector with the respective column means, the covariance matrix and the number of rows
}
\description{
The covariance matrix of a data frame or matrix
}
