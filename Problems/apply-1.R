
# lapply Examples
x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)

# You create a function within lapply to extract the first column of both matrices in a list
#lapply and friends make heavy use of anonymous functions
x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2))
lapply(x, function(elt) elt[,1]) # uses anonymous functions

# using lapply with random number generator to produce random values between 1 & 10
lapply(x, runif, min = 0, max = 10)

# using lapply with ransom number generator to produce random values will return  a list
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)

# using sapply with ransom number generator to produce random values will return vectors of length 1
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
sapply(x, mean)

#Using apply to find sum of each column in matrix
y<-matrix(1:6,2,3)
apply(y,2,sum)

#Using apply to find sum of each row in matrix
y<-matrix(1:6,2,3)
apply(y,1,sum)

#Using apply to find Quantiles of the rows of a matrix
x <- matrix(rnorm(200), 20, 10)
apply(x, 1, quantile, probs = c(0.25, 0.75))

# The following is tedious to type : list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))
# so you use mapply to do the same
mapply(rep, 1:4, 4:1)

#tapply is used to apply a function over subsets of a vector
x <- c(1:10, 11:20, 21:30)
f<-gl(3, 10) # generates 3 levels replicating 10 times each
tapply(x, f, mean)

#split takes a vector or other objects and splits it into groups determined by a factor 
#or list of factors. Split always returns a list
z<-c(1:10,21:30,31:40)
f<-gl(3, 10) # generates 3 levels replicating 10 times each
split(z,f)
#A common idiom is split followed by an lapply
lapply(split(z, f), mean)
