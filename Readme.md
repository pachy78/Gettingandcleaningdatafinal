# Peer-graded Assignment: Getting and Cleaning Data Course Project
by Patricia Ortiz Suarez, November 2016

## Purpose and Goal
The purpose of this project was to demonstrate my ability to collect, work with, and clean a data set. 
The goal was to prepare tidy data that can be used for later analysis. 



# About the Data that is being used:
One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). 
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data linked represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Here are the data for the project:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Deliverables: 

### 1. A tidy data set.
Actually, two data sets are being delivered for this project (they can be found in the [results](https://github.com/pachy78/Gettingandcleaningdatafinal/tree/master/results) folder):

1. **Mean_Std:** Contains the measurements on the mean and standard deviation for each measurement taken in the originals data sets.

2. **Average Data:** Contains the average for each activity and each subject from the Mean_Std data set. 

### 2. A link to a Github repository with the script for performing the analysis: 
[Git Hub Link](https://github.com/pachy78/Gettingandcleaningdatafinal)
### 3. A code book that describes the variables, the data, and any transformations or work that was performed to clean up the data called [CodeBook.md](https://github.com/pachy78/Gettingandcleaningdatafinal/blob/master/Codebook.md). 
### 4. A README.md explaining how the script work.
[This file](https://github.com/pachy78/Gettingandcleaningdatafinal/blob/master/Readme.md). Keep reading below to see how the script works.

## How the script works.

A script with the name **run_analysis.R** was created. This script performs the following actions:

1. Load the required library: **dplyr**, which is necessary for some of the functions used in the script.
2. Creates a directory called *data*, inside the actual working directory, and downloads the [original data files](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). with the name
*original.zip:. After that, the data is unzipped and a folder with the name *UCI HAR Dataset* is created. If you want to know more information about the original data set, , which is called "Human Activity Recognition Using Smartphones Dataset", you can visit the [site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was obtained, 
and/or you can download the [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and read the following files: README.txt and features_info.txt. 
3. Reads the following files: x_train.txt, y_train.txt, subject_train.txt, x_test.txt, y_test.txt, subject_test.txt, features.txt and actity_labels.txt.
4. Merges all the previous files to create one data set called **FullData**. Note that this data set is not included in the deliverables for the project.
5. From that previous data set, it extracts only the measurement on the mean and standard deviation for each measurement and creates a new data set called **Mean_Std**.
6. Uses descriptive names for the activities in the Mean_Std data set.
7. Labels the Mean_Std data set with descriptive variable names.
8. From Mean_Std, it creates a second data set called **AverageData** with the average of each variable for each activity and each subject.
9. Saves Mean_Std and AverageData into a new folder called "[results](https://github.com/pachy78/Gettingandcleaningdatafinal/tree/master/results)" as two different CSV and TXT files. I initially wanted CSV files, because I find then more easy to handle. But, then I found out that a TXT was required for the AverageData data set. So I decided to keep both formats for both data sets.
10. Removes any unnecessary variable or data set from memory leaving the FullData, Mean_Std and AverageData data sets.



