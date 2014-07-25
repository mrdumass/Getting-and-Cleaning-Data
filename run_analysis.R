## This code will read in the raw data                   ##
## next it will turn that dat into a single data.frame   ##
## then it will clean up that data frame to include only ##
## those thing we are interested in and change the names ##
## of the columns so they are easy to understand         ##
## read in the .test files                               ##
test1<-read.table("~/downloads/UCI HAR Dataset-2/test/subject_test.txt",sep="\t")
test2<-read.table("~/downloads/UCI HAR Dataset-2/test/X_test.txt",sep="\t")
test3<-read.table("~/downloads/UCI HAR Dataset-2/test/y_test.txt",sep="\t")
test4<-read.table("~/downloads/UCI HAR Dataset-2/test/inertial Signals/body_acc_x_test.txt",sep="\t")
test5<-read.table("~/downloads/UCI HAR Dataset-2/test/inertial Signals/body_acc_y_test.txt",sep="\t")
test6<-read.table("~/downloads/UCI HAR Dataset-2/test/inertial Signals/body_acc_z_test.txt",sep="\t")
test7<-read.table("~/downloads/UCI HAR Dataset-2/test/inertial Signals/body_gyro_x_test.txt",sep="\t")
test8<-read.table("~/downloads/UCI HAR Dataset-2/test/inertial Signals/body_gyro_y_test.txt",sep="\t")
test9<-read.table("~/downloads/UCI HAR Dataset-2/test/inertial Signals/body_gyro_z_test.txt",sep="\t")
test10<-read.table("~/downloads/UCI HAR Dataset-2/test/inertial Signals/total_acc_x_test.txt",sep="\t")
test11<-read.table("~/downloads/UCI HAR Dataset-2/test/inertial Signals/total_acc_y_test.txt",sep="\t")
test12<-read.table("~/downloads/UCI HAR Dataset-2/test/inertial Signals/total_acc_z_test.txt",sep="\t")
## cbind all thise test set together into one set ##
test_complete<-cbind(test1,test2,test3,test4,test5,test6,test7,test8,test9,test10,test11,test12)
## read in the .train files
train1<-read.table("~/downloads/UCI HAR Dataset-2/train/subject_train.txt",sep="\t")
train2<-read.table("~/downloads/UCI HAR Dataset-2/train/X_train.txt",sep="\t")
train3<-read.table("~/downloads/UCI HAR Dataset-2/train/y_train.txt",sep="\t")
train4<-read.table("~/downloads/UCI HAR Dataset-2/train/inertial Signals/body_acc_x_train.txt",sep="\t")
train5<-read.table("~/downloads/UCI HAR Dataset-2/train/inertial Signals/body_acc_y_train.txt",sep="\t")
train6<-read.table("~/downloads/UCI HAR Dataset-2/train/inertial Signals/body_acc_z_train.txt",sep="\t")
train7<-read.table("~/downloads/UCI HAR Dataset-2/train/inertial Signals/body_gyro_x_train.txt",sep="\t")
train8<-read.table("~/downloads/UCI HAR Dataset-2/train/inertial Signals/body_gyro_y_train.txt",sep="\t")
train9<-read.table("~/downloads/UCI HAR Dataset-2/train/inertial Signals/body_gyro_z_train.txt",sep="\t")
train10<-read.table("~/downloads/UCI HAR Dataset-2/train/inertial Signals/total_acc_x_train.txt",sep="\t")
train11<-read.table("~/downloads/UCI HAR Dataset-2/train/inertial Signals/total_acc_y_train.txt",sep="\t")
train12<-read.table("~/downloads/UCI HAR Dataset-2/train/inertial Signals/total_acc_z_train.txt",sep="\t")
## cbind all thise test set together into one set ##
train_complete<-cbind(train1,train2,train3,train4,train5,train6,train7,train8,train9,train10,train11,train12)
## join the test and train set together ##
total_complete<-rbind(test_complete,train_complete)