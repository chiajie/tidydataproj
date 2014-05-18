//data extraction into R
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainSubj <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainAct <- read.table("./UCI HAR Dataset/train/Y_train.txt")
train <- cbind(trainSubj, trainAct, trainData)

testData <- read.table("./UCI HAR Dataset/test/X_test.txt")
testSubj <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testAct <- read.table("./UCI HAR Dataset/test/Y_test.txt")
test <- cbind(testSubj, testAct, testData)

dframe <- rbind(test, train) ##produces raw data set dframe

//renaming column names of dframe
dataLabels <- read.table("./UCI HAR Dataset/features.txt")
names(dframe) <- c("Subject", "Activity", as.character(dataLabels[,2]))

//identifying variables which are means or standard deviations of measurements
varMean <- grep("mean()", names(dframe), fixed = TRUE) ##identifying variable names with mean()
varStd <- grep("std()", names(dframe), fixed = TRUE) ##identifying variable names with std()
extract <- sort(c(1, 2, varMean, varStd)) ##includes columns Subject and Activity

//creating new data frame with desired variables only
dframe2 <- dframe[,extract]

//replacing activity codes with appropriate names
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- gsub("_", " ", activityLabels[,2]) ##removing underscores
for (i in 1:6) {
  dframe2[,2] <- sub(activityLabels[i,1], activityLabels[i,2], dframe2[,2])
}

//constructing a dataframe with average of each measurement for each subject and each activity
library(reshape2)
moltendf <- melt(dframe2, id =c("Subject", "Activity"))
dframe2Ave <- dcast(moltendf, Subject + Activity ~ variable, mean)
write.table(dframe2Ave, "AveValues.txt")