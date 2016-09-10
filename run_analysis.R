###########################################################################
## Project: 'Getting And Cleaning Data' course project on Coursera       ##
## Goal:     To prepare tidy data that can be used for later analysis.   ##
###########################################################################

# Initiate and clean up
library(plyr)
rm(list = ls())

###########################################################################
## 1. Check working directory for required datasets. Download them if    ##
##    they do not already exist.                                         ##
###########################################################################

# Variable declaration associated with the downloaded zip file
fileName    <- "UCI_HAR_Dataset.zip"
URL         <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
unzipFolder <- "UCI HAR Dataset"

# Download the file if it does not already exist
if (!file.exists(fileName)) { download.file(URL, fileName) }  

# Unzip the file if the folder does not exist
if (!file.exists(unzipFolder)) { unzip(filename) }

###########################################################################
## 2. Load the activity labels and feature info                          ##
###########################################################################

# Load the 'activity labels' and 'features' data
activityLabels  <- read.table(paste0(unzipFolder, "/activity_labels.txt"))
features        <- read.table(paste0(unzipFolder, "/features.txt"))

# Transform data to appropriate types for 'activity Labels'
activityLabels[,1] <- as.numeric(activityLabels[,1])
activityLabels[,2] <- as.character(activityLabels[,2])

# Transform data to appropriate types for 'features'
features[,1] <- as.numeric(features[,1])
features[,2] <- as.character(features[,2])

###########################################################################
## 3. Extract only measurements for the mean or the standard deviation   ##
###########################################################################

# Search for mean and std and store the IDs for matched results
featuresTargetIDs    <- grep("mean\\(\\)|std\\(\\)", features[,2])

# Retrieve the names for the targets measurements
featuresTargetNames  <- features[featuresTargetIDs,2]

###########################################################################
## 4. Load and compose the complete 'X','Y' and 'subject' datasets       ##
###########################################################################

# Load 'train' datasets
XTrain <- read.table(paste0(unzipFolder, "/train/X_train.txt"))[featuresTargetIDs]
YTrain <- read.table(paste0(unzipFolder, "/train/Y_train.txt"))
subjectTrain <- read.table(paste0(unzipFolder, "/train/subject_train.txt"))

# Load 'test' datasets
XTest <- read.table(paste0(unzipFolder, "/test/X_test.txt"))[featuresTargetIDs]
YTest <- read.table(paste0(unzipFolder, "/test/Y_test.txt"))
subjectTest <- read.table(paste0(unzipFolder, "/test/subject_test.txt"))

# Merge all 'X' 'Y' 'subject' datasets
finalX       <- rbind(XTrain, XTest)
finalY       <- rbind(YTrain, YTest)
finalSubject <- rbind(subjectTrain,  subjectTest)

# Update 'Y' dataset with corresponding 'activity' names
finalY <- activityLabels[finalY[ , 1], 2]

###########################################################################
## 5. Add appropriate labels and merge 'X','Y' and 'subject' datasets    ##
###########################################################################

# Merge all datasets
completeDataset <- cbind(finalY, finalSubject, finalX)

# Add appropriate column names
colnames(completeDataset) <- c("activity", "subject", featuresTargetNames)

###########################################################################
## 6.Generates a tidy dataset that consists of the mean value            ##
##   per variable for each subject and activity                          ##  
###########################################################################

# Calculate all columns from finalX
finalDataset <- ddply(.data = completeDataset, 
                      .variables = c("subject", "activity"),
                      function(x) colMeans(x[, 3:68]))

# Write to a text file with final results
write.table(finalDataset, "tidy_Dataset.txt", row.names = FALSE, quote = FALSE)


