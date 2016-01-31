# Getting-and-Cleaning-Data
This readme explains how all of the scripts in run_analysis.R work and how they are connected. This script uses "reshape2" package. If you do not have "reshape2" package installed, then install the "reshape2" package (using install.packages("reshape2") before running this script. The R script, run_analysis.R, does the following:

1. Downloads the zip file if it does not exist in the working directory and unzip
2. Loads activity labels and features
3. Prepares to extract only measurements on the mean and standard deviation
4. Loads both the training and test datasets, keeping only those columns which reflect a mean or standard deviation
5. Loads the activity and subject data for each dataset, and merges those columns with the dataset
6. Merges test and training datasets and adds labels
7. Converts the activity and subject columns into factors
8. Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.
9. The end result is shown in the file tidy.txt.
