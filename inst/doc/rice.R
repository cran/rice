## ----eval=FALSE---------------------------------------------------------------
#  install.packages('rice')

## ----eval=FALSE---------------------------------------------------------------
#  update.packages()

## -----------------------------------------------------------------------------
library(rice)

## ----fig.width=4, fig.asp=.8--------------------------------------------------
draw.ccurve()

## ----fig.width=4, fig.asp=.8--------------------------------------------------
draw.ccurve(1000, 2020, BCAD=TRUE, cc2='marine20', add.yaxis=TRUE)

## ----fig.width=4, fig.asp=.8--------------------------------------------------
draw.ccurve(1600, 1950, BCAD=TRUE)

## ----fig.width=4, fig.asp=.8--------------------------------------------------
draw.ccurve(1600, 2020, BCAD=TRUE, cc2='nh1')

## ----fig.width=4, fig.asp=.8--------------------------------------------------
draw.ccurve(1600, 2020, BCAD=TRUE, cc2='nh1', add.yaxis=TRUE)

## -----------------------------------------------------------------------------
calBP.14C(900)

## -----------------------------------------------------------------------------
pMC.age(150, 1)

## -----------------------------------------------------------------------------
age.pMC(-2300, 40)

## -----------------------------------------------------------------------------
F14C.age(.150, .01)

## -----------------------------------------------------------------------------
age.F14C(-2300, 40)

## -----------------------------------------------------------------------------
F14C.D14C(0.71, t=4000)
D14C.F14C(152, 4000)

## ----fig.width=4, fig.asp=.8--------------------------------------------------
cc <- rintcal::ccurve()
cc.Fmin <- age.F14C(cc[,2]+cc[,3])
cc.Fmax <- age.F14C(cc[,2]-cc[,3])
cc.D14Cmin <- F14C.D14C(cc.Fmin, cc[,1])
cc.D14Cmax <- F14C.D14C(cc.Fmax, cc[,1])
par(mar=c(4,3,1,3), bty="l")
plot(cc[,1]/1e3, cc.D14Cmax, type="l", xlab="kcal BP", ylab="")
mtext(expression(paste(Delta, ""^{14}, "C")), 2, 1.7)
lines(cc[,1]/1e3, cc.D14Cmin)
par(new=TRUE)
plot(cc[,1]/1e3, (cc[,2]+cc[,3])/1e3, type="l", xaxt="n", yaxt="n", col=4, xlab="", ylab="")
lines(cc[,1]/1e3, (cc[,2]-cc[,3])/1e3, col=4)
axis(4, col=4, col.axis=4)
mtext(expression(paste(""^{14}, "C kBP")), 4, 2, col=4)

## -----------------------------------------------------------------------------
contaminate(5000, 20, .01, 1)

## ----fig.width=6, fig.asp=.8--------------------------------------------------
real.14C <- seq(0, 50e3, length=200)
contam <- seq(0, .1, length=101) # 0 to 10% contamination
contam.col <- rainbow(length(contam))
plot(0, type="n", xlim=c(0, 55e3), xlab="real 14C age", ylim=range(real.14C), ylab="observed 14C age")
for(i in 1:length(contam))
  lines(real.14C, contaminate(real.14C, c(), contam[i], 1, decimals=5), col=contam.col[i])
contam.legend <- seq(0, .1, length=6)
contam.col <- rainbow(length(contam.legend)-1)
text(50e3, contaminate(50e3, c(), contam.legend, 1), 
  labels=contam.legend, col=contam.col, cex=.7, offset=0, adj=c(0,.8))

## ----fig.width=6, fig.asp=.8--------------------------------------------------
draw.contamination()

## ----fig.width=4, fig.asp=.8--------------------------------------------------
calib.130 <- caldist(130, 10, BCAD=TRUE)
plot(calib.130, type="l")

## -----------------------------------------------------------------------------
l.calib(145, 130, 10)

## -----------------------------------------------------------------------------
hpd(calib.130)

## ----fig.width=4, fig.asp=.8--------------------------------------------------
calib.2450 <- caldist(2450, 20)
plot(calib.2450, type="l")
points.2450 <- point.estimates(calib.2450)
points.2450
abline(v=points.2450, col=1:4, lty=2)

## ----fig.width=5, fig.asp=1---------------------------------------------------
calibrate(130,10)

## ----fig.width=5, fig.asp=1---------------------------------------------------
try(calibrate(130,30))
calibrate(130, 30, bombalert=FALSE)

## -----------------------------------------------------------------------------
younger(150, 130, 10)
older(150, 130, 10)

## ----fig.width=5, fig.asp=1---------------------------------------------------
myshells <- map.shells(S=54, W=-8, N=61, E=0) # the northern part of the UK

## ----fig.width=5, fig.asp=1---------------------------------------------------
head(myshells)
shells.mean(myshells)

## ----fig.width=5, fig.asp=1---------------------------------------------------
myshells <- find.shells(120, 10, 20)
shells.mean(myshells, distance=TRUE)

## ----fig.width=4, fig.asp=1---------------------------------------------------
set.seed(123)
dates <- sort(sample(500:2500,5))
errors <- .05*dates
depths <- 1:length(dates)
my.labels <- c("my", "very", "own", "simulated", "dates")
draw.dates(dates, errors, depths, BCAD=TRUE, labels=my.labels, age.lim=c(0, 1800))

## ----fig.width=4, fig.asp=1---------------------------------------------------
plot(300*1:5, 5:1, xlim=c(0, 1800), ylim=c(5,0), xlab="AD", ylab="dates")
draw.dates(dates, errors, depths, BCAD=TRUE, add=TRUE, labels=my.labels, mirror=FALSE)

## ----fig.width=4, fig.asp=1---------------------------------------------------
par(bg="black", mar=rep(1, 4))
n <- 50; set.seed(1)
draw.dates(rnorm(n, 2450, 30), rep(25, n), n:1,
  mirror=FALSE, draw.base=FALSE, draw.hpd=FALSE, col="white",
  threshold=1e-28, age.lim=c(2250, 2800), ex=.8)

