
library(reshape)

#0.read in all the original files
##read in features.txt
features<-read.table("features.txt",stringsAsFactors=FALSE)

##read in train dataset,"tr" stands for training
subject.tr<-read.table("train/subject_train.txt",sep="\t")
tr_y<-read.table("train/y_train.txt",sep="\t")
tr_x<-read.table("train/X_train.txt",sep="")

##read in test dataset,"te" stands for test
subject.te<-read.table("test/subject_test.txt",sep="\t")
te_y<-read.table("test/y_test.txt",sep="\t")
te_x<-read.table("test/X_test.txt",sep="")

#1.Merge training and test sets to create one dataset.
#merge 561 varaibles of training and test sets
variables<-rbind(tr_x,te_x)
#all subjects
subjects<-rbind(subject.tr,subject.te)
#all activity numbers
activityno<-rbind(tr_y,te_y)


#2.Extracts only the measurements on the mean and standard deviation for each measurement.
#Assume fixed patterns "mean()" or "std()" in the features$V2 covers all the mean and standard deviation
#for each measurement,66 out of the 561 varialbes are selected. The reason to fix the pattern is to
#help exclude variables like "MeanFreq" etc.

selmean<-grep("mean()",features$V2,fixed=TRUE) #grep the indices of mean
selstd<-grep("std()",features$V2,fixed=TRUE) #grep the indices of std
sel<-sort(c(selmean,selstd)) #combine and sort the indices of mean and std
meansd<-variables[,sel] #extract mean and std by the indices in "sel"
colnames<-features$V2[sel] #extract the corresponding features by index,save for latter colum names signing

#3.Uses descriptive activity names to name the activities in the data set
#combine subject, activityno, meansd
activityno<-rename(activityno,c(V1="activityno"))
subjects<-rename(subjects,c(V1="subjectid"))
all<-cbind(subjects,activityno,meansd)

activitylabel<-read.table("activity_labels.txt")
activitylabel<-rename(activitylabel,c(V1="activityno",V2="activity"))
all.label<-merge(all,activitylabel,by="activityno")
all.label<-all.label[,-1] #drop "activityno"
all.label<-all.label[,c(1,68,2:67)] #reorder columns to put activity after subjectid

#4.Appropriately labels the data set with descriptive variable names.
#set the previously saved selected features in "colnames" in step2 to the "V1","V2"...
colnames(all.label)[c(3:68)]=colnames

#5.From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.


library(reshape2)
#group by subjectid and activty
dmelt<-melt(all.label,id.var=c("subjectid","activity"))
#calculate the mean by group
tidy_mean<-dcast(dmelt, subjectid + activity ~ variable, mean)

#save the tidy data set 
write.table(tidy_mean,file="tidy_data.txt",row.names=FALSE)


