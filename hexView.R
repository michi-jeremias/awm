library("hexView") # import eviews data
library("vars") # var, vec estimation

dats12 <- readEViews("data//dats_12.wf1")
colnames(dats12)

y <- diff(log(dats12[,1]),4)
m <- diff(log(dats12[,2]),4)