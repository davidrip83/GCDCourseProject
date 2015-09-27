## Course project
# Smartphone wearable accelerometer data
# description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


## 0. Download the data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# UnZIP the data in the working directory


## 1. Merges the training and the test sets to create one data set.
# Start with test data
setwd("test")
subject_test <- read.table("subject_test.txt")
# gives numbers of subjects in the test group. There are 2,947 observations

X_test <- read.table("X_test.txt")
# output: 561-feature vector with time and frequency domain variables

Y_test <- read.table("y_test.txt")
# test activity label numbers, to be replaced with string labels

# start with adding the subject_test to Y_test
test_merge_1 <- cbind(subject_test, Y_test)

# next merge with test data 561-feature vector
test_merge_2 <- cbind(test_merge_1, X_test)

# do the same for the training set  
setwd("train")

subject_train <- read.table("subject_train.txt")
# gives numbers of subjects in the training group

X_train <- read.table("X_train.txt")
# takes a long time to execute as it is 62.9 MB
# output: 561-feature vector with time and frequency domain variables

Y_train <- read.table("y_train.txt")
# training activity label numbers, to be replaced with string labels

# start with adding the subject_test to Y_test
train_merge_1 <- cbind(subject_train, Y_train)

# next merge with test data 561-feature vector
train_merge_2 <- cbind(train_merge_1, X_train)

# now merge test set with training set
# they have the same amount of variables so we can just add the rows
merged_data <- rbind(test_merge_2, train_merge_2)
# output: 10,299 observations (2,947 + 7,352) of 563 variables (1 + 1 + 561)


## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# look for variables in 'features.txt' that calculate mean() and standard deviation / std()
# the file 'features.txt' has all the descriptions of the variables
# This should be 53 variables with mean and 33 variables with std
features_list <- read.table("features.txt",strip.white=TRUE, stringsAsFactors=FALSE)
features_list_one_column <- features_list$V2

## create a logical vector with columns containing mean() or std()
# create vector with means
# note mean in spelled as 'mean' and 'Mean'
# note that some variables have the word 'mean' twice
mean_vector <- grep("ean", features_list$V2)

# create vector with stdevs
std_vector <- grep("std", features_list$V2)

# merge means and stds in one vector
std_mean_vector <- c(mean_vector, std_vector)

# create full list of labels for columns
extra_labels <- c("Subject", "activity_number")
full_labels <- append(extra_labels, features_list_one_column)

# give all the columns descriptive names
colnames(merged_data) <- full_labels

# Need to increment std_mean vector with 2 as we added two variables in the first 2 columns
std_mean_vector_2 <- std_mean_vector + 2

# need to add back column 1 and 2 to include Subject and Activity
std_mean_vector_3 <- append(c(1,2), std_mean_vector_2)
merged_data_trimmed <- subset(merged_data, select = std_mean_vector_3)


## 3. Uses descriptive activity names to name the activities in the data set
# read the activity labels into a table
activity_labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
colnames(activity_labels) <- c("activity_number", "activity_name")

# merge tables
library("dplyr")
new_data_1 <- left_join(merged_data_trimmed, activity_labels, by = "activity_number")

# drop activity number
new_data_1[2] <- NULL


## 4. Appropriately labels the data set with descriptive variable names. 
# This already happened in step 2 above


## 5. From the data set in step 4, creates a second, independent tidy data 
## set with the average of each variable for each activity and each subject.
# Calculate averages for each subject's unique activities
final_data <- aggregate(new_data_1[, 3:ncol(new_data_1)],
                       by=list(subject = new_data_1$Subject, 
                               activity = new_data_1$activity),
                       mean)

# drop last columns
final_data$activity_name <- NULL

# Write data to output for uploading
write.table(format(final_data, scientific=T), "final_data_tidy.txt",
            row.names=F, col.names=F, quote=2)

