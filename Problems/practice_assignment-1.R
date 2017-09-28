dataset_url <- "http://s3.amazonaws.com/practice_assignment/diet_data.zip"
download.file(dataset_url, "diet_data.zip")
unzip("diet_data.zip", exdir = "diet_data")
list.files("diet_data")
andy <- read.csv("diet_data/Andy.csv")
head(andy)
length(andy$Day)
dim(andy)
names(andy)
str(andy)
summary(andy)

#Let's assign Andy's starting and ending weight to vectors:
andy_start <- andy[1, "Weight"]
andy_end <- andy[30, "Weight"]
#We can find out how much weight he lost by subtracting the vectors:
andy_loss <- andy_start - andy_end
andy_loss

#Let's take the output of list.files() and store it:
        files <- list.files("diet_data")
files

#Knowing that 'files' is now a list of the contents of 'diet_data' in alphabetical order, 
#we can call a specific file by subsetting it:
        files[1]
        files[2]
        files[3:5]       

#Let's take a quick look at John.csv:
#Before we do that,We need to append the directory to the beginning of the file name.
#In list.files(),there is an argument called full.names that will append (technically prepend)
#the path to the file name for us.
        files_full <- list.files("diet_data", full.names=TRUE)
        files_full

head(read.csv(files_full[3]))

#To create one big data frame with everybody's data in it, We'd do that with rbind and a loop.
#This line of code took our existing data frame, Andy, and added the rows from David.csv to the end of it.
andy_david <- rbind(andy, read.csv(files_full[2]))

#Create a subset of the data frame that shows us just the 25th day for Andy and David.
day_25 <- andy_david[which(andy_david$Day == 25), ]
day_25

#Use For Loop to append everybody's data to the same data frame.
#But, first create an empty data frame called 'dat' before running the loop.
dat <- data.frame()
for (i in 1:5) {
        dat <- rbind(dat, read.csv(files_full[i]))

}
str(dat)

#Find the median weight for all the data. We need to get rid of those NA's for the purposes of calculating the median.
median(dat$Weight, na.rm=TRUE)
#The median weight of day 30
dat_30 <- dat[which(dat[, "Day"] == 30),]
dat_30
median(dat_30$Weight)

#Build a function that will return the median weight of a given day.
weightmedian <- function(directory, day) {
        files_list <- list.files(directory, full.names = TRUE) #creates a list of files
        dat <- data.frame() #creates an empty data frame
        for (i in 1:5) {
                # loops through the files, rbinding them together
                dat <- rbind(dat, read.csv(files_list[i]))
        }
        dat_subset <- dat[which(dat[, "Day"] == day), ] #subsets the rows that match the 'day' argument
        median(dat_subset[, "Weight"], na.rm = TRUE) #identifies the median weight
        # while stripping out the NAs
}