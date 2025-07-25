% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/realms.R
\name{C14toD14C}
\alias{C14toD14C}
\title{Transform C14 age(s) into D14C}
\usage{
C14toD14C(y, er = NULL, t, roundby = NA)
}
\arguments{
\item{y}{The C14 age to translate}

\item{er}{Reported error of the C14 age. Returns just the mean if left empty.}

\item{t}{the cal BP age}

\item{roundby}{Amount of decimals required for the output. Defaults to \code{roundby=NA}, no rounding.}
}
\value{
The corresponding D14C value
}
\description{
Transform C14 age(s) into D14C
}
\details{
As explained by Heaton et al. 2020 (Radiocarbon), 14C measurements are commonly expressed in
three domains: Delta14C, F14C and the radiocarbon age. This function translates C14 ages into Delta14C, the historical level of Delta14C in the year t cal BP. Note that per convention, this function uses the Cambridge half-life, not the Libby half-life.
}
\examples{
  C14toD14C(0.985, 20, 222)
}
