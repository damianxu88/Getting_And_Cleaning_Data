# Code Book
This code book summarizes the data structure in the cleansed `tidy_Dataset.txt` file.

## Transformations Performed
`run_analysis.R` performs following transformation steps:

1. Check working direcotry for required datasets. Download them if they do not already exist
2. Load the `activity.txt` and `feature.txt` for activity labels and feature info
3. Extract only those measurements that reflect the mean or the standard deviation
4. Load and compose the complete 'X','Y' and 'subject' datasets 
5. Add appropriate labels and merge 'X','Y' and 'subject' datasets 
6. Generates a tidy dataset that consists of the mean value per variable for each subject and activity

## Key Columns
Following columns are the subject and activity data:

* `subject` : The numeric identifier of the test subject 
* `activity`: The description of activity types performed when the corresponding measurements were taken

  * ID 1 - `WALKING` : subject was walking during the test
  * ID 2 - `WALKING_UPSTAIRS` : subject was walking up a staircase during the test
  * ID 3 - `WALKING_DOWNSTAIRS` : subject was walking down a staircase during the test
  * ID 4 - `SITTING` : subject was sitting during the test
  * ID 5 - `STANDING` : subject was standing during the test
  * ID 6 - `LAYING` : subject was laying down during the test

## Measurement columns
Following columns are the measurements taken for either the mean or standard deviations:

* `tBodyAcc-mean()-X`           `tBodyAcc-mean()-Y`          
* `tBodyAcc-mean()-Z`           `tBodyAcc-std()-X`           
* `tBodyAcc-std()-Y`            `tBodyAcc-std()-Z`           
* `tGravityAcc-mean()-X`        `tGravityAcc-mean()-Y`       
* `tGravityAcc-mean()-Z`        `tGravityAcc-std()-X`        
* `tGravityAcc-std()-Y`         `tGravityAcc-std()-Z`        
* `tBodyAccJerk-mean()-X`       `tBodyAccJerk-mean()-Y`      
* `tBodyAccJerk-mean()-Z`       `tBodyAccJerk-std()-X`       
* `tBodyAccJerk-std()-Y`        `tBodyAccJerk-std()-Z`       
* `tBodyGyro-mean()-X`          `tBodyGyro-mean()-Y`         
* `tBodyGyro-mean()-Z`          `tBodyGyro-std()-X`          
* `tBodyGyro-std()-Y`           `tBodyGyro-std()-Z`          
* `tBodyGyroJerk-mean()-X`      `tBodyGyroJerk-mean()-Y`     
* `tBodyGyroJerk-mean()-Z`      `tBodyGyroJerk-std()-X`      
* `tBodyGyroJerk-std()-Y`       `tBodyGyroJerk-std()-Z`      
* `tBodyAccMag-mean()`          `tBodyAccMag-std()`          
* `tGravityAccMag-mean()`       `tGravityAccMag-std()`       
* `tBodyAccJerkMag-mean()`      `tBodyAccJerkMag-std()`      
* `tBodyGyroMag-mean()`         `tBodyGyroMag-std()`         
* `tBodyGyroJerkMag-mean()`     `tBodyGyroJerkMag-std()`     
* `fBodyAcc-mean()-X`           `fBodyAcc-mean()-Y`          
* `fBodyAcc-mean()-Z`           `fBodyAcc-std()-X`           
* `fBodyAcc-std()-Y`            `fBodyAcc-std()-Z`           
* `fBodyAccJerk-mean()-X`       `fBodyAccJerk-mean()-Y`      
* `fBodyAccJerk-mean()-Z`       `fBodyAccJerk-std()-X`       
* `fBodyAccJerk-std()-Y`        `fBodyAccJerk-std()-Z`       
* `fBodyGyro-mean()-X`          `fBodyGyro-mean()-Y`         
* `fBodyGyro-mean()-Z`          `fBodyGyro-std()-X`          
* `fBodyGyro-std()-Y`           `fBodyGyro-std()-Z`          
* `fBodyAccMag-mean()`          `fBodyAccMag-std()`          
* `fBodyBodyAccJerkMag-mean()`  `fBodyBodyAccJerkMag-std()`  
* `fBodyBodyGyroMag-mean()`     `fBodyBodyGyroMag-std()`     
* `fBodyBodyGyroJerkMag-mean()` `fBodyBodyGyroJerkMag-std()` 

