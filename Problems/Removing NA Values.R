x <- c(1, 2, NA, 4, NA, 5)
x
bad <- is.na(x)
bad
x<-x[!bad]
x


#What if there are multiple things and you want to take the subset with no missing values?
#Then, use the "complete.cases" function
X<- c(1, 2, NA, 4, NA, 5)
X
Y <- c("a", "b", NA, "d", NA, "f")
Y
good <- complete.cases(X, Y)
good
X[good]
Y[good]
