% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dssGRridge.R
\name{dssGRridge}
\alias{dssGRridge}
\title{Call selected functions from the package GRridge}
\usage{
dssGRridge(
  func,
  ...,
  newobj = NULL,
  async = TRUE,
  wait = TRUE,
  datasources = NULL
)
}
\arguments{
\item{func}{a character, the name of the function to call}

\item{...}{further arguments to be passed to the function (see the documentation of the GRridge package).}

\item{newobj}{a character name of the new object to be created on the nodes if this is an assign function(i.e 'CreatePartition'), ignored otherwise.}

\item{async}{a logical, see datashield.aggregate}

\item{wait}{a logical, see datashield.aggregate}

\item{datasources}{a list of opal objects obtained after logging into the opal servers (see datashield.login)}
}
\description{
At the moment only the functions 'CreatePartition'  and 'grridge'  are implemented
}
