## First read the data.

xtest <- read.table("UCI HAR Dataset\\test\\x_test.txt")
ytest <- read.table("UCI HAR Dataset\\test\\y_test.txt")
xtrain <- read.table("UCI HAR Dataset\\train\\x_train.txt")
ytrain <- read.table("UCI HAR Dataset\\train\\y_train.txt")
trainsub <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
testsub <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
features <- read.table("UCI HAR Dataset\\features.txt")
library(dplyr)

## Add the activity and subject columns to the main test/train dataset.

xtest[,562] <- ytest[,1]
xtest[,563] <- testsub[,1]
xtrain[,562] <- ytrain[,1]
xtrain[,563] <- trainsub[,1]

## Merges the training and the test sets to create one data set.
merged <- rbind(xtest, xtrain)

## Select the mean or std columns plus the subject and activity columns.
columns <- c(grep("[M/m]ean|[S/s]td", features[,2]))
merged <- merged[,c(columns,562,563)]

## Uses descriptive activity names to name the activities in the data set.

merged[merged[,87]==1,87] <- "Walking"
merged[merged[,87]==2,87] <- "WalkingUp"
merged[merged[,87]==3,87] <- "WalkingDown"
merged[merged[,87]==4,87] <- "Sitting"
merged[merged[,87]==5,87] <- "Standing"
merged[merged[,87]==6,87] <- "Laying"

## Appropriately labels the data set with descriptive variable names.

featnames <- as.character(features[columns,2])
colnames(merged) <- c(featnames, "activity", "subject")


## Creates a second, independent tidy data set with the average 
## of each variable for each activity and each subject.

grouped <- group_by(merged, activity, subject)
tidy <- as.database(summarise_all(grouped, mean))
write.table(tidy, file = "tidy.txt", row.name=FALSE)

