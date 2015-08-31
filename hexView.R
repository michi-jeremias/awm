library("hexView") # import eviews data
library("Vars") # var, vec estimation

readEViews("data//dats_12.wf1")
colnames(dats12)

y <- diff(log(dats12[,1]),4)
m <- diff(log(dats12[,2]),4)