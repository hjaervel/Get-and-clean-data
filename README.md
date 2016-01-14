# Get-and-clean-data
Getting and cleaning data, Course project
=========================================
This dataset was created by joining together and cleaning the test and training datasets of the 
Human Activity Recognition Using Smartphones Dataset, Version 1.0, described at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original dataset is available here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Contents of this Github repository:
===================================
- ‘run_analysis.R’: R script for performing the analysis and creating the tidy datasets
   ds.reduced and ds.averaged, as described in the project assignment.
- ‘CodeBook.md’:Describes the variables, the data, and transformations or work that        
   was performed to clean up the original dataset  
- 'README.md’: Describes the files in the repository and how they are connected

run_analysis.R
==============
The R script run_analysis.R uses the dplyr and downloader packages of R. It downloads the original dataset from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip , 
unzips it and reads the following data into R:
x_test         test set
y_test         test labels
subject_test   subject information for the test set
x_train        training set
y_train        training labels
subject_train  subject information, training set

The script merges the test and the training sets into one data frame and keeps the variables specified in the
course assignment. The the script inserts diescriptive activity and variable names to create a tidy dataset.
Finally, a new data frame is created using the dplyr package, which contains the averaged measurement for each
subject and activity. 

The clean datasets are described in CodeBook.md.
