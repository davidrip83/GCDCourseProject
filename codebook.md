#Code book Course Project
Original data can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

This data describes the **average values** of different measurements from the embedded accelerometer and gyroscope of a waist-mounted smartphone of various subjects performing activities of daily living.

##Variables included
### Dimension variables

- Subject: number of person wearing smartphone and performing activities                           
- Activity: description of activity                            

###Measurement variables
Overall naming convention of the measurement variables is as follows:

[Frequency/Time domain variable][type of measurement]-[Descriptive]-[Dimension]

Frequency vs Time domain variable:
- f: frequency domain variable
- t: time domain variable

Type of measurement: for example Body Acceleration or Gravity Acceleration

Descriptive:
- Mean: average of type of measurement
- Std: standard deviation of type of measurement

Dimensions:
- X: x-axis
- Y: y-axis
- Z: z-axis

All measurement variables:
 - "tBodyAcc-mean()-Y"                    
 - "tBodyAcc-mean()-Z"                   
 - "tGravityAcc-mean()-X"                 
 - "tGravityAcc-mean()-Y"                
 - "tGravityAcc-mean()-Z"                 
 - "tBodyAccJerk-mean()-X"               
 - "tBodyAccJerk-mean()-Y"                
 - "tBodyAccJerk-mean()-Z"               
 - "tBodyGyro-mean()-X"                   
 - "tBodyGyro-mean()-Y"                  
 - "tBodyGyro-mean()-Z"                   
 - "tBodyGyroJerk-mean()-X"              
 - "tBodyGyroJerk-mean()-Y"               
 - "tBodyGyroJerk-mean()-Z"              
 - "tBodyAccMag-mean()"                   
 - "tGravityAccMag-mean()"               
 - "tBodyAccJerkMag-mean()"               
 - "tBodyGyroMag-mean()"                 
 - "tBodyGyroJerkMag-mean()"              
 - "fBodyAcc-mean()-X"                   
 - "fBodyAcc-mean()-Y"                    
 - "fBodyAcc-mean()-Z"                   
 - "fBodyAcc-meanFreq()-X"                
 - "fBodyAcc-meanFreq()-Y"               
 - "fBodyAcc-meanFreq()-Z"                
 - "fBodyAccJerk-mean()-X"               
 - "fBodyAccJerk-mean()-Y"                
 - "fBodyAccJerk-mean()-Z"               
 - "fBodyAccJerk-meanFreq()-X"            
 - "fBodyAccJerk-meanFreq()-Y"           
 - "fBodyAccJerk-meanFreq()-Z"            
 - "fBodyGyro-mean()-X"                  
 - "fBodyGyro-mean()-Y"                   
 - "fBodyGyro-mean()-Z"                  
 - "fBodyGyro-meanFreq()-X"               
 - "fBodyGyro-meanFreq()-Y"              
 - "fBodyGyro-meanFreq()-Z"               
 - "fBodyAccMag-mean()"                  
 - "fBodyAccMag-meanFreq()"               
 - "fBodyBodyAccJerkMag-mean()"          
 - "fBodyBodyAccJerkMag-meanFreq()"       
 - "fBodyBodyGyroMag-mean()"             
 - "fBodyBodyGyroMag-meanFreq()"          
 - "fBodyBodyGyroJerkMag-mean()"         
 - "fBodyBodyGyroJerkMag-meanFreq()"      
 - "angle(tBodyAccMean,gravity)"         
 - "angle(tBodyAccJerkMean),gravityMean)"  
 - "angle(tBodyGyroMean,gravityMean)"    
 - "angle(tBodyGyroJerkMean,gravityMean)" 
 - "angle(X,gravityMean)"                
 - "angle(Y,gravityMean)"                 
 - "angle(Z,gravityMean)"                
 - "tBodyAcc-std()-X"                     
 - "tBodyAcc-std()-Y"                    
 - "tBodyAcc-std()-Z"                     
 - "tGravityAcc-std()-X"                 
 - "tGravityAcc-std()-Y"                  
 - "tGravityAcc-std()-Z"                 
 - "tBodyAccJerk-std()-X"                 
 - "tBodyAccJerk-std()-Y"                
 - "tBodyAccJerk-std()-Z"                 
 - "tBodyGyro-std()-X"                   
 - "tBodyGyro-std()-Y"                    
 - "tBodyGyro-std()-Z"                   
 - "tBodyGyroJerk-std()-X"                
 - "tBodyGyroJerk-std()-Y"               
 - "tBodyGyroJerk-std()-Z"                
 - "tBodyAccMag-std()"                   
 - "tGravityAccMag-std()"                 
 - "tBodyAccJerkMag-std()"               
 - "tBodyGyroMag-std()"                   
 - "tBodyGyroJerkMag-std()"              
 - "fBodyAcc-std()-X"                     
 - "fBodyAcc-std()-Y"                    
 - "fBodyAcc-std()-Z"                     
 - "fBodyAccJerk-std()-X"                
 - "fBodyAccJerk-std()-Y"                 
 - "fBodyAccJerk-std()-Z"                
 - "fBodyGyro-std()-X"                    
 - "fBodyGyro-std()-Y"                   
 - "fBodyGyro-std()-Z"                    
 - "fBodyAccMag-std()"                   
 - "fBodyBodyAccJerkMag-std()"            
 - "fBodyBodyGyroMag-std()"              
 -  "fBodyBodyGyroJerkMag-std()"
