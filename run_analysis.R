## This code will read in the raw data                   ##
## next it will turn that dat into a single data.frame   ##
## then it will clean up that data frame to include only ##
## those thing we are interested in and change the names ##
## of the columns so they are easy to understand         ##
## read in the .test and trian data file                               ##
test1<-read.table("~/downloads/UCI HAR Dataset-2/test/X_test.txt")
train1<-read.table("~/downloads/UCI HAR Dataset-2/train/X_train.txt")
## rbind all thise test set together into one set ##
dataset<-rbind(test1,train1)
## read in the names of the columns ##
colnames<-read.table("~/downloads/UCI HAR Dataset-2/features.txt")
## add names to the columns of dataset ##
names(dataset)<-colnames[,2]
## find only the columns that are mean and std pairs ##
colnames<-sub("meanFreq","ignore",colnames[,2])
want<-grep("mean|std",colnames)
## downsize the data set to only those mean and std colums
dataset<-dataset[want]
## read in the .train files
train2<-read.table("~/downloads/UCI HAR Dataset-2/train/y_train.txt")
train3<-read.table("~/downloads/UCI HAR Dataset-2/train/subject_train.txt",sep="\t")
test2<-read.table("~/downloads/UCI HAR Dataset-2/test/y_test.txt")
test3<-read.table("~/downloads/UCI HAR Dataset-2/test/subject_test.txt",sep="\t")
## rbind these together as well  ##
temp1<-rbind(test3,train3)
temp2<-rbind(test2,train2)
## cbind these all together into a complete raw data set ##
dataset<-cbind(temp1,temp2,dataset)
## name the first two columns "subject" and "activity"   ##
colnames<-names(dataset)
colnames[1:2]<-c("subject","activity")
names(dataset)<-colnames
## make the tidy data set with the calculate means##
dataset2<-aggregate(dataset[3:68],by=list(dataset$subject,dataset$activity),FUN=mean,na.rm=TRUE)
names(dataset2)<-colnames
## write out tidy data set as a txt ##
write.table(dataset2,"~/downloads/tidydata.txt",col.names=TRUE)
