% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/realms.R
\name{C14tob2k}
\alias{C14tob2k}
\title{Find the b2k age(s) crossing a C14 age.}
\usage{
C14tob2k(
  y,
  cc = 1,
  postbomb = FALSE,
  rule = 1,
  cc.dir = NULL,
  thiscurve = NULL,
  roundby = NA
)
}
\arguments{
\item{y}{The C14 age.}

\item{cc}{calibration curve for C14 (see \code{caldist()}).}

\item{postbomb}{Whether or not to use a postbomb curve (see \code{caldist()}).}

\item{rule}{How should R's approx function deal with extrapolation. If \code{rule=1}, the default, then NAs are returned for such points and if it is 2, the value at the closest data extreme is used.}

\item{cc.dir}{Directory of the calibration curves. Defaults to where the package's files are stored (system.file), but can be set to, e.g., \code{cc.dir="curves"}.}

\item{thiscurve}{As an alternative to providing cc and/or postbomb, the data of a specific curve can be provided (3 columns: cal BP, C14 age, error).}

\item{roundby}{Amount of decimals required for the output. Defaults to \code{roundby=NA}, no rounding.}
}
\value{
The b2k age(s) belonging to the entered C14 age
}
\description{
Find the b2k ages (years before AD 2000, popular in the ice core community) where the calibration curve crosses a given C14 age. This function is for illustration only and not to be used for, e.g., calibration, because intercept calibration is an outdated method.
}
\details{
. Whereas each calendar age will only have one single IntCal radiocarbon age (mu), the same cannot be said for the other way round. Recurring C14 ages do happen, especially during periods of plateaux and wiggles. Therefore, there can be multiple cal BP ages for a single C14 age. In the early days, radiocarbon calibration used an 'intercept method' to find possible calendar ages belonging to a radiocarbon age, but this is problematic since small deviations in the C14 age can easily cause more or fewer crossing cal BP ages (try for example C14tocalBP(130) vs C14tocalBP(129)), and moreover, this approach does not deal well with the errors in either a date of the calibration curve. Therefore, the probabilistic approach to radiocarbon calibration (which starts with a cal BP age and then looks up the corresponding C14 age) has taken over as the standard.
}
\examples{
 C14tob2k(130,20)
}
\author{
Maarten Blaauw
}
