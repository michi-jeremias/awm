> lm(prod[2:84]~prod[1:83])

Call:
  lm(formula = prod[2:84] ~ prod[1:83])

Coefficients:
  (Intercept)   prod[1:83]  
-5.920        1.015  

# manuell DF mit drift
lm(diff(prod)[2:length(diff(prod))]~prod[1:(length(prod)-2)]+diff(prod)[1:length(diff(prod))-1])

# gleich wie
summary(ur.df(prod, type="drift", lags=1))

