# Getting And Cleaning Data - Course Project

This is the repository for the course project of 'Getting And Cleaning Data' on Coursera. The goal for this project is to prepare tidy data that can be used for later analysis.

There are four components in this repository:

   * `README.md` :       Describes general purpose and the components included in this repository
   * `CodeBook.md` :     Describes the variables, the data, and any transformations or work that cleans up the data
   * `tidy_Dataset.txt`: The clean dataset after transformations performed from running `run_analysis.R` script
   * `run_analysis.R` :  Performs prescribed transformation steps as below
   
Following transformations are performed in `run_analysis.R` script:

  1. Check working directory for required datasets. Download them if they do not already exist
  2. Load the `activity.txt` and `feature.txt` for activity labels and feature info
  3. Extract only those measurements that reflect the mean or the standard deviation
  4. Load and compose the complete 'X','Y' and 'subject' datasets 
  5. Add appropriate labels and merge 'X','Y' and 'subject' datasets 
  6. Generates a tidy dataset that consists of the mean value per variable for each subject and activity
