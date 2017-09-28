library(datasets)
data(mtcars)

#calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)
#method -1
tapply(mtcars$mpg, mtcars$cyl, mean)
#method -2
with(mtcars, tapply(mpg, cyl, mean))
#method -3
sapply(split(mtcars$mpg, mtcars$cyl), mean)

# what is the absolute difference between the average horsepower of 4-cylinder cars and 
# the average horsepower of 8-cylinder cars?
avgHP<-tapply(mtcars$hp, mtcars$cyl, mean)
avgHPdiff<-avgHP[3]-avgHP[1]


