# Codebook for the Mean_Std and AverageData data sets.

This Codebook describes the variables, the data, and any transformations or work that was performed to clean up the data recollected at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

## Mean_Std

This data set is the result of merging the train and test data sets of the experiment called "Human Activity Recognition Using Smartphones Dataset", and extracting only the measurements on the mean() and std() for each measurement. This data set uses descriptive activity names to name the activities in the data set and appropriately labels the data set with descriptive variable names.

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

If you want to know more information about the original data set, you can visit the [site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was obtained, 
and/or you can download the [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and read the following files: README.txt and features_info.txt. 

This is the list of variables in the Mean_Std data set:

 [1] "SubjectId”: A number from 1 to 30 that identifies the subject who performed the activity for each window sample.                                
 [2] "ActivityId”: Is a factor variable that identifies the activity that the subject was performed when the measure was taken ((WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
 
The following 66 variables were selected for this database from the accelerometer and gyroscope 3-axial raw signals TimeAccelerometer_XYZ and TimeGyroscope_XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAccelerometer_XYZ and TimeGravityAccelerometer_XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk_XYZ and TimeBodyGyroJerk_XYZ). Also, the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMag, TimeGravityAccelerometerMag, TimeBodyAccelerometerJerkMag, TimeBodyGyroscopeMag, TimeBodyGyroscopeJerkMag). 

Finally, a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAccelerometer_XYZ, FrequencyBodyAccelerometerJerk_XYZ, FrequencyBodyGyroscope_XYZ, FrequencyBodyAccJerkMag, FrequencyBodyGyroscopeMag, FrequencyBodyGyroscopeJerkMag. 

These signals were used to estimate variables of the feature vector for each pattern:  
'_XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

This data set only includes the mean value (mean()) and standard deviation (std()) estimated from these signals.
 
 [3] "TimeBodyAccelerometer_Mean_X"                
 [4] "TimeBodyAccelerometer_Mean_Y"                 
 [5] "TimeBodyAccelerometer_Mean_Z"                 
 [6] "TimeGravityAccelerometer_Mean_X"              
 [7] "TimeGravityAccelerometer_Mean_Y"              
 [8] "TimeGravityAccelerometer_Mean_Z"              
 [9] "TimeBodyAccelerometerJerk_Mean_X"             
[10] "TimeBodyAccelerometerJerk_Mean_Y"             
[11] "TimeBodyAccelerometerJerk_Mean_Z"             
[12] "TimeBodyGyroscope_Mean_X"                     
[13] "TimeBodyGyroscope_Mean_Y"                     
[14] "TimeBodyGyroscope_Mean_Z"                     
[15] "TimeBodyGyroscopeJerk_Mean_X"                 
[16] "TimeBodyGyroscopeJerk_Mean_Y"                 
[17] "TimeBodyGyroscopeJerk_Mean_Z"                 
[18] "TimeBodyAccelerometerMag_Mean"                
[19] "TimeGravityAccelerometerMag_Mean"             
[20] "TimeBodyAccelerometerJerkMag_Mean"            
[21] "TimeBodyGyroscopeMag_Mean"                    
[22] "TimeBodyGyroscopeJerkMag_Mean"                
[23] "FrequencyBodyAccelerometer_Mean_X"            
[24] "FrequencyBodyAccelerometer_Mean_Y"            
[25] "FrequencyBodyAccelerometer_Mean_Z"            
[26] "FrequencyBodyAccelerometerJerk_Mean_X"        
[27] "FrequencyBodyAccelerometerJerk_Mean_Y"        
[28] "FrequencyBodyAccelerometerJerk_Mean_Z"        
[29] "FrequencyBodyGyroscope_Mean_X"                
[30] "FrequencyBodyGyroscope_Mean_Y"                
[31] "FrequencyBodyGyroscope_Mean_Z"                
[32] "FrequencyBodyAccelerometerMag_Mean"           
[33] "FrequencyBodyBodyAccelerometerJerkMag_Mean"   
[34] "FrequencyBodyBodyGyroscopeMag_Mean"           
[35] "FrequencyBodyBodyGyroscopeJerkMag_Mean"       
[36] "TimeBodyAccelerometer_StadDev_X"              
[37] "TimeBodyAccelerometer_StadDev_Y"              
[38] "TimeBodyAccelerometer_StadDev_Z"              
[39] "TimeGravityAccelerometer_StadDev_X"           
[40] "TimeGravityAccelerometer_StadDev_Y"           
[41] "TimeGravityAccelerometer_StadDev_Z"           
[42] "TimeBodyAccelerometerJerk_StadDev_X"          
[43] "TimeBodyAccelerometerJerk_StadDev_Y"          
[44] "TimeBodyAccelerometerJerk_StadDev_Z"          
[45] "TimeBodyGyroscope_StadDev_X"                  
[46] "TimeBodyGyroscope_StadDev_Y"                  
[47] "TimeBodyGyroscope_StadDev_Z"                  
[48] "TimeBodyGyroscopeJerk_StadDev_X"              
[49] "TimeBodyGyroscopeJerk_StadDev_Y"              
[50] "TimeBodyGyroscopeJerk_StadDev_Z"              
[51] "TimeBodyAccelerometerMag_StadDev"             
[52] "TimeGravityAccelerometerMag_StadDev"          
[53] "TimeBodyAccelerometerJerkMag_StadDev"         
[54] "TimeBodyGyroscopeMag_StadDev"                 
[55] "TimeBodyGyroscopeJerkMag_StadDev"             
[56] "FrequencyBodyAccelerometer_StadDev_X"         
[57] "FrequencyBodyAccelerometer_StadDev_Y"         
[58] "FrequencyBodyAccelerometer_StadDev_Z"         
[59] "FrequencyBodyAccelerometerJerk_StadDev_X"     
[60] "FrequencyBodyAccelerometerJerk_StadDev_Y"     
[61] "FrequencyBodyAccelerometerJerk_StadDev_Z"     
[62] "FrequencyBodyGyroscope_StadDev_X"             
[63] "FrequencyBodyGyroscope_StadDev_Y"             
[64] "FrequencyBodyGyroscope_StadDev_Z"             
[65] "FrequencyBodyAccelerometerMag_StadDev"        
[66] "FrequencyBodyBodyAccelerometerJerkMag_StadDev"
[67] "FrequencyBodyBodyGyroscopeMag_StadDev"        
[68] "FrequencyBodyBodyGyroscopeJerkMag_StadDev"    


This data set is created from Mean_Std and it stores the average of each variable for each activity and each subject. 
The descriptions for each variable are the same as the Mean_Std data set (previously explained above), but the mean() function was applied to each variable grouping by activity and subject.



