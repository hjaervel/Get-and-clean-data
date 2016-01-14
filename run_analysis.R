#R script to perform the analysis for the Getting and cleaning data Course project.
#This script uses the following packages: downloader, dplyr

#setwd("~/Hanna/Coursera/Getting_and_cleaning_data") #Set your working directory
#0. Download, unzip, make train and test data frames
#Download and unzip the dataset
install.packages("downloader")
library(downloader)
url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download(url, dest="dataset.zip", mode="wb") 
unzip ("dataset.zip", exdir = "./")

#Read test dataset into R
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
test  <- cbind(subject_test, y_test, x_test)
test <- data.frame(test)
#Read training dataset into R
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
train <- cbind(subject_train, y_train, x_train)
train <- data.frame(train)


#1. Merge test and train into one dataset
ds <- rbind(train, test)

#2. Keep only variables that are means or standard deviations
#Read features.txt into R
features <- read.table("UCI HAR Dataset/features.txt", sep=" ") 
features <- features[,2]
#Find variable names containing "mean" or "std"
col.nums  <- grep("(.*)std|mean(.*)", features)
col.names <- grep("(.*)std|mean(.*)", features, value=TRUE)
#Keep interesting variables, drop others
ds.reduced <- ds[,c(1,2, col.nums+2)]
colnames(ds.reduced) <- c("Subject", "Activity", col.names)

#3. Use descriptive activity names
#Read activity labels into a character vector 
activity.labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE, stringsAsFactors=FALSE)
labels <- as.character(unlist(activity.labels[2]))

#4.Rename levels
ds.reduced$Activity <- as.factor(ds.reduced$Activity) #Make Activity a factor
levels(ds.reduced$Activity) # Just to check: "1" "2" "3" "4" "5" "6"
levels(ds.reduced$Activity) <- labels
#Just to check: "WALKING" "WALKING_UPSTAIRS" "WALKING_DOWNSTAIRS" "SITTING" "STANDING" "LAYING"  

#5. Create new tidy dataset with means of each activity and subject 
library(dplyr)
ds.averaged <- ds.reduced %>%
  group_by(Subject, Activity) %>%
  summarize_each(funs(mean))

#Write data frames to files
write.table(ds.reduced, "ds.reduced.txt", row.names=FALSE)
write.table(ds.averaged, "ds.averaged.txt", row.names=FALSE)
write.table(col.names, "col.names.txt") #For code book

