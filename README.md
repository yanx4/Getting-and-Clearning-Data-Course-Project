

================================================
Getting and Cleaning Data Course Project

================================================
#Original Data full description is available at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#Data for the project is downloadable at 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

 
#Performed Work :

The R code :run_analysis.R has been written to realize the 5 steps in the course projects :

After Read in all the original files by read.table().

1.	Merges the training and the test sets to create one data set with 561 varialbes of measurements.use rbind() to combine training and test data sets and use cbind() to combine "subjects","activity","variables" later.
       
2.	Extracts only the measurements on the mean and standard deviation for each measurement. use grep() to search patterns "mean()" or "std()".Save the resulting indicies to list "sel". Select columns of variables and corresponding feature names.

3.	Uses descriptive activity names to name the activities in the data. Merge the activitylabel data set to the previously dataset by common varible activity number with merge(). 

4.	Appropriately labels the data set with descriptive variable. Renames the the 66 selected columns with the "colnames" list by rename().

5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. Reshape the dataset by group subject id and activity with melt(). Use dcast() to calculate the corresponding mean. The genreated tidy data was written out to "tidy_data.txt" by write.table().

#Output Files:
1.	The "CodeBook.md" describes all the variables, datasets, and any merge/subset/rename/reshape steps performed to clean up the data.
2.	The final tidy dataset is exported as "tidy_data.txt". It includes "subjectid", "activity", and 180 observations of the means of the selected 66 variables from the original dataset with partial name pattern "mean()" or "std()".