% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dssColMeans.R
\name{dssColMeans}
\alias{dssColMeans}
\title{Column means of a data frame}
\usage{
dssColMeans(
  x = NULL,
  na.rm = TRUE,
  collist = NULL,
  type = "combine",
  async = TRUE,
  wait = TRUE,
  datasources = NULL
)
}
\arguments{
\item{x}{a character name of the data frame}

\item{na.rm}{a logical. Should missing values (including NaN) be omitted from the calculations?}

\item{collist}{a vector of columns whose means will be calculated. They must exist in x.
If null, all the *numeric* columns from x will be used.}

\item{type}{a character which represents the type of analysis to carry out.
If type is set to 'combine',  global column means are calculated if type is set to 'split', the column means are
calculated separately for each node.}

\item{async}{a logical, see datashield.aggregate}

\item{wait}{a logical, see datashield.aggregate}

\item{datasources}{a list of opal objects obtained after logging into the opal servers (see datashield.login)}
}
\value{
a list with one element for each node (and one $global element if type='combine'). Each element contains, for each
numeric column, the respective mean, number of rows and number of NAs
}
\description{
This function is similar to the R function colMeans
}
