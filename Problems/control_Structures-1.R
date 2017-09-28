#This is a valid if/else structure.
x<-100
if(x > 3) {
  y <- 10
} else {
  y <- 0
}
#So is this one.
x<-100
y <- if(x > 3) {
  10
} else {
  0
}

# for loops take an interator variable and assign it successive values from a sequence or vector. For
# loops are most commonly used for iterating over the elements of an object (list, vector, etc.)
# This loop takes the i variable and in each iteration of the loop gives it values 1, 2, 3, ..., 10, and then
# exits.
for(i in 1:10) {
  print(i)
}
#These four loops have the same behavior.
x <- c("a", "b", "c", "d")

for(i in 1:4) {
  print(x[i])
}

for(i in seq_along(x)) {
  print(x[i])
}

for(letter in x) {
  print(letter)
}

for(i in 1:4) print(x[i]) #if u only have one statement in the "for loop", then curly braces not needed.

#for loops can be nested.
#Be careful with nesting though. Nesting beyond 2-3 levels is often very difficult to read/understand.
x <- matrix(1:6, 2, 3)
for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
    print(x[i, j])
  }
}

#While loops begin by testing a condition. If it is true, then they execute the loop body. Once the loop
# body is executed, the condition is tested again, and so forth.
# While loops can potentially result in infinite loops if not written properly. Use with care!
count <- 0
while(count < 10) {
  print(count)
  count <- count + 1}
#Sometimes there will be more than one condition in the test.
#Conditions are always evaluated from left to right.
z <- 5
while(z >= 3 && z <= 10) {
  print(z)
  coin <- rbinom(1, 1, 0.5)
  print("coin=")
  print(coin)
  if(coin == 1) { ## random walk
    z <- z + 1
  } else {
    z <- z - 1
  }
}

#Repeat initiates an infinite loop;The only way to exit a repeat loop is to call break.
x0 <- 1
tol <- 1e-8
repeat {
  x1 <- x0/2.22
  if(abs(x1 - x0) < tol) {
    break
  } else {
    x0 <- x1
  }
}

# next is used to skip an iteration of a loop
x2<-1.5
for(i in 1:100) {
  if(i <= 20) {
    ## Skip the first 20 iterations
    next
  }
  ## Do something here
  x3<-(x2)^.3
}