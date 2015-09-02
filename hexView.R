library("hexView") # import eviews data
library("vars") # var, vec estimation

dats12 <- readEViews("data//dats_12.wf1")
colnames(dats12)
dats12 <- dats12[-92,]
dats12 <- dats12[-91,]

y <- diff(log(dats12[,1]),4)
m <- diff(log(dats12[,2]),4)

df <- data.frame(y,m)
summary(VAR(df,type="const",lag.max = 2))




# load awm

awm <- data.frame(read.csv("data/AWMDat_03.csv", header=TRUE, dec=",", sep=","))
which(colnames(awm) == "PYR")
PYR <- awm[,86]

acf(PYR)
acf(PYR, plot=FALSE)
pacf(PYR)
pacf(PYR, plot=FALSE)