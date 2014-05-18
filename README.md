##Introduction

The R script **run_analysis.R** produces a tidy data set rom the UCI Human Activity Recognition data set. Prior to running the script, the data set should be downloaded from [this link] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzipped into the working folder of R.

####Forming the raw data set

Data is first extracted from both training and test data sets. Each data set is separated into three files: 'X_train/X_test.txt contains the measured data, 'Y_train/Y_test.txt' contains the activity being conducted and 'subject_train/subject_test.txt' contains the reference numbers of subjects.

Each file is read into R using **read.table()** into a separate data frame. The data frames are then combined using **cbind()** and **rbind()** to form the raw data set **dframe**. 

Columns are relabeled: first column is named Subject, second column is named Activity, the various measured variables are named according to the list of variable names in 'feature.txt'

####Extracting data

As per the course project parameters, only variables which are **means** (with tag _'mean()'_) and **standard deviations** (with tag _'std()'_) of measurements should be retained. These variables are identified by running **grep()** through the column names and subsetting the raw data set **dframe** with the list produced from **grep()**. The resulting data frame is named **dframe2**.

####Replacing activity codes with appropriate names
Each activity conducted by the subject is given a code as described in **'activity labels.txt'**. Using a for loop, the activity codes in dframe2 is substituted with the actual activity names.

####Creating a tidy data set with average values of each measurement
Using **melt()** and **dcast()** of the **reshape2** package, a new data set is constructed with the average values of each measured variable for each subject and each activity. The data set is written onto a text file named **'AveValues.txt'** and can be re-read into R with **read.table()**.