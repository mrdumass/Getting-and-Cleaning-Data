Getting-and-Cleaning-Data
=========================

in this project i read in the files from the source provided. 
here is a description of that data set:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
here is the data files themselves:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

the goal of the assignment was to take those files and first put them into one large single data set. The was done with the following sequence.
## This code will read in the raw data                   ##
## next it will turn that dat into a single data.frame   ##
## then it will clean up that data frame to include only ##
## those thing we are interested in and change the names ##
## of the columns so they are easy to understand         ##
## read in the .test and train data file                 ##
## rbind all data test and train data set together into one set ##
## rbind all data test and train data set together into one set ##

next it cbinds all those columns together, and removes from the dataset any unit columns which are not part of a mean and std pair. this means i did not include the meanFreq columns because they did not have a standard deviation column to go along with them. 

that really completed the big data set.

for the tidy data set i used the aggrgate function to get the means of the varous mean and std columns for each subject and activity combination. i also spent some time cleaning up the column names and the activity names.
