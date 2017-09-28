makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) { #set is a function that changes the vector stored in the main function
                x <<- y #"x <<- y" substitutes the vector x with y (the input) in the main function (makeVector). 
                m <<- NULL
        }
        get <- function() x #get is a function that returns the vector x stored in the main function. Doesn't require any input.
        
## setmean and getmean are functions very similar to set and get. 
## They don't calculate the mean, they simply store the value of the input in a variable m into 
## the main function makeVector (setmean) and return it (getmean).        
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

#Input of cachemean is the object where makeVector is stored.
cachemean <- function(x, ...) {
       
#The first thing cachemean does is to verify the value m, stored previously with getmean, exists and 
#is not NULL. If it exists in memory, it simply returns a message and the value m, that is supposed to be the mean, but not necessarily.        
         m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
#If it was the case, "return(m)" would have ended the function. So everything that follows 
#this if() is a sort of else {}. data gets the vector stored with makeVector, m calculates the mean of
#the vector and x$setmean(m) stores it in the object generated assigned with makeVector.         
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}