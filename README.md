# Getting and Cleaning Data Assignment

This is the course project for the Getting and Cleaning Data Coursera course.
The R script, `run_analysis.R`, performs the following actions:

1. Preparation
  1.1. Downloads the dataset if it does not already exist in the working directory.
  1.2. Unzips the original file
2. Loads the activity information to be used later when creating the resulting tidy data.
3. Loads the feature list so it can be used for filtering the desired variables.
4. Loads the training dataset, filtering the columns related to mean or standard deviation.
5. Loads the subject information related to the training data set.
6. Loads the activity information related to the training data set.
5. Bind by columns the subject and the activity information related to training data set.
6. Loads the test dataset, filtering the columns related to mean or standard deviation.
7. Loads the subject information related to the test data set.
8. Loads the activity information related to the test data set.
9. Bind by columns the subject and the activity information related to test data set.
6.
Loads both the training and test datasets, keeping only those columns which
   reflect a mean or standard deviation
4. Loads the activity and subject data for each dataset, and merges those
   columns with the dataset
5. Merges the two datasets
6. Converts the `activity` and `subject` columns into factors
7. Creates a tidy dataset that consists of the average (mean) value of each
   variable for each subject and activity pair.

The end result is shown in the file `tidy.txt`.
