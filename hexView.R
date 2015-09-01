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