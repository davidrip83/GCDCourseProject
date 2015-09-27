##Getting and Cleaning Data Course Project
### Included files
This Course Project includes the following files:
- README.md: overview of files, you are reading this now
- run_analysis.R: script to generate tidy data fron source files
- CodeBook.md: codebook describing all variables and summaries calculated, along with units, and any other relevant information
- final_data_tidy.txt: output of Course Project

### Goals of Course Project
This is the final project for the Coursera class Getting and Cleaning Data.
The goal of the project is to develop a tidy dataset from various sources files.

The source files are located here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The data represents "the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors."

Specifically, the script in run_analysis.md does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Overview of run_analysis.md

0. Download the data
   - Download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
   - Unzip files in working directory

1. Merge the training set and test set into one data set
   - First read the test data and subject, X test and Y test data in one file
   - Next read the training data and subject, X training and Y training data in one file
   - Finally, combine the test and training data

2. Extract only measurements on the mean and standard deviation from each measurement
   - Search for mean and standard deviation in features description file and store in logical vector
   - Add labels for all columns to the dataset
   - Apply logical vector with means and standard deviations to dataset

3. Apply descriptive activity names to activities in the dataset
   - Load the activity labels data and apply appropriate column names
   - Join the activity labels with the dataset based on activity number

4. Appropriately labels the data set with descriptive variable names. 
   - This already happened in step 2 - Add labels for all columns to the dataset

5. Calculate averages for each subject's unique activities

- Write data to .TXT output for uploading with write.table 


