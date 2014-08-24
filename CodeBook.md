Data Dictionary - Human Activity Recognition Using Smartphones Data Set

The following are the variables used as the Column Names:

"Subject"

    Unique ID representation of the Test/Training subjects.
    
"Activity"

    Can either be any of the following activies:
    1 or WALKING
    2 or WALKING_UPSTAIRS
    3 or WALKING_DOWNSTAIRS
    4 or SITTING
    5 or STANDING
    6 or LAYING

Also variables (66) that represent signals (-XYZ' is used to denote 3-axial signals in the X, Y and Z directions):

      "BodyAcc.mean.X"
      
      "BodyAcc.mean.Y"
      
      "BodyAcc.mean.Z"
      
      "BodyAcc.std.X"
    
      "BodyAcc.std.Y"
    
      "BodyAcc.std.Z"
    
      "GravityAcc.mean.X"
    
      "GravityAcc.mean.Y"
    
      "GravityAcc.mean.Z"
    
      "GravityAcc.std.X"
    
      "GravityAcc.std.Y"
    
      "GravityAcc.std.Z"
    
      "BodyAccJerk.mean.X"
    
      "BodyAccJerk.mean.Y"
    
      "BodyAccJerk.mean.Z"
    
      "BodyAccJerk.std.X"
    
      "BodyAccJerk.std.Y"
    
      "BodyAccJerk.std.Z"
    
      "BodyGyro.mean.X"
    
      "BodyGyro.mean.Y"
    
      "BodyGyro.mean.Z"
    
      "BodyGyro.std.X"
    
      "BodyGyro.std.Y"
    
      "BodyGyro.std.Z"
    
      "BodyGyroJerk.mean.X"
    
      "BodyGyroJerk.mean.Y"
    
      "BodyGyroJerk.mean.Z"
    
      "BodyGyroJerk.std.X"
    
      "BodyGyroJerk.std.Y"
    
      "BodyGyroJerk.std.Z"
    
      "BodyAccMag.mean"
    
      "BodyAccMag.std"
    
      "GravityAccMag.mean"
    
      "GravityAccMag.std"
    
      "BodyAccJerkMag.mean"
    
      "BodyAccJerkMag.std"
    
      "BodyGyroMag.mean"
    
      "BodyGyroMag.std"
    
      "BodyGyroJerkMag.mean"
    
      "BodyGyroJerkMag.std"
    
      "BodyAcc.mean.X"
    
      "BodyAcc.mean.Y"
    
      "BodyAcc.mean.Z"
    
      "BodyAcc.std.X"
    
      "BodyAcc.std.Y"
    
      "BodyAcc.std.Z"
    
      "BodyAccJerk.mean.X"
    
      "BodyAccJerk.mean.Y"
    
      "BodyAccJerk.mean.Z"
    
      "BodyAccJerk.std.X"
    
      "BodyAccJerk.std.Y"
     
      "BodyAccJerk.std.Z"
    
      "BodyGyro.mean.X"
    
      "BodyGyro.mean.Y"
    
      "BodyGyro.mean.Z"
    
      "BodyGyro.std.X"
    
      "BodyGyro.std.Y"
    
      "BodyGyro.std.Z"
    
      "BodyAccMag.mean"
    
      "BodyAccMag.std"
    
      "BodyBodyAccJerkMag.mean"
    
      "BodyBodyAccJerkMag.std"
    
      "BodyBodyGyroMag.mean"
    
      "BodyBodyGyroMag.std"
    
      "BodyBodyGyroJerkMag.mean"
    
      "BodyBodyGyroJerkMag.std"

The set of variables that were estimated from these signals are: 

    mean(): Mean value
    std(): Standard deviation
    mad(): Median absolute deviation 
    max(): Largest value in array
    min(): Smallest value in array
    sma(): Signal magnitude area
    energy(): Energy measure. Sum of the squares divided by the number of values. 
    iqr(): Interquartile range 
    entropy(): Signal entropy
    arCoeff(): Autorregresion coefficients with Burg order equal to 4
    correlation(): correlation coefficient between two signals
    maxInds(): index of the frequency component with largest magnitude
    meanFreq(): Weighted average of the frequency components to obtain a mean frequency
    skewness(): skewness of the frequency domain signal 
    kurtosis(): kurtosis of the frequency domain signal 
    bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
    angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

    gravityMean
    tBodyAccMean
    tBodyAccJerkMean
    tBodyGyroMean
    tBodyGyroJerkMean
