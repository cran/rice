% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sources.R
\name{contaminate}
\alias{contaminate}
\title{Simulate the impact of contamination on a radiocarbon age}
\usage{
contaminate(
  y,
  er = 0,
  percentage,
  percentage.error = 0.001,
  F.contam = 1,
  F.contam.er = 0.001,
  MC = TRUE,
  seed = NA,
  its = 10000,
  decimals = 5,
  roundby = 1,
  visualise = TRUE,
  talk = TRUE,
  eq.x = 5,
  eq.y = c(),
  eq.size = 0.7,
  true.col = "darkgreen",
  observed.col = "blue",
  contamination.col = "red",
  true.pch = 20,
  observed.pch = 18,
  contamination.pch = 17,
  true.name = "true",
  xlab = "contamination (\%)",
  ylab = "F14C",
  ylim = c(),
  C14.axis = TRUE,
  bty = "u"
)
}
\arguments{
\item{y}{The 'true' radiocarbon age}

\item{er}{The error of the 'true' radiocarbon age}

\item{percentage}{Relative amount of contamination. Must be between 0 and 1}

\item{percentage.error}{Uncertainty of the contamination. Assumed to be normally distributed (which fails close to 0\% or 100\% contamination levels). Defaults to a very small but >0 value, 0.001\%.}

\item{F.contam}{the F14C of the contamination. Set at 1 for carbon of modern radiocarbon age, at 0 for 14C-free carbon, or anywhere inbetween.}

\item{F.contam.er}{error of the contamination. Defaults to a very small but >0 value, 0.001\%.}

\item{MC}{Whether or not to use Monte Carlo iterations to estimate the values. Defaults to TRUE, because it treats uncertainties better than if set to FALSE.}

\item{seed}{For reproducibility, a seed can be set (e.g., \code{seed=123}). Defaults to NA, no seed set.}

\item{its}{Amount of iterations to use if MC=TRUE. Defaults to 10,000.}

\item{decimals}{Rounding of the output for F values. Since details matter here, the default is to provide 5 decimals.}

\item{roundby}{Rounding of the output for C14 ages. Defaults to 1 decimal.}

\item{visualise}{By default, a plot is made to visualise the target and observed F14C values, together with the inferred contamination.}

\item{talk}{Whether or not to report the calculations made. Defaults to \code{talk=TRUE}.}

\item{eq.x}{Leftmost location of the equation. Defaults to \code{eq.x=5}. Can be set to values outside of (0,100) to make the equation invisible.}

\item{eq.y}{Vertical location of the equation. Defaults to the top of the graph.}

\item{eq.size}{Size of the font of the equation. In case the equation gets jumbled up upon resizing of a graphical device, just issue the previous `contaminate` command again. Defaults to \code{eq.size=0.8}.}

\item{true.col}{Colour for the target/true values. Defaults to "darkgreen".}

\item{observed.col}{Colour for the observed values. Defaults to blue.}

\item{contamination.col}{Colour for the contamination values. Defaults to red.}

\item{true.pch}{Icon for the true/target date. Defaults to a filled circle.}

\item{observed.pch}{Icon for the observed. Defaults to a diamond.}

\item{contamination.pch}{Icon for the contamination. Defaults to a triangle.}

\item{true.name}{Name of the label of the true/target date}

\item{xlab}{Name of the x-axis. Defaults to 'contamination (\%)'.}

\item{ylab}{Name of the y-axis. Defaults to 'F14C'.}

\item{ylim}{Limits of the y-axis. Calculated automatically by default.}

\item{C14.axis}{Whether or not to draw a secondary vertical axis for C14 ages. Defaults to \code{C14.axis=TRUE}.}

\item{bty}{Draw a box around a box of a certain shape. Defaults to \code{bty="u"}.}
}
\value{
The observed radiocarbon age and error
}
\description{
Given a true/target radiocarbon age, calculate the impact of contamination (for example, 1\% contamination with modern carbon) on the observed age. Can optionally include contamination uncertainties, but then Monte Carlo iterations should be used (option MC=TRUE).
}
\details{
Whereas the function takes C14 ages and percentage contamination as input, internal calculations are done in the F14C realm and using fractions (between 0 and 1). The central calculation is `F_obs = ((1-frac)*F_true) + (frac*F_contam)`, where `F_obs` is the observed C14 age as F14C, `frac` is the fraction of contamination, `F_true` is the F14C of the true/target C14 age, and `F_contam` is the F activity of the contamination. In some extreme cases, the calculations will spit out unexpected results. Messages will be provided in most of these cases.
}
\examples{
contaminate(5000, 20, 5, 0, 1) # 5\% contamination with modern carbon
# dino bone with 1\% contamination, shouldn't be dated as way beyond the dating limit:
contaminate(66e6, 1e6, 1, 0, 1) 
}
\author{
Maarten Blaauw
}
