#Generating Random Numbers From a Linear Model: y = ??0 + ??1x + ??
#where ?? ??? N(0,2^2). Assume x??? N(0,1^2) ??0 = 0.5 ??1 = 2
set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x, y)

#What if x is binary?
set.seed(10)
x <- rbinom(100, 1, 0.5)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x, y)

#Suppose we want to simulate from a Poisson model where: Y ~ Poisson(??)
#log ?? = ??0 + ??1x, and ??0 = 0.5 ??1 = 0.3
# We need to use the rpois function for this
set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3 * x
y <- rpois(100, exp(log.mu))
summary(y)
plot(x, y)

#Generating Random Numbers
#Working with the Normal distributions requires using these four functions:
## dnorm(x, mean = 0, sd = 1, log = FALSE)
## pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
## qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
## rnorm(n, mean = 0, sd = 1)

#Generating Poisson data
rpois(10, 1)

rpois(10, 2)

rpois(10, 20)

ppois(2, 2) ## Cumulative distribution -  Pr(x <= 2)

ppois(4, 2) ## Pr(x <= 4)

ppois(6, 2) ## Pr(x <= 6)

#Random Sampling
# The sample function draws randomly from a specified set of (scalar) objects allowing you to sample
# from arbitrary distributions.
set.seed(1)
sample(1:10, 4)

sample(1:10, 4)

sample(letters, 5)

sample(1:10) ## permutation

sample(1:10)

sample(1:10, replace = TRUE) ## Sample w/replacement

# Now, suppose we want to simulate 100 flips of an unfair two-sided coin. This particular coin has a 0.3
# probability of landing 'tails' and a 0.7 probability of landing 'heads'.
# Let the value 0 represent tails and the value 1 represent heads. Use sample() to draw a sample of size
# 100 from the vector c(0,1), with replacement. Since the coin is unfair, we must attach specific
# probabilities to the values 0 (tails) and 1 (heads) with a fourth argument, prob = c(0.3, 0.7). Assign
# the result to a new variable called flips.
flips<-sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))
# Since we set the probability of landing heads on any given flip to be 0.7, we'd expect approximately 70
# of our coin flips to have the value 1. Count the actual number of 1s contained in flips using the sum() function.
sum(flips)

#A coin flip is a binary outcome (0 or 1) and we are performing 100 independent trials (coin flips), so we
#can use rbinom() to simulate a binomial random variable.
# A binomial random variable represents the number of 'successes' (heads) in a given number of independent
# 'trials' (coin flips). Therefore, we can generate a single random variable that represents the number of
# heads in 100 flips of our unfair coin using rbinom(1, size = 100, prob = 0.7). Note that you only specify
# the probability of 'success' (heads) and NOT the probability of 'failure' (tails).
rbinom(1, size = 100, prob = 0.7)

#Equivalently, if we want to see all of the 0s and 1s, we can request 100 observations, each of size 1,
#with success probability of 0.7. Give it a try, assigning the result to a new variable called flips2.
flips2<- rbinom(100, size = 1, prob = 0.7)
#Now use sum() to count the number of 1s (heads) in flips2. It should be close to 70!
sum(flips2)

# Generate 5 random values from a Poisson distribution with mean 10
rpois(5,10)
#what if we want to simulate 100 *groups* of random numbers, each containing 5 values generated
#from a Poisson distribution with mean 10?
# use replicate(100, rpois(5, 10)) to perform this operation 100 times. Store the result in a new
# variable called my_pois.
my_pois<-replicate(100, rpois(5, 10))
my_pois
#replicate() created a matrix, each column of which contains 5 random numbers generated from a Poisson
#distribution with mean 10. Now we can find the mean of each column in my_pois using the colMeans()
#function. Store the result in a variable called cm.
cm<-colMeans(my_pois)
#And let's take a look at the distribution of our column means by plotting a histogram with hist(cm)
hist(cm)
