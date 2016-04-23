########################
### Preparation
########################

library(data.table)
downloadedFile <- "uci-har-dataset.zip"

if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, downloadedFile)
  unzip(filename)
}
