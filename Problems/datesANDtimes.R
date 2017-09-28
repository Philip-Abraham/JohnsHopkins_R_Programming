##Dates use the Date class
##Times use the POSIXct and POSIXlt class

#Times can be coerced from a character string using the as.POSIXlt or as.POSIXct function.
x <- Sys.time()
x
p <- as.POSIXlt(x)
names(unclass(p))
p$sec

#You can also use the POSIXct format.
x <- Sys.time()
x ## Already in 'POSIXct' format
unclass(x)
#convert to POSIXlt so you can use the $ operator
p <- as.POSIXlt(x)
p$sec

#Use the strptime function in case your dates are written in a different format
datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x

#You can use mathematical operations on dates and times.
x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")
x <- as.POSIXlt(x)
x-y

#Even keeps track of leap years, leap seconds, daylight savings, and time zones.
x <- as.Date("2012-03-01") 
y <- as.Date("2012-02-28") ## 2012 is a Leap year
x-y

x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 01:00:00", tz = "GMT") ##Greenwich Time Zone
y-x
