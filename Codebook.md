The site where the data was obtained is:<br />
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones<br />
<br />
The features selected for this database come from the accelerometer and gyroscope 3-axial <br />
raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) <br />
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter <br />
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove <br />
noise. Similarly, the acceleration signal was then separated into body and gravity acceleration <br />
signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a <br />
corner frequency of 0.3 Hz. <br />
<br />
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk <br />
signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional<br /> 
signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, <br />
tBodyGyroMag, tBodyGyroJerkMag). <br />
<br />
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, <br />
fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to <br />
indicate frequency domain signals). <br />
<br />
These signals were used to estimate variables of the feature vector for each pattern:  <br />
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.<br />
<br />
tBodyAcc-XYZ 
tGravityAcc-XYZ 
tBodyAccJerk-XYZ 
tBodyGyro-XYZ 
tBodyGyroJerk-XYZ 
tBodyAccMag 
tGravityAccMag 
tBodyAccJerkMag 
tBodyGyroMag 
tBodyGyroJerkMag 
fBodyAcc-XYZ 
fBodyAccJerk-XYZ 
fBodyGyro-XYZ 
fBodyAccMag 
fBodyAccJerkMag 
fBodyGyroMag 
fBodyGyroJerkMag 

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