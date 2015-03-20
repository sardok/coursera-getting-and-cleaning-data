library(dplyr)
library(data.table)

coltable <- read.table('./UCI HAR Dataset/features.txt')
colnames <- coltable[,2]

activitytable <- read.table('./UCI HAR Dataset/activity_labels.txt')
activitynames <- activitytable[,2]

testdata <- read.table('./UCI HAR Dataset/test/X_test.txt', col.names=colnames)
testdata <- select(testdata, contains("mean"), contains("std"))
testactivities <- read.table('./UCI HAR Dataset/test/y_test.txt', col.names = c('activity'))
testactivities <- mutate(testactivities, activity = activitynames[activity])
testsubject <- read.table('./UCI HAR Dataset/test/subject_test.txt', col.names = c('subject'))
testdata <- cbind(testdata, testsubject, testactivities)

traindata <- read.table('./UCI HAR Dataset/train/X_train.txt', col.names=colnames)
traindata <- select(traindata, contains("mean"), contains("std"))
trainactivities <- read.table('./UCI HAR Dataset/train/y_train.txt', col.names = c('activity'))
trainactivities <- mutate(trainactivities, activity = activitynames[activity])
trainsubject <- read.table('./UCI HAR Dataset/train/subject_train.txt', col.names = c('subject'))
traindata <- cbind(traindata, trainsubject, trainactivities)

df <- rbind(testdata, traindata)

dt <- data.table(df)
tidy <- dt[, lapply(.SD, mean), by = c("subject", "activity")]
write.table(tidy, "tidy_data_mean.txt", row.name = FALSE)
