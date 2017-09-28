library(datasets)
head(airquality)

# splitting the airquality dataframe by month
s <- split(airquality, airquality$Month)

#lapply finds means of three columns listed below
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")])) #using anoymous functions

# sapply simplies the above into clean matrices instead of returning list
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))
# applying na.rm to sapply removes the missing data values from the columns
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm = TRUE))
