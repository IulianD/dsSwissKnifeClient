% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dssCoxph.R
\name{dssCoxph}
\alias{dssCoxph}
\title{Remote coxph + (optional) survfit.coxph}
\usage{
dssCoxph(..., async = TRUE, wait = TRUE, datasources = NULL)
}
\arguments{
\item{...}{arguments to be sent to the 2 functions.
Note, the data argument must be a character, the name of the input dataframe.
If a newdata dataframe is present in the arguments, survfit will be called on the coxph object.
The newdata dataframe argument must be sent as text describing the arguments to a call to data.frame() (see example).}

\item{async}{same as in datashield.assign}

\item{wait}{same as in datashield.assign}

\item{datasources}{same as in datashield.assign}
}
\value{
A list containing the stripped down coxph model (without the call and the residuals)
}
\description{
Executes coxph \{survival\} and survfit \{survival\} on the remote nodes
}
\examples{
# open a local pseudo connection:
opals <- dssCreatePseudoServers(servers = 1, tie_first_to_GlobalEnv = 1)
# load the lung dataset
datashield.aggregate(opals[1], as.symbol('partialData("lung", NULL, NULL, "survival")'))
#create the new.dataframe argument (note the reference to the  'lung' data frame)
new.df <- 'sex = c(1, 2), age = rep(mean(lung$age, na.rm = TRUE), 2), ph.ecog = c(1, 1)'

# execute the function:
cox.res <- dssCoxph(formula = survival::Surv(time, status) ~ age + sex + ph.ecog, data = 'lung', new.dataframe = new.df, async = FALSE, datasources = opals[1])
summary(cox.res$local1$model)
# plot the fit:
plot(cox.res$local1$fit, conf.int = TRUE, col = c('blue', 'red'))

}
