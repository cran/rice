% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/marine.R
\name{map.shells}
\alias{map.shells}
\title{Plot regional shell-derived dR values}
\usage{
map.shells(
  S = 48,
  W = -15,
  N = 62,
  E = 5,
  colour = "dR",
  rainbow = FALSE,
  size = 2,
  scale = c(),
  mincol = "yellow",
  maxcol = "red",
  symbol = "feeding",
  symbol.legend = TRUE,
  ocean.col = "aliceblue",
  land.col = rgb(0, 0.5, 0, 0.6)
)
}
\arguments{
\item{S}{The southern limit of the rectangular region.}

\item{W}{The western limit of the rectangular region.}

\item{N}{The northern limit of the rectangular region.}

\item{E}{The eastern limit of the rectangular region.}

\item{colour}{The variable to be plotted as colour. Expects a continuous variable. Defaults to 'dR'.}

\item{rainbow}{Whether or not to use a rainbow scale to plot the variable.}

\item{size}{Size of the symbols. Defaults to 2.}

\item{scale}{Resolution of the map. Can be "small", "medium" or "large". If the latter, a high-resolution dataset will have to be downloaded using the R package 'rnaturalearthhires'. Since this package is not on CRAN, you will have to download it yourself. Defaults to 'medium' if 'rnaturalearthhires' is not installed, and to 'high' if it is installed.}

\item{mincol}{Colour for minimum values.}

\item{maxcol}{Colour for maximum values.}

\item{symbol}{The variable to be plotted as symbol. Expects a categoric variable. Defaults to 'feeding'.}

\item{symbol.legend}{Whether or not to plot the legend for the symbols.}

\item{ocean.col}{Colour for the oceans. Defaults to \code{ocean.col="aliceblue"}.}

\item{land.col}{Colour for the land. Defaults to semi-transparent darkgreen: \code{land.col=rgb(0, 0.5, 0, 0.6)}.}
}
\value{
A plot and the relevant dR values.
}
\description{
Find the shells that fit within a rectangular region (bounded by N, E, S and W), and plot the dR values and feeding ecology. Uses the marine database downloaded (30 Aug 2024) from calib.org/marine. See Reimer PJ, Reimer RW, 2001. A marine reservoir correction database and on-line interface. Radiocarbon 43:461-3. Expects the coordinates for the map to be provided (starting south, then clockwise as with R axes).
}
\examples{
 N_UK <- map.shells(53, -11, 60, 2, scale="medium")
 mean(N_UK$dR)
}
