{\rtf1\ansi\ansicpg1252\cocoartf1265\cocoasubrtf200
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural

\f0\fs24 \cf0 ##Introduction\
\
The R script **run_analysis.R** produces a tidy data set rom the UCI Human Activity Recognition data set. Prior to running the script, the data set should be downloaded from [this link] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzipped into the working folder of R.\
\
####Forming the raw data set\
\
Data is first extracted from both training and test data sets. Each data set is separated into three files: \'93X_train/X_test.txt\'94 contains the measured data, \'93Y_train/Y_test.txt\'94 contains the activity being conducted and \'93subject_train/subject_test.txt\'94 contains the reference numbers of subjects.\
\
Each file is read into R using **read.table()** into a separate data frame. The data frames are then combined using **cbind()** and **rbind()** to form the raw data set **\'93dframe\'94**. \
\
Columns are relabeled: first column is named Subject, second column is named Activity, the various measured variables are named according to the list of variable names in \'93feature.txt\'94.\
\
####Extracting data\
\
As per the course project parameters, only variables which are **means** (with tag _\'93mean()\'94_) and **standard deviations** (with tag _\'93std()\'94_) of measurements should be retained. These variables are identified by running **grep()** through the column names and subsetting the raw data set \'93dframe" with the list produced from **grep()**. The resulting data frame is named **\'94dframe2\'94**.\
\
####Replacing activity codes with appropriate names\
Each activity conducted by the subject is given a code as described in **\'94activity labels.txt\'94**. Using a for loop, the activity codes in dframe2 is substituted with the actual activity names.\
\
####Creating a tidy data set with average values of each measurement\
Using **melt()** and **dcast()** of the **reshape2** package, a new data set is constructed with the average values of each measured variable for each subject and each activity. The data set is written onto a text file named **\'94AveValues.txt\'94** and can be re-read into R with **read.table()**.}