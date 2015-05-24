## Introduction
This README file tell you more about my submission of the course project of the Getting and Cleaning Data course on Coursera. First I will explain a little about how run-analysis works. 
Don't forget to check the prerequisites before you run run-analysis!!

## What does run_analysis.R do?
Step1: Merges the training and the test sets to create one data set.
* First it does a check to see if the raw data directory "./UCI HAR Dataset" and subdirectories exist and if required data files exist.
* Then the test and train datafiles are read. Also the features and the activity labels files are read.
* The 3 files with test data are combined into a dataframe and the same is done foor the train data. The first column will contain the activity (from the "y" file), second column the subject (from the "subject" file) and 
subsequent columns the measured data (from the "X" file).
* The test dataframe and train dataframe are combined into 1 dataframe named "data". This is done by adding the rows of the train data to the test data as they have the same format. "data" has now 10299 observations/rows and 563 variables/columns.

Step 4: Appropriately labels the data set with descriptive variable names.
And step 3: Uses descriptive activity names to name the activities in the data set
* It assigns descriptive variable names to the columns of "data", using the names of the variables in the features file.
* Then it assings descriptive activity names to name the activities in the data set in column 1, using the names from the activity_labels file.

Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
* First find the indices of columnnames with "mean" or "std" in their names. Search is not cases sensitive.
* Then combine these indices together and add the indices for column 1 "Activity" and 2 "Subject".
* Finally subsetting dataframe "data", so it contains only the measurements with mean and
standard deviation. Now "data" has 10299 observations/rows and 88 variables/columns.

Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* To do this, functions of the package "dplyr" are used. So first load the package.
* Group the observations by Activity and by Subject (in a dataframe "dataT")
* Then calculate the mean for each group.
* Write "dataT" to a textfile.

## Prerequisites befor using run_analysis.R
* run-analysis will use functions of the "dplyr"" package. You have to install this package before running it.
* Check that run-analysis is in your working directory.
* Download the datafiles from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
* Unzip the datafiles. This will create a data directory called "./UCI HAR Dataset" (which is a subdirectory 
of your working directory) with the raw data.

So running list.files() should at least give:
[1] "run_analysis.R"                                   
[2] "UCI HAR Dataset"       
And running list.dirs() should at least give:
[1] "."                                        "./UCI HAR Dataset"                       
[3] "./UCI HAR Dataset/test"                   "./UCI HAR Dataset/train"           

## Tidy dataset
The tidy dataset is named "dataT", with "T" for tidy.
####The tidy data set contains the average of each variable for each activity and each subject.
The variables were selected by searching their names (as given in the features.txt file) for the text strings "mean" or "std". The search was NOT case sensitive. All variables found this way are included in the the tidy dataset, and their average (computed with the mean function) is given per activity per subject.
In the Codebook.md a description of each variable can be found.

## Codebook
In the codebook you can find the specification of each variable of the tidy set "dataT".
All the measurements are mean values!

## Reading the tidy dataset into R
You can read the tidy set "TidyData.txt", wich is uploaded in the first part of this Coursera project, with the following command:

dataT <- read.table("TidyData.txt", header = TRUE) 

Provided you stored TidyData.txt in your working directory. Otherwise change "TidyData.txt" to include the complete path to the file.

## Checking values in tidy dataset "dataT"
After running run_analysis, you can check whether the grouping by Activity and by Subject and subsequent calculating of the average for each measurement was done correctly, you can compare the data in "dataT" (the tidy dataset) with a calculation of the mean from the original data "data" (the combined data of test and train).
Replace id, label, variable with the values you want to check.
Compare
mean(data[data$Subject==id & data$Activity==label, variable])
with
dataT[dataT$Subject==id & dataT$Activity==label, variable]
They should be the same.

## Thanks to
Thanks to everybody who contributed to the various discussion forums of the Getting and Cleaning Data course. That helped me a lot! Particulary with the last step 5, creating the tidy dataset.