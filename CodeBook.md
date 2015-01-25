#Data Dictionary

##Data Set names

###step0: read in dataset from raw

features : dataset read in  the 561 selected features from "features.txt".

subject.tr : dataset that read in the subjects in training dataset from "subject_train.txt".
subject.te : dataset that read in the subjects in test dataset from "subject_test.txt".

tr_y: dataset that read in the activity numbers from "y_train.txt".
te_y: dataset that read in the activity numbers from "y_test.txt".

tr_x: dataset that read in the feature measurments from "X_train.txt".
te_x: dataset that read in the feature measurements from "X_test.txt".

###step1:merge training and test data sets

variables: dataset that merged all the measurements in "tr_x","te_x". 10299 observations with 561 columns.

subjects : dataset that merged all the subjects of "subject.tr", "subject.te".

activityno: dataset that merged all the activity numbers in "tr_y","te_y".

###step2: extract mean and standard erroor columns.
selmean: indicies of columns with "mean()" pattern in features second column.
selstd:  indicies of columns with "std()" pattern in features second column.
sel: 66 indices combined and sorted from the above selmean and selstd.

meansd: selected the wanted columns from dataset "variables" by the indices in"sel".
colnames: selected features/columnnames by the indices "sel" was saved in list "colnames" and later will be 
assigned to provide descriptive column names.


tBodyAcc-mean()-X ;
tBodyAcc-mean()-Y ;
tBodyAcc-mean()-Z ;
tBodyAcc-std()-X ;
tBodyAcc-std()-Y ;
tBodyAcc-std()-Z ;
tGravityAcc-mean()-X ;
tGravityAcc-mean()-Y ;
tGravityAcc-mean()-Z ;
tGravityAcc-std()-Y ;
tGravityAcc-std()-Z ;
tBodyAccJerk-mean()-X ;
tBodyAccJerk-mean()-Y ;
tBodyAccJerk-mean()-Z ;
tBodyAccJerk-std()-X ;
tBodyAccJerk-std()-Y ;
tBodyAccJerk-std()-Z ;
tBodyGyro-mean()-X ;
tBodyGyro-mean()-Y ;
tBodyGyro-mean()-Z ;
tBodyGyro-std()-X ;
tBodyGyro-std()-Y ;
tBodyGyro-std()-Z ;
tBodyGyroJerk-mean()-X ;
tBodyGyroJerk-mean()-Y ;
tBodyGyroJerk-mean()-Z ;
tBodyGyroJerk-std()-X ;
tBodyGyroJerk-std()-Y ;
tBodyGyroJerk-std()-Z ;
tBodyAccMag-mean() ;
tBodyAccMag-std() ;
tGravityAccMag-mean() ;
tGravityAccMag-std() ;
tBodyAccJerkMag-mean() ;
tBodyAccJerkMag-std() ;
tBodyGyroMag-mean() ;
tBodyGyroMag-std() ;
tBodyGyroJerkMag-mean() ;
tBodyGyroJerkMag-std() ;
fBodyAcc-mean()-X ;
fBodyAcc-mean()-Y ;
fBodyAcc-mean()-Z ;
fBodyAcc-std()-X ;
fBodyAcc-std()-Y ;
fBodyAcc-std()-Z ;
fBodyAccJerk-mean()-X ;
fBodyAccJerk-mean()-Y ;
fBodyAccJerk-mean()-Z ;
fBodyAccJerk-std()-X ;
fBodyAccJerk-std()-Y ;
fBodyAccJerk-std()-Z ;
fBodyGyro-mean()-X ;
fBodyGyro-mean()-Y ;
fBodyGyro-mean()-Z ;
fBodyGyro-std()-X ;
fBodyGyro-std()-Y ;
fBodyGyro-std()-Z ;
fBodyAccMag-mean() ;
fBodyAccMag-std() ;
fBodyBodyAccJerkMag-mean() ;
fBodyBodyAccJerkMag-std() ;
fBodyBodyGyroMag-mean() ;
fBodyBodyGyroMag-std() ;
fBodyBodyGyroJerkMag-mean() ;
fBodyBodyGyroJerkMag-std() ;


###step3: merge activity labels to the "All" data.

all: column-combined the data sets "subjects", "activityno", "meansd" as the final combined dataset.

Activitylabel : read from the "activity_label.txt". It contains two columns,6 observations.
The first column is activity number which is named as "activityno", the second one is activity label(which will be renamed as "activity").

<table>
  <tbody> 
	
<tr>
<td>1</td> 
<td>WALKING</td>
</tr>
<tr>
<td>2</td>
<td>WALKING_UPSTAIRS</td>
</tr>
<tr>
<td>3</td>
<td>WALKING_DOWNSTAIRS
</td>
</tr>
<tr>
<td>4</td>
<td>SITTING</td>
</tr>
<tr>
<td>5</td>
<td>STANDING</td>
</tr>
<tr>
<td>6</td>
<td>LAYING</td>
</tr>
 
 </tbody>
</table>

all.label: In step3, by merging the"all" dataset with "activitylabel" dataset by common variable "activityno", descriptive activity names were assigned to the data.  

###step4: assign the descriptive feature names in above list "colnames" to the selected 66 columns in all.lable by indicies.

###step5:

dmelt: melted the dataset "all.label" by the combinations of "subjectid" and "activity".

tidy_mean: the final tidy data generated in step5, contains the "subjectid", "activity", mean of each variable for that group of activity and subject. It has 180 observations and 68 variables in total.

##Variable names:

activityno:  rename the column name of the activity numbers to"activityno"

activity:  rename the column name of the activity_label into the 6 types of descriptive activity nanmes.

subjecteid :rename the column name of the subjects to "subjectid".


The description of the 66 selected variables out of the 561 features can be found in "features.txt" and explained in"features_info.txt"
They are also listed in the dataset section above.


##Merge and Subset and Rename and Reshape:

Dataset from training and test datasets were first row-binded together.
Separate "subject","activity" and "variables" were column-binded to form the first "all" complete data.
Dataset from "variables" were subset to extract columns with the corresponding features with "mean()" or "std()" pattern.
Activity labels were merge with dataset above to get the descriptive activities. 
Columns were renamed for subject id, activity number, activity labels and the 66 selected measurements.  
Datasets from above steps were reshaped by function melt() and eachvariable's mean were calculated by the combined (subjected, activity) factor in the fucntion dcast().
Final tidy data set was written to"tidy_data".txt.


