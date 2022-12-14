% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/munge_dss_outputs.R
\name{munge_dss_outputs}
\alias{munge_dss_outputs}
\title{Makes}
\usage{
munge_dss_outputs(dml.fit, test.var)
}
\arguments{
\item{test.var}{a string representing the}

\item{bs}{a class bisulfite sequence object (see Hansen BSseq)}

\item{design.df}{a data.frame with covariates}

\item{dss.formula}{a \code{formula()} representing the model to fit}
}
\description{
Filters and checks that the design.df and bs samples are identical
Runs DSS models (See Wu 2016)
}
\examples{
munge_dss_outputs()
}
\keyword{model}
