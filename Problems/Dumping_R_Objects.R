#Multiple objects can be deparsed using the dump function and read back in using source

x <- "foo"
y <- data.frame(a = 1, b = "a")
dump(c("x", "y"), file = "data.R")

#Remove x & y variab les from workspace
rm(x, y)

#read back x & y  from file using the source function
source("data.R")
x
y
