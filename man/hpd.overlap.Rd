% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sets.R
\name{hpd.overlap}
\alias{hpd.overlap}
\title{Check whether hpds of two distributions overlap}
\usage{
hpd.overlap(distA, distB, prob = 0.95)
}
\arguments{
\item{distA}{Distribution A. Expects two columns: values and their probabilities (e.g., caldist(130,10, cc=1)).}

\item{distB}{Distribution B. Expects two columns: values and their probabilities (e.g., caldist(130,10, cc=1)).}

\item{prob}{The probability of the highest posterior densities. Defaults to 95\%.}
}
\value{
TRUE if at least one of the hpds of distA overlaps with that of distB.
}
\description{
Checks whether any of the highest posterior densities (hpds) of two distributions overlap.
}
\examples{
  distA <- caldist(130, 20, cc=0) # normal distribution
  distB <- caldist(130, 20, cc=1) # calibrated distribution
  plot(distB, type="l")
  lines(distA, col=2)
  hpd.overlap(distA, distB)
}
