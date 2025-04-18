% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calibrate.R
\name{calib.t}
\alias{calib.t}
\title{Comparison dates calibrated using both the t distribution (Christen and Perez 2009) and the normal distribution.}
\usage{
calib.t(
  y = 2450,
  er = 50,
  t.a = 3,
  t.b = 4,
  cc = 1,
  postbomb = FALSE,
  deltaR = 0,
  deltaSTD = 0,
  as.F = FALSE,
  is.F = FALSE,
  BCAD = FALSE,
  cc.dir = c(),
  normal.col = "red",
  normal.lwd = 1.5,
  t.col = rgb(0, 0, 0, 0.25),
  t.border = rgb(0, 0, 0, 0, 0.25),
  xlim = c(),
  ylim = c()
)
}
\arguments{
\item{y}{The reported mean of the date.}

\item{er}{The reported error of the date.}

\item{t.a}{Value for the t parameter \code{a}.}

\item{t.b}{Value for the t parameter \code{b}.}

\item{cc}{calibration curve for the radiocarbon date(s) (see the \code{rintcal} package).}

\item{postbomb}{Which postbomb curve to use for negative 14C dates.}

\item{deltaR}{Age offset (e.g. for marine samples).}

\item{deltaSTD}{Uncertainty of the age offset (1 standard deviation).}

\item{as.F}{Whether or not to calculate ages in the F14C realm. Defaults to \code{as.F=FALSE}, which uses the C14 realm.}

\item{is.F}{Use this if the provided date is in the F14C realm.}

\item{BCAD}{Which calendar scale to use. Defaults to cal BP, \code{BCAD=FALSE}.}

\item{cc.dir}{Directory where the calibration curves for C14 dates \code{cc} are allocated. By default \code{cc.dir=c()}.
Use \code{cc.dir="."} to choose current working directory. Use \code{cc.dir="Curves/"} to choose sub-folder \code{Curves/}.}

\item{normal.col}{Colour of the normal curve}

\item{normal.lwd}{Line width of the normal curve}

\item{t.col}{Colour of the t histogram}

\item{t.border}{Colour of the border of the t histogram}

\item{xlim}{x axis limits}

\item{ylim}{y axis limits}
}
\description{
Visualise how a date calibrates using the t distribution and the normal distribution.
}
\details{
Radiocarbon and other dates are usually modelled using the normal distribution (red curve). The t approach (grey distribution) however allows for wider tails and thus tends to better accommodate outlying dates. This distribution requires two parameters, called 'a' and 'b'.
}
\examples{
calib.t()

}
\author{
Maarten Blaauw
}
