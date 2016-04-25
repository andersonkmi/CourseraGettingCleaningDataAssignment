########################
### 1. Preparation
########################

library(data.table)
library(dplyr)
downloadedFile <- "uci-har-dataset.zip"

if (!file.exists(downloadedFile)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, downloadedFile)
  unzip(downloadedFile)
}

###########################################
### 2. Global activity and feature loading
###########################################
activity_info <- data.table(read.table(file = "UCI HAR Dataset/activity_labels.txt"))
feature_list <- data.table(read.table(file = "UCI HAR Dataset/features.txt"))

colnames(feature_list) <- c("code", "name")
colnames(activity_info) <- c("code", "name")
feature_names <- as.character(feature_list[, name])
feature_names = gsub("-mean\\(\\)", 'Mean', feature_names)
feature_names = gsub("-std\\(\\)", 'StdDev', feature_names)
feature_names = gsub('[-()]', '', feature_names)


###################################
### 3. Training data set loading
###################################
train_subjects <- data.table(read.table(file = "UCI HAR Dataset/train/subject_train.txt"))
train_activities <- data.table(read.table(file = "UCI HAR Dataset/train/y_train.txt"))
train_dataset <- data.table(read.table(file = "UCI HAR Dataset/train/X_train.txt"))
colnames(train_dataset) <- c(feature_names)
bound_training_dataset <- cbind(train_subjects, train_activities, train_dataset)
colnames(bound_training_dataset) <- c("subject", "activity", feature_names)
resulting_training_dataset <- select(bound_training_dataset, contains("subject"), contains("activity"), contains("Mean"), contains("StdDev"), -contains("angle"))

###################################
### 4. Test data set loading
###################################
test_subjects <- data.table(read.table(file = "UCI HAR Dataset/test/subject_test.txt"))
test_activities <- data.table(read.table(file = "UCI HAR Dataset/test/y_test.txt"))
test_dataset <- data.table(read.table(file = "UCI HAR Dataset/test/X_test.txt"))
colnames(test_dataset) <- c(feature_names)
bound_test_dataset <- cbind(test_subjects, test_activities, test_dataset)
colnames(bound_test_dataset) <- c("subject", "activity", feature_names)
resulting_test_dataset <- select(bound_test_dataset, contains("subject"), contains("activity"), contains("Mean"), contains("StdDev"), -contains("angle"))

###########################################
### 5. Merge the training and test data sets
###########################################
mergedDataSets <- rbind(resulting_training_dataset, resulting_test_dataset)

############################################################
### 6. Subject and activity row values factor transformation
############################################################
mergedDataSets$activity <- factor(mergedDataSets$activity, levels = activity_info$code, labels = activity_info$name)
mergedDataSets$subject <- as.factor(mergedDataSets$subject)

############################
### 7. Tidy data generation
############################
meltedDataSets <- melt(mergedDataSets, id = c("subject", "activity"))
meanMeltedDataSets <- dcast(meltedDataSets, subject + activity ~ variable, mean)
write.table(meanMeltedDataSets, "result.txt", row.names = FALSE, quote = FALSE)
