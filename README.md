# Getting And Cleaning Data - Course Project

This is the repository for the course project of 'Getting And Cleaning Data' on Coursera. The goal for this project is to prepare tidy data that can be used for later analysis.

There are four components in this repository:

   * `README.md` :       Describes general purpose and the components included in this repository
   * `CodeBook.md` :     Describes the variables, the data, and any transformations or work that cleans up the data
   * `tidy_Dataset.txt`: The clean dataset after transformations performed from running `run_analysis.R` script
   * `run_analysis.R` :  Performs prescribed transformation steps as below
   
Following transformations are performed in `run_analysis.R` script:

  1. Checks working direcotry for required datasets. Download them if they do not already exist
  2. Load the `activity.txt` and `feature.txt`
  3. Loads both the training and test datasets, keeping only those columns which
     reflect a mean or standard deviation
  4. Loads the activity and subject data for each dataset, and merges those
     columns with the dataset
  5. Merges the two datasets
  6. Converts the `activity` and `subject` columns into factors
  7. Creates a tidy dataset that consists of the average (mean) value of each
     variable for each subject and activity pair.
