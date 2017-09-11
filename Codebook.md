The site where the data was obtained is:<br />
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones<br />
<br />
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. <br />
<br />
These signals were used to estimate variables of the feature vector for each pattern:  <br />
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.<br />
<br />
tBodyAcc-XYZ, tGravityAcc-XYZ, tBodyAccJerk-XYZ, tBodyGyro-XYZ, tBodyGyroJerk-XYZ, tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccMag, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the <br />
angle() variable:<br />
<br />
gravityMean tBodyAccMean tBodyAccJerkMean tBodyGyroMean tBodyGyroJerkMean<br />
<br />
The set of variables that were estimated from these signals are: <br />
<br />
mean(): Mean value <br />
std(): Standard deviation <br />
subject: Identify the subject <br />
activity: Descriptive name of each activity <br />
