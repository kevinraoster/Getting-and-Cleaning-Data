## Download the zip file if it does not exist in the working directory and unzip
filename <- "ucihardataset.zip"
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

## Load activity labels and features 
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_labels[,2] <- as.character(activity_labels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

## Preparation to extract only measurements on the mean and standard deviation for each measurement
featuresReqd <- grep(".*mean.*|.*std.*", features[,2])
featuresReqd.names <- features[featuresReqd,2]
featuresReqd.names = gsub('-mean', 'Mean', featuresReqd.names)
featuresReqd.names = gsub('-std', 'Std', featuresReqd.names)
featuresReqd.names <- gsub('[-()]', '', featuresReqd.names)

## Load the test and training datasets
train <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresReqd]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresReqd]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

## Merge test and training datasets and add labels
allData <- rbind(train, test)
colnames(allData) <- c("subject", "activity", featuresReqd.names)

## Turn activities & subjects into factors
allData$activity <- factor(allData$activity, levels = activity_labels[,1], labels = activity_labels[,2])
allData$subject <- as.factor(allData$subject)

## Load reshape2 package for the final step
library(reshape2)

## Generate tidy.txt file
allData.melted <- melt(allData, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)
write.table(allData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)