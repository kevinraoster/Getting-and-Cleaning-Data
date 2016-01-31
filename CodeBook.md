Code Book:
=========

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal of the project was to prepare tidy data from a given data set that can be used for later analysis. This code book describes the variables, the data, and any transformations or work performed to clean up the data. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

This project was to merge the two data sets (training and test) and only extract the measurements on mean and standard deviation for each measurement.

The features come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

 

The following is the list of columns:
=====================================

subject - ID of each person participating in the experiment

activity  - Label of the activity being performed in the experiment

List of Measurements (for each Subject and Activity combination)

tBodyAccMeanX
tBodyAccMeanY 
tBodyAccMeanZ 
tBodyAccStdX 
tBodyAccStdY 
tBodyAccStdZ 
tGravityAccMeanX 
tGravityAccMeanY 
tGravityAccMeanZ 
tGravityAccStdX 
tGravityAccStdY 
tGravityAccStdZ 
tBodyAccJerkMeanX 
tBodyAccJerkMeanY 
tBodyAccJerkMeanZ 
tBodyAccJerkStdX 
tBodyAccJerkStdY 
tBodyAccJerkStdZ 
tBodyGyroMeanX 
tBodyGyroMeanY 
tBodyGyroMeanZ 
tBodyGyroStdX 
tBodyGyroStdY 
tBodyGyroStdZ 
tBodyGyroJerkMeanX 
tBodyGyroJerkMeanY 
tBodyGyroJerkMeanZ 
tBodyGyroJerkStdX 
tBodyGyroJerkStdY 
tBodyGyroJerkStdZ 
tBodyAccMagMean 
tBodyAccMagStd 
tGravityAccMagMean 
tGravityAccMagStd 
tBodyAccJerkMagMean 
tBodyAccJerkMagStd 
tBodyGyroMagMean 
tBodyGyroMagStd 
tBodyGyroJerkMagMean 
tBodyGyroJerkMagStd 
fBodyAccMeanX 
fBodyAccMeanY 
fBodyAccMeanZ 
fBodyAccStdX 
fBodyAccStdY 
fBodyAccStdZ 
fBodyAccMeanFreqX 
fBodyAccMeanFreqY 
fBodyAccMeanFreqZ 
fBodyAccJerkMeanX 
fBodyAccJerkMeanY 
fBodyAccJerkMeanZ 
fBodyAccJerkStdX 
fBodyAccJerkStdY 
fBodyAccJerkStdZ 
fBodyAccJerkMeanFreqX 
fBodyAccJerkMeanFreqY 
fBodyAccJerkMeanFreqZ 
fBodyGyroMeanX 
fBodyGyroMeanY 
fBodyGyroMeanZ 
fBodyGyroStdX 
fBodyGyroStdY 
fBodyGyroStdZ 
fBodyGyroMeanFreqX 
fBodyGyroMeanFreqY 
fBodyGyroMeanFreqZ 
fBodyAccMagMean 
fBodyAccMagStd 
fBodyAccMagMeanFreq 
fBodyBodyAccJerkMagMean 
fBodyBodyAccJerkMagStd 
fBodyBodyAccJerkMagMeanFreq 
fBodyBodyGyroMagMean 
fBodyBodyGyroMagStd 
fBodyBodyGyroMagMeanFreq 
fBodyBodyGyroJerkMagMean 
fBodyBodyGyroJerkMagStd 
fBodyBodyGyroJerkMagMeanFreq

Units:
=====
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.
- Mean and Standard Deviation have the same units as the Data

License:
========
Acknowledgements:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Other Related Publications:
===========================
[2] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz.  Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care.   Volume 19, Issue 9. May 2013

[3] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 4th International Workshop of Ambient Assited Living, IWAAL 2012, Vitoria-Gasteiz, Spain, December 3-5, 2012. Proceedings. Lecture Notes in Computer Science 2012, pp 216-223. 

[4] Jorge Luis Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Catal�. Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.  

==================================================================================================
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita and Xavier Parra. November 2013.
