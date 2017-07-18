---
title: "Codebook"
author: "E Balanou"
date: "16 July 2017"
output: html_document
---

#  DATA DICTIONARY - tidyData
The original dataset had data for train and test purposes: train data and test data. 

Note from original dataset on the features: 
The features selected for the original database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 

- Features are normalized and bounded within [-1,1].- 

In the tidyData the train and test subject ids, and the train and test descriptive activity labels were merged respectivily and in that order.
The mean of the original features was calculated and placed in the column with the same name of each variable. 


## Column names of the dataset:

* mergedTrainTestSubjects:  Subject's id (number). Merged so that first are the subjects from the train dataset and then the subjects from the test dataset.IDs range from 1:30 (30 subjects in total)           
* descriptiveMergedTrainTestActivities: Descriptive activity labels: LAYING, SITTING,STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
* 1 tBodyAcc-mean()-X:   Mean value of the mean value of the body linear acceleration along x axis              
* 2 tBodyAcc-mean()-Y:   Mean value of the mean value of the body linear acceleration along y axis        
* 3 tBodyAcc-mean()-Z:   Mean value of the mean value of thebody linear acceleration along z axis              
* 4 tBodyAcc-std()-X :  Mean value of the Standard deviation of the body linear acceleration along x axis           
* 5 tBodyAcc-std()-Y :  Mean value of the Standard deviation of the body linear acceleration along y axis
* 6 tBodyAcc-std()-Z :  Mean value of the Standard deviation of the body linear acceleration along z axis 
* 41 tGravityAcc-mean()-X :Mean value of the  Mean of the gravity acceleration signal along x axis          
* 42 tGravityAcc-mean()-Y :Mean value of the  Mean of the gravity acceleration signal along y axis           
* 43 tGravityAcc-mean()-Z :Mean value of the  Mean of thegravity acceleration signal along z axis          
* 44 tGravityAcc-std()-X : Mean value of the  Standard deviation of the gravity acceleration signal along x axis         
* 45 tGravityAcc-std()-Y : Mean value of the  Standard deviation of the gravity acceleration signal along y axis          
* 46 tGravityAcc-std()-Z : Mean value of the  Standard deviation of the gravity acceleration signal along z axis
* 81 tBodyAccJerk-mean()-X :Mean value of the  Mean value of the body  linear acceleration Jerk signal along x axis           
* 82 tBodyAccJerk-mean()-Y :Mean value of the  Mean value of the body  linear acceleration Jerk signal along y axis           
* 83 tBodyAccJerk-mean()-Z :Mean value of the  Mean value of the body  linear acceleration Jerk signal along z axis      
* 84 tBodyAccJerk-std()-X:  Mean value of the  Standard deviation of the body Jerk signal along x axis, derived from the linear acceleration      
* 85 tBodyAccJerk-std()-Y : Mean value of the  Standard deviation of the  body  Jerk signal along y axis, derived from the linear acceleration           
* 86 tBodyAccJerk-std()-Z : Mean value of the  Standard deviation of the  body  Jerk signal along z axis, derived from the linear acceleration 
* 121 tBodyGyro-mean()-X : Mean value of the  Mean value of the body angular velocity  along x axis
* 122 tBodyGyro-mean()-Y :Mean value of the  Mean value of the body angular velocity  along y axis
* 123 tBodyGyro-mean()-Z :Mean value of the  Mean value of the body angular velocity  along z axis
* 124 tBodyGyro-std()-X : Mean value of the Standard deviation of the body angular velocity  along x axis
* 125 tBodyGyro-std()-Y : Mean value of the Standard deviation of the body angular velocity  along y axis
* 126 tBodyGyro-std()-Z : Mean value of the Standard deviation of the body  angular velocity  along z axis          
* 161 tBodyGyroJerk-mean()-X :Mean value of the  Mean value of the body Jerk signal along x axis, derived from the  angular velocity    
* 162 tBodyGyroJerk-mean()-Y: Mean value of the Mean value of the body Jerk signal along y axis, derived from the  angular velocity     
* 163 tBodyGyroJerk-mean()-Z: Mean value of the body Jerk signal along z axis, derived from the  angular velocity   
* 164 tBodyGyroJerk-std()-X: Mean value of the Standard deviation of the body Jerk signal along x axis, derived from the  angular velocity           
* 165 tBodyGyroJerk-std()-Y: Mean value of the Standard deviation of the body Jerk signal along y axis, derived from the  angular velocity             
* 166 tBodyGyroJerk-std()-Z: Mean value of the  Standard deviation of the body Jerk signal along z axis, derived from the  angular velocity          
* 201 tBodyAccMag-mean(): Mean value of the  Mean value of the magnitude of the  body  linear acceleration J signal           
* 202 tBodyAccMag-std() :    Mean value of the Standard deviation of the   magnitude of the  body  linear acceleration Jsignal        
* 214 tGravityAccMag-mean(): Mean value of the  Mean value of the  magnitude of the gravity acceleration signal       
* 215 tGravityAccMag-std():  Mean value of the  Standard deviation of the gravity acceleration signal       
* 227 tBodyAccJerkMag-mean(): Mean value of the  Mean value of the  magnitude of the body  linear acceleration Jerk signal      
* 228 tBodyAccJerkMag-std() : Mean value of the  Standard deviation of the magnitude of the body  linear acceleration Jerk signal       
* 240 tBodyGyroMag-mean(): Mean value of the  Mean value of the magnitude of the body angular velocity            
* 241 tBodyGyroMag-std(): Mean value of the  Standard deviation of the  magnitude of the body Jerk signal derived from the angular velocity          
* 253 tBodyGyroJerkMag-mean(): Mean value of the  Mean value of the magnitude of the body Jerk signal derived from the angular velocity
* 254 tBodyGyroJerkMag-std(): Mean value of the  Standard deviation of the  magnitude of the body Jerk signal derived from the angular velocity     
* 266 fBodyAcc-mean()-X: Mean value of the  Mean value of the  Fast Fourier Transform (FFT) of the tBodyAcc-mean()-X              
* 267 fBodyAcc-mean()-Y:Mean value of the   Mean value of the   Fast Fourier Transform (FFT) of the tBodyAcc-mean()-Y              
* 268 fBodyAcc-mean()-Z: Mean value of the  Mean value of the     Fast Fourier Transform (FFT) of the tBodyAcc-mean()-Z            
* 269 fBodyAcc-std()-X:Mean value of the Standard deviation of the  Fast Fourier Transform (FFT) of the tBodyAcc-std()-X              
* 270 fBodyAcc-std()-Y: Mean value of the Standard deviation of the  Fast Fourier Transform (FFT) of the tBodyAcc-std()-Y               
* 271 fBodyAcc-std()-Z: Mean value of the Standard deviation of the   Fast Fourier Transform (FFT) of the tBodyAcc-std()-Z              
* 345 fBodyAccJerk-mean()-X:Mean value of the  Mean value of the Fast Fourier Transform (FFT) of the tBodyAccJerk-mean()-X
* 346 fBodyAccJerk-mean()-Y: Mean value of the   Mean value of the   Fast Fourier Transform (FFT)of the tBodyAccJerk-mean()-Y       
* 347 fBodyAccJerk-mean()-Z:  Mean value of the   Fast Fourier Transform (FFT) of the tBodyAccJerk-mean()-Z       
* 348 fBodyAccJerk-std()-X: Mean value of the Standard deviation of the Fast Fourier Transform (FFT) of the tBodyAccJerk-std()-X        
* 349 fBodyAccJerk-std()-Y: Mean value of the Standard deviation of the Fast Fourier Transform (FFT) of the tBodyAccJerk-std()-Y        
* 350 fBodyAccJerk-std()-Z: Standard deviation of the  Fast Fourier Transform (FFT) of the tBodyAccJerk-std()-Z 
* 424 fBodyGyro-mean()-X: Mean value of the  Mean value of the  Fast Fourier Transform (FFT)  of the  tBodyGyro-mean()-X           
* 425 fBodyGyro-mean()-Y: Mean value of the   Mean value of the  Fast Fourier Transform (FFT) of the  tBodyGyro-mean()-Y            
* 426 fBodyGyro-mean()-Z: Mean value of the   Mean value of the  Fast Fourier Transform (FFT)  of the  tBodyGyro-mean()-Z            
* 427 fBodyGyro-std()-X: Mean value of the Standard deviation of the  Fast Fourier Transform (FFT) of the tBodyGyro-std()-X             
* 428 fBodyGyro-std()-Y: Mean value of the Standard deviation of the  Fast Fourier Transform (FFT) of the tBodyGyro-std()-Y             
* 429 fBodyGyro-std()-Z:  Mean value of the Standard deviation of the  Fast Fourier Transform (FFT) of the tBodyGyro-std()-Z            
* 503 fBodyAccMag-mean():  Mean value of the   Mean value of the Fast Fourier Transform (FFT)  of the  tBodyAccMag-mean()         
* 504 fBodyAccMag-std() : Mean value of the Standard deviation of the  Fast Fourier Transform (FFT) of the tBodyAccMag-std()            
* 516 fBodyBodyAccJerkMag-mean(): Mean value of the  Mean value of the  Fast Fourier Transform (FFT) of the tBodyBodyAccJerkMag-mean()
* 517 fBodyBodyAccJerkMag-std(): Mean value of the Standard deviation of the Fast Fourier Transform (FFT) of the tBodyBodyAccJerkMag-std()
* 529 fBodyBodyGyroMag-mean():Mean value of the  Mean value of the Fast Fourier Transform (FFT) of the tBodyBodyGyroMag-mean()
* 530 fBodyBodyGyroMag-std(): Mean value of the Standard deviation of the      Fast Fourier Transform (FFT) of the tBodyBodyGyroMag-std()
* 542 fBodyBodyGyroJerkMag-mean(): Mean value of the Mean value of the Fast Fourier Transform (FFT) of the tBodyBodyGyroJerkMag-mean()
* 543 fBodyBodyGyroJerkMag-std(): Mean value of the Standard deviation of the  Fast Fourier Transform (FFT) of the tBodyBodyGyroJerkMag-std()


Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
For more information about this dataset contact: activityrecognition@smartlab.ws and evangelia[dot] balanou [at] gmail [dot] com

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
