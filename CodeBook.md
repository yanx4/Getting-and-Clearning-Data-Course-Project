                                                  #Data Dictionary

##Data Sets

###Step0: read in dataset from raw

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
assigned to provide descriptive column names
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

###step3: merge activity labels to the "All" data.

all: column-combined the data sets "subjects", "activityno", "meansd" as the final combined dataset.

Activitylabel : read from the "activity_label.txt". It contains two columns,6 observations.
The first column is activity number which is named as "activityno", the second one is activity label(which will be renamed as "activity").

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

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


