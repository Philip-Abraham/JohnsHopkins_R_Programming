# You can pass functions as arguments to other functions just like you can pass
# data to functions. Let's say you define the following functions:

add_two_numbers <- function(num1, num2){
   num1 + num2
 }

 multiply_two_numbers <- function(num1, num2){
	num1 * num2
 }

 some_function <- function(func){
   func(2, 4)
 }