####The data
The raw data set was obtained from [this link] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and processed with **run_analysis.R** to obtain the tidy data set in **'AveValues.txt'**.

####The variables
*Variable 1: Subject - refers to the number of the subject involved in the Human Activity Recognition experiment
   >There are a total of 30 subjects ranging from subject 1 to subject 30.
   
*Variable 2: Activity - refers to the activity being carried out by the subject during the experiment.
   >There are six different kinds of activities namely walking, walking upstairs, walking downstairs, sitting, standing and laying.
*Variables 3 to 68: means of various measurements extracted from the UCI HAR data sets. Detailed explanation of each variable can be found in the README.md file accompanying the raw data set.

####Data processing
The raw data was first merged from two different data sets: train and test. Only the means and standard deviations of measurements made were extracted. Activity codes were substituted accordingly with the appropriate activity names. Average values of each variable for each subject conducting different activities were calculated and recorded in a tidy data set.