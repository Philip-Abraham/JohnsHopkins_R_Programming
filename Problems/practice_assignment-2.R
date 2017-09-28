#Example of a function that stores functions:

##function plusFunctions stores two functions:
## plustwo() : sums 2 to the given value
## plusthree() : sums 3 to the given value
plusFunctions <- function (){
        plustwo <- function(y) {
                x <- y + 2
                return(x)
        }
        plusthree <- function(y) {
                x <- y + 3
                return(x)
        }
        #the following line stores the two functions:
        list(plustwo = plustwo, plusthree = plusthree) 
}





# To use the functions stored in the main function, you need to subset the main function. 
## To do this, you need the name of the main function + "$" + the name of the second function + (arguments)
## Example from the function above:

## a <- plusFunctions()
## a$plustwo(5)
### [1] 7
## a$plusthree(5)
### [1] 8

