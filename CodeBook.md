# Human Activity Recognition Dataset Codebook

This codebook describes the variables in the Human Activity Recognition dataset obtained from smartphones.

## Identifiers:
- Subject: Numeric identifier for each participant in the study.
- Activity: Descriptive name of the activity performed by the participant.

## Activity Labels:
- WALKING: Subject was walking during the measurement.
- WALKING_UPSTAIRS: Subject was walking upstairs during the measurement.
- WALKING_DOWNSTAIRS: Subject was walking downstairs during the measurement.
- SITTING: Subject was sitting during the measurement.
- STANDING: Subject was standing during the measurement.
- LAYING: Subject was laying down during the measurement.

## Feature Variables:
The feature variables represent various measurements obtained from the smartphone sensors. They are standardized and bounded within [-1,1]. Each variable name indicates the type of measurement, axis, and domain (time or frequency).

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation

Examples of feature variable names:

- tBodyAcc-mean()-X: Mean value of body acceleration along the X-axis in the time domain.
- tBodyAcc-std()-Y: Standard deviation of body acceleration along the Y-axis in the time domain.
- fBodyGyro-mean()-Z: Mean value of body angular velocity along the Z-axis in the frequency domain.
