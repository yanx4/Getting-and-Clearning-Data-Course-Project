#Data Dictionary

##Data Sets
features : dataset contains the 561 selected features from features.txt

subject.tr : dataset contains the subjects in training dataset from subject_train.txt
subject.te: dataset contains the subjects in test dataset from subject_test.txt

Tr_y: dataset contains the activity number from y_train.txt
Te_y: dataset contains the activity number from y_test.txt

Tr_x:dataset contains the feature measurments from X_train.txt
Te_x:dataset contains the feature measurements from X_test.txt

Variables: dataset contains all the measurements of training and test sets
Subjects:   dataset contains all the subjects of training and test sets
Activityno: dataset contains all the corresponding activity numbers.

Selmean: indics of the features with “mean()” pattern
Selstd: indics of the features with “std()”pattern
Sel: 66 indices combined and sorted from the list of selmean and selstd
Meansd: selected measurements from dataset “variables” by the indices in “sel”.
Colnames: selected features by the indices in sel and was assigned to the measurement to provide descriptive column names
                     colnames
1            tBodyAcc-mean()-X
2            tBodyAcc-mean()-Y
3            tBodyAcc-mean()-Z
4             tBodyAcc-std()-X
5             tBodyAcc-std()-Y
6             tBodyAcc-std()-Z
7         tGravityAcc-mean()-X
8         tGravityAcc-mean()-Y
9         tGravityAcc-mean()-Z
10         tGravityAcc-std()-X
11         tGravityAcc-std()-Y
12         tGravityAcc-std()-Z
13       tBodyAccJerk-mean()-X
14       tBodyAccJerk-mean()-Y
15       tBodyAccJerk-mean()-Z
16        tBodyAccJerk-std()-X
17        tBodyAccJerk-std()-Y
18        tBodyAccJerk-std()-Z
19          tBodyGyro-mean()-X
20          tBodyGyro-mean()-Y
21          tBodyGyro-mean()-Z
22           tBodyGyro-std()-X
23           tBodyGyro-std()-Y
24           tBodyGyro-std()-Z
25      tBodyGyroJerk-mean()-X
26      tBodyGyroJerk-mean()-Y
27      tBodyGyroJerk-mean()-Z
28       tBodyGyroJerk-std()-X
29       tBodyGyroJerk-std()-Y
30       tBodyGyroJerk-std()-Z
31          tBodyAccMag-mean()
32           tBodyAccMag-std()
33       tGravityAccMag-mean()
34        tGravityAccMag-std()
35      tBodyAccJerkMag-mean()
36       tBodyAccJerkMag-std()
37         tBodyGyroMag-mean()
38          tBodyGyroMag-std()
39     tBodyGyroJerkMag-mean()
40      tBodyGyroJerkMag-std()
41           fBodyAcc-mean()-X
42           fBodyAcc-mean()-Y
43           fBodyAcc-mean()-Z
44            fBodyAcc-std()-X
45            fBodyAcc-std()-Y
46            fBodyAcc-std()-Z
47       fBodyAccJerk-mean()-X
48       fBodyAccJerk-mean()-Y
49       fBodyAccJerk-mean()-Z
50        fBodyAccJerk-std()-X
51        fBodyAccJerk-std()-Y
52        fBodyAccJerk-std()-Z
53          fBodyGyro-mean()-X
54          fBodyGyro-mean()-Y
55          fBodyGyro-mean()-Z
56           fBodyGyro-std()-X
57           fBodyGyro-std()-Y
58           fBodyGyro-std()-Z
59          fBodyAccMag-mean()
60           fBodyAccMag-std()
61  fBodyBodyAccJerkMag-mean()
62   fBodyBodyAccJerkMag-std()
63     fBodyBodyGyroMag-mean()
64      fBodyBodyGyroMag-std()
65 fBodyBodyGyroJerkMag-mean()
66  fBodyBodyGyroJerkMag-std()

All: combine the subjects, activityno, meansd as the final combined dataset

Activitylabel : read from the “activity_label.txt”. It contains two columns,
The first one is activityno, the second one is activity label(which will be renamed as activity).

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

all.label: In step3, by merging the “all” dataset with “activitylabel” dataset by common variable “activityno”, descriptive activity names were assigned to the activities.  Then in step 4, assign the descriptive feature names in  “colnames” to the selected 66 columns.

dmelt: the melted dataset of all.label by the combinations of “subjected” and “activity”.

tidy_mean: the final tidy data generated in step5, contains the subjected, activity, mean of each variable for that activity and subject. It has 180 observations.

##Variables:

activityno:  rename the column name of the activity numbers to “activityno”

activity:  the descriptive activity nanmes.

subjecteid :rename the column name of the subjects to “subjected”


Any selected variables out of the 561 features can be found in “features.txt” and explained in “features_info.txt”

##Merge and Subset and Rename and Transformation:

Dataset from training and test datasets were row binded together for merge purpose.
Dataset from the above step were column binded for the final merged data.
Dataset from above step were subset to extract columns with pre-selected indices.
Dataset from above step were merged with activity label set to get the descriptive activity lables. 
Dataset from above step were renamed for subject id, activity number, activity labels and the 66 selected measurements.  
Dataset from above step were reshaped by melt and variable mean were calculated by the combined (subjected, activity) factor in the melted data.
Dataset from above was write to “tidy_data”.txt


