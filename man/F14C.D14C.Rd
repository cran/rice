% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calc.R
\name{F14C.D14C}
\alias{F14C.D14C}
\title{Transform F14C into D14C}
\usage{
F14C.D14C(F14C, t)
}
\arguments{
\item{F14C}{The F14C value to translate}

\item{t}{the cal BP age}
}
\value{
The corresponding D14C value
}
\description{
Transform F14C into D14C
}
\details{
As explained by Heaton et al. 2020 (Radiocarbon), 14C measurements are commonly expressed in
three domains: Delta14C, F14C and the radiocarbon age. This function translates F14C values into Delta14C, the historical level of Delta14C in the year t cal BP. Note that per convention, this function uses the Cambridge half-life, not the Libby half-life.
}
\examples{
F14C.D14C(0.985, 222)
cc <- rintcal::ccurve()
# plot IntCal20 as D14C:
cc.Fmin <- age.F14C(cc[,2]+cc[,3])
cc.Fmax <- age.F14C(cc[,2]-cc[,3])
cc.D14Cmin <- F14C.D14C(cc.Fmin, cc[,1])
cc.D14Cmax <- F14C.D14C(cc.Fmax, cc[,1])
plot(cc[,1]/1e3, cc.D14Cmax, type="l", xlab="kcal BP", ylab=expression(paste(Delta, ""^{14}, "C")))
lines(cc[,1]/1e3, cc.D14Cmin)
}
