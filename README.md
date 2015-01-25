{\rtf1\ansi\ansicpg1252\cocoartf1265\cocoasubrtf190
{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\froman\fcharset0 TimesNewRomanPSMT;\f2\fnil\fcharset0 HelveticaNeue;
}
{\colortbl;\red255\green255\blue255;\red0\green0\blue255;\red51\green51\blue51;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid1\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}
{\list\listtemplateid2\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid101\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid2}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}{\listoverride\listid2\listoverridecount0\ls2}}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\ri720

\f0\fs21 \cf0 ================================================\
Getting and Cleaning Data Course Project\
\pard\pardeftab720\ri720

\f1 \cf0 \
\pard\pardeftab720\ri720

\f0 \cf0 ================================================\
Original Data full description is available at {\field{\*\fldinst{HYPERLINK "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"}}{\fldrslt \cf2 \ul \ulc2 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones}}
\f1 \
\

\f0 Data for the project is downloadable at \cf2 \ul \ulc2 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
\f1 \cf0 \ulnone \
\
\
\pard\pardeftab720\ri720

\f0 \cf0 The original dataset includes the files:\
- 'README.txt'\
\pard\pardeftab720\ri720

\f1 \cf0 \
\pard\pardeftab720\ri720

\f0 \cf0 - 'features_info.txt': Shows information about the variables used on the feature vector.\
\pard\pardeftab720\ri720

\f1 \cf0 \
\pard\pardeftab720\ri720

\f0 \cf0 - 'features.txt': List of all features.\
\pard\pardeftab720\ri720

\f1 \cf0 \
\pard\pardeftab720\ri720

\f0 \cf0 - 'activity_labels.txt': Links the class labels with their activity name.\
\pard\pardeftab720\ri720

\f1 \cf0 \
\pard\pardeftab720\ri720

\f0 \cf0 - 'train/X_train.txt': Training set.\
\pard\pardeftab720\ri720

\f1 \cf0 \
\pard\pardeftab720\ri720

\f0 \cf0 - 'train/y_train.txt': Training labels.\
\pard\pardeftab720\ri720

\f1 \cf0 \
\pard\pardeftab720\ri720

\f0 \cf0 - 'test/X_test.txt': Test set.\
\pard\pardeftab720\ri720

\f1 \cf0 \
\pard\pardeftab720\ri720

\f0 \cf0 - 'test/y_test.txt': Test labels.\
\pard\pardeftab720\ri720

\f1 \cf0 \
\pard\pardeftab720\ri720

\f0 \cf0 The following files are available for the train and test data. Their descriptions are equivalent.
\f1 \'a0\
\

\f0 - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
\f1 \'a0\
\

\f0 - 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
\f1 \'a0\
\

\f0 - 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.
\f1 \'a0\
\

\f0 - 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.
\f1 \'a0\
\

\f0 Work Performance :\
\pard\pardeftab720\ri720

\f1 \cf0 \
\pard\pardeftab720\ri720

\f0 \cf0 The \'93run_analysis.R\'94 has been written to realize the 5 steps in the course projects :\
\pard\tx720\pardeftab720\li720\fi-360\ri720\sl315
\ls1\ilvl0
\f2 \cf3 1.	Merges the training and the test sets to create one data set.\
2.	Extracts only the measurements on the mean and standard deviation for each measurement.\'a0\
3.	Uses descriptive activity names to name the activities in the data set\
4.	Appropriately labels the data set with descriptive variable\'a0names.\'a0\
\pard\tx720\pardeftab720\li720\fi-360\ri720\sl315\sa158
\ls1\ilvl0\cf3 5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.\
\pard\pardeftab720\ri720\sl315\sa158
\cf3 Output Files:\
\pard\tx720\pardeftab720\li720\fi-360\ri720\sl315\sa158
\ls2\ilvl0\cf3 1.	The \'93CodeBook.md\'94 describes all the variables, datasets, and any merge/subset/rename/reshape steps performed to clean up the data.\
2.	The final tidy dataset is exported as \'93tidy_data.txt\'94. It includes subjected, activity, and the selected 66 variables from the original features/measurements.}