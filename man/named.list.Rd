% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{named.list}
\alias{named.list}
\title{Create a named list}
\usage{
named.list(...)
}
\arguments{
\item{...}{Variables to pack in a list}
}
\value{
A list of variables
}
\description{
Create a list with variables and name the slots using
the variables names
}
\examples{
diffuStats:::named.list(LETTERS, mean)
}
