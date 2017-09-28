#A way to pass data around is by deparsing the R object with dput 
#and reading it back in using dget.

y <- data.frame(a = 1, b = "a")
dput(y)

dput(y, file = "y.R")
new.y <- dget("y.R")
new.y