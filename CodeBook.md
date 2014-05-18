{\rtf1\ansi\ansicpg1252\cocoartf1265\cocoasubrtf200
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww14480\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural

\f0\fs24 \cf0 ####The data\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural
\cf0 The raw data set was obtained from [this link] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and processed with **run_analysis.R** to obtain the tidy data set in **\'94AveValues.txt\'94**. The values in the tidy data set represent the average values of means and standard deviations of the different measurements made during the Human Activity Recognition experiments for each subject while conducting different activities. The data set is made up of 180 observations of 68 variables.\
\
####The variables\
*Variable 1: Subject - refers to the number of the subject involved in the Human Activity Recognition experiment\
  >There are a total of 30 subjects ranging from subject 1 to subject 30.\
*Variable 2: Activity - refers to the activity being carried out by the subject during the experiment.\
   >There are six different kinds of activities namely walking, walking upstairs, walking downstairs, sitting, standing and laying.\
*Variables 3 to 68: means of various measurements extracted from the UCI HAR data sets. Detailed explanation of each variable can be found in the README.md file accompanying the raw data set.\
\
####Data processing\
The raw data was first merged from two different data sets: train and test. Only the means and standard deviations of measurements made were extracted. Activity codes were substituted accordingly with the appropriate activity names. Average values of each variable for each subject conducting different activities were calculated and recorded in a tidy data set.}