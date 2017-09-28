# You can pass functions as arguments to other functions just like you can pass
# data to functions.

evaluate <- function(func, dat){
        
                func(sum(dat))
                func(median(dat))
                func(floor(dat))
        }

 


 