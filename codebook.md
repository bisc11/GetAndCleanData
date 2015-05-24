## Origin of data
The tidy data set "TidyData.txt" is derived from the research "Human Activity Recognition Using Smartphones Dataset". See README_Research.txt for more information on the original research including the license.

## Variables explained
From the original data only the features with "mean" or "std" in their name haven been used. So the "TidyData.txt" file contains the following variables:
* Activity. 6 different activities were measured: WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING
* Subject. Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
* Features. Features are normalized and bounded within [-1,1]. The average of the measurements for each feature per activityper subject is computed. 

For the complete list of features see bottom of this file. For an explanation of the features see next section.

## The original feature explanation of used features
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

This is the set of variables that were estimated from these signals.

mean(): Mean value
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
std(): Standard deviation
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable.

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

## Complete list of variabels
"Activity"                             
"Subject"                             
"tBodyAcc-mean()-X"                   
"tBodyAcc-mean()-Y"                   
"tBodyAcc-mean()-Z"                    
"tGravityAcc-mean()-X"                
"tGravityAcc-mean()-Y"                 
"tGravityAcc-mean()-Z"                
"tBodyAccJerk-mean()-X"                
"tBodyAccJerk-mean()-Y"               
"tBodyAccJerk-mean()-Z"                
"tBodyGyro-mean()-X"                  
"tBodyGyro-mean()-Y"                   
"tBodyGyro-mean()-Z"                  
"tBodyGyroJerk-mean()-X"               
"tBodyGyroJerk-mean()-Y"              
"tBodyGyroJerk-mean()-Z"               
"tBodyAccMag-mean()"                  
"tGravityAccMag-mean()"                
"tBodyAccJerkMag-mean()"              
"tBodyGyroMag-mean()"                  
"tBodyGyroJerkMag-mean()"             
"fBodyAcc-mean()-X"                    
"fBodyAcc-mean()-Y"                   
"fBodyAcc-mean()-Z"                    
"fBodyAcc-meanFreq()-X"               
"fBodyAcc-meanFreq()-Y"                
"fBodyAcc-meanFreq()-Z"               
"fBodyAccJerk-mean()-X"                
"fBodyAccJerk-mean()-Y"               
"fBodyAccJerk-mean()-Z"                
"fBodyAccJerk-meanFreq()-X"           
"fBodyAccJerk-meanFreq()-Y"            
"fBodyAccJerk-meanFreq()-Z"           
"fBodyGyro-mean()-X"                   
"fBodyGyro-mean()-Y"                  
"fBodyGyro-mean()-Z"                   
"fBodyGyro-meanFreq()-X"              
"fBodyGyro-meanFreq()-Y"               
"fBodyGyro-meanFreq()-Z"              
"fBodyAccMag-mean()"                   
"fBodyAccMag-meanFreq()"              
"fBodyBodyAccJerkMag-mean()"           
"fBodyBodyAccJerkMag-meanFreq()"      
"fBodyBodyGyroMag-mean()"              
"fBodyBodyGyroMag-meanFreq()"         
"fBodyBodyGyroJerkMag-mean()"          
"fBodyBodyGyroJerkMag-meanFreq()"     
"angle(tBodyAccMean,gravity)"          
"angle(tBodyAccJerkMean),gravityMean)"
"angle(tBodyGyroMean,gravityMean)"     
"angle(tBodyGyroJerkMean,gravityMean)"
"angle(X,gravityMean)"                 
"angle(Y,gravityMean)"                
"angle(Z,gravityMean)"                 
"tBodyAcc-std()-X"                    
"tBodyAcc-std()-Y"                     
"tBodyAcc-std()-Z"                    
"tGravityAcc-std()-X"                  
"tGravityAcc-std()-Y"                 
"tGravityAcc-std()-Z"                  
"tBodyAccJerk-std()-X"                
"tBodyAccJerk-std()-Y"                 
"tBodyAccJerk-std()-Z"                
"tBodyGyro-std()-X"                    
"tBodyGyro-std()-Y"                   
"tBodyGyro-std()-Z"                    
"tBodyGyroJerk-std()-X"               
"tBodyGyroJerk-std()-Y"                
"tBodyGyroJerk-std()-Z"               
"tBodyAccMag-std()"                    
"tGravityAccMag-std()"                
"tBodyAccJerkMag-std()"                
"tBodyGyroMag-std()"                  
"tBodyGyroJerkMag-std()"               
"fBodyAcc-std()-X"                    
"fBodyAcc-std()-Y"                     
"fBodyAcc-std()-Z"                    
"fBodyAccJerk-std()-X"                 
"fBodyAccJerk-std()-Y"                
"fBodyAccJerk-std()-Z"                 
"fBodyGyro-std()-X"                   
"fBodyGyro-std()-Y"                    
"fBodyGyro-std()-Z"                   
"fBodyAccMag-std()"                    
"fBodyBodyAccJerkMag-std()"           
"fBodyBodyGyroMag-std()"               
"fBodyBodyGyroJerkMag-std()" 