## Check if raw data directory "./UCI HAR Dataset" and subdirectories exist
## And check if required data files exist
if (!file.exists("UCI HAR Dataset")){
    print("Download and unzip all the raw datafiles in ./UCI HAR Dataset")
} else if (!file.exists("./UCI HAR Dataset/test")){
    print("Raw datafiles incomplete. Download and unzip complete set of files in ./UCI HAR Dataset")
} else if (!file.exists("./UCI HAR Dataset/train")){
    print("Raw datafiles incomplete. Download and unzip complete set of files in ./UCI HAR Dataset")
} else if (!file.exists("./UCI HAR Dataset/activity_labels.txt")){
    print("Raw datafiles incomplete. Download and unzip complete set of files in ./UCI HAR Dataset") 
} else if (!file.exists("./UCI HAR Dataset/features.txt")){
    print("Raw datafiles incomplete. Download and unzip complete set of files in ./UCI HAR Dataset")     
} else if (!file.exists("./UCI HAR Dataset/test/subject_test.txt")){
    print("Raw datafiles incomplete. Download and unzip complete set of files in ./UCI HAR Dataset")       
} else if (!file.exists("./UCI HAR Dataset/test/X_test.txt")){
    print("Raw datafiles incomplete. Download and unzip complete set of files in ./UCI HAR Dataset")    
} else if (!file.exists("./UCI HAR Dataset/test/y_test.txt")){
    print("Raw datafiles incomplete. Download and unzip complete set of files in ./UCI HAR Dataset") 
} else if (!file.exists("./UCI HAR Dataset/train/subject_train.txt")){
    print("Raw datafiles incomplete. Download and unzip complete set of files in ./UCI HAR Dataset")       
} else if (!file.exists("./UCI HAR Dataset/train/X_train.txt")){
    print("Raw datafiles incomplete. Download and unzip complete set of files in ./UCI HAR Dataset")    
} else if (!file.exists("./UCI HAR Dataset/train/y_train.txt")){
    print("Raw datafiles incomplete. Download and unzip complete set of files in ./UCI HAR Dataset") 
} else {
    
## Reading the test and train datafiles
## And reading the features and the activity labels files
subjecttest<-read.table("./UCI HAR Dataset/test/subject_test.txt",header = FALSE)
ytest<-read.table("./UCI HAR Dataset/test/y_test.txt",header = FALSE)
xtest<-read.table("./UCI HAR Dataset/test/X_test.txt",header = FALSE)    
subjecttrain<-read.table("./UCI HAR Dataset/train/subject_train.txt",header = FALSE)
ytrain<-read.table("./UCI HAR Dataset/train/y_train.txt",header = FALSE)
xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt",header = FALSE)
labelfeature<-read.table("./UCI HAR Dataset/features.txt",header = FALSE)
labelactivity<-read.table("./UCI HAR Dataset/activity_labels.txt",header = FALSE)

## Combining test data into a dataframe and combining train data into a dataframe
## First column will be label for activity, second column for subject and 
## subsequent columns for measured data
datatest<-cbind(ytest,subjecttest,xtest)
datatrain<-cbind(ytrain,subjecttrain,xtrain)

## Combining test dataframe and train dataframe into 1 dataframe named "data"
data<-rbind(datatest,datatrain)

## Assigning descriptive variable names to the columns of "data".
datanames<-c("Activity","Subject",as.character(labelfeature[,2]))
names(data)<-datanames

## Assigning descriptive activity names to name the activities in the data set
## in column 1 (label for activity)
data$Activity<-gsub(pattern = "1",replacement = "WALKING",x = data$Activity)
data$Activity<-gsub(pattern = "2",replacement = "WALKING_UPSTAIRS",x = data$Activity)
data$Activity<-gsub(pattern = "3",replacement = "WALKING_DOWNSTAIRS",x = data$Activity)
data$Activity<-gsub(pattern = "4",replacement = "SITTING",x = data$Activity)
data$Activity<-gsub(pattern = "5",replacement = "STANDING",x = data$Activity)
data$Activity<-gsub(pattern = "6",replacement = "LAYING",x = data$Activity)

## Extracting only the measurements on the mean and standard deviation for each measurement. 
## First finding the indices of columnnames with "mean" or "std" in their names.
## Then combining these indices with indices for column 1 "Activity" and 2 "Subject".
## Finally subsetting dataframe "data", so it contains only the measurements on the mean and
## standard deviation.
imean<-grep(pattern = "mean",names(data),ignore.case = TRUE)
istd<-grep(pattern = "std",names(data),ignore.case = TRUE)
i<-c(1,2,imean,istd)
data<-data[,i]

## From the dataframe "data" create a second, independent tidy data set "dataT" with the 
## average of each variable for each activity and each subject.
## To do this, functions of the package dplyr are used. So first load the package.
library("dplyr")
## Group the observations by Activity and by Subject.
## then calculate the mean for each group.
dataT<-group_by(data, Activity, Subject)
dataT<-summarise_each(dataT, funs(mean))

write.table(dataT,file = "TidyData.txt",row.names = FALSE)
}