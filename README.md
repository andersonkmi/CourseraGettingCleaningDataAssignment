## Getting and Cleaning Data Assignment

This is the course project for the Getting and Cleaning Data Coursera course.
The R script, `run_analysis.R`, performs the following actions:

##### 1. Preparation
  1. Loads the required libraries
  2. Downloads the dataset if it does not already exist in the working directory.
  3. Unzips the original file


##### 2. Global activity and feature list loading
  1. Loads the activity information to be used later when creating the resulting tidy data.
  2. Loads the feature list so it can be used for filtering the desired variables.


##### 3. Training data set loading
 1. Loads the training dataset, filtering the columns related to mean or standard deviation.
 2. Loads the subject information related to the training data set.
 3. Loads the activity information related to the training data set.
 4. Bind by columns the subject and the activity information related to training data set.


##### 4. Test data set loading
 1. Loads the test dataset, filtering the columns related to mean or standard deviation.
 2. Loads the subject information related to the test data set.
 3. Loads the activity information related to the test data set.
 4. Bind by columns the subject and the activity information related to test data set.


##### 5. Training and test data sets merge
  1. Merges the two data sets into one.
  2. Adjusts the subject and activity column names.


##### 6. Subject and activity row values factor transformation
  1. Converts the subject column values to factor.
  2. Converts the activity column values to factor.


##### 7. Tidy data generation
  1. Applies the mean to every single column to every row and saves to `result.txt`
