########################
### Preparation
########################

library(data.table)
downloadedFile <- "uci-har-dataset.zip"

if (!file.exists(downloadedFile)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, downloadedFile)
  unzip(downloadedFile)
}

###########################################
### Global activity and feature loading
###########################################
activity_info <- data.table(read.table(file = "UCI HAR Dataset/activity_labels.txt"))
feature_list <- data.table(read.table(file = "UCI HAR Dataset/features.txt"))
