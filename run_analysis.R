library("plyr")

# Unzip file.
# Set working directory.
#setwd("~/UCI HAR Dataset")

# Processsing Training Data Set
x.train <- read.table("./train/X_train.txt", header=FALSE)
x.train2 <- x.train[,c(1:6, 41:46, 81:86, 121:126, 161:166, 201,202,214,215,227,228,240,241,253,254,
                       266:271,345:350,424:429,503,504,516,517,529,530,542,543)]
y.train <- read.table("./train/y_train.txt", header=FALSE)
y.train$V1 <- revalue(as.character(y.train$V1), c("1"="WALKING","2"="WALKING_UPSTAIRS",
                                                  "3"="WALKING_DOWNSTAIRS","4"="SITTING",
                                                  "5"="STANDING","6"="LAYING"))
train.subj <- read.table("./train/subject_train.txt", header=FALSE)
train <- cbind(train.subj, y.train, x.train2)

# Processsing Test Data Set
x.test <- read.table("./test/X_test.txt", header=FALSE)
x.test2 <- x.test[,c(1:6, 41:46, 81:86, 121:126, 161:166, 201,202,214,215,227,228,240,241,253,254,
                       266:271,345:350,424:429,503,504,516,517,529,530,542,543)]
y.test <- read.table("./test/y_test.txt", header=FALSE)
y.test$V1 <- revalue(as.character(y.test$V1), c("1"="WALKING","2"="WALKING_UPSTAIRS",
                                                  "3"="WALKING_DOWNSTAIRS","4"="SITTING",
                                                  "5"="STANDING","6"="LAYING"))
test.subj <- read.table("./test/subject_test.txt", header=FALSE)
test <- cbind(test.subj, y.test, x.test2)

#Merging the training and the test sets in one data frame
test.train.df <- rbind(train, test)
#Add labels to the columns
colnames(test.train.df) <- c("Subject","Activity",
                       "BodyAcc.mean.X","BodyAcc.mean.Y","BodyAcc.mean.Z","BodyAcc.std.X",
                       "BodyAcc.std.Y","BodyAcc.std.Z","GravityAcc.mean.X","GravityAcc.mean.Y",
                       "GravityAcc.mean.Z","GravityAcc.std.X","GravityAcc.std.Y",
                       "GravityAcc.std.Z","BodyAccJerk.mean.X","BodyAccJerk.mean.Y",
                       "BodyAccJerk.mean.Z","BodyAccJerk.std.X","BodyAccJerk.std.Y",
                       "BodyAccJerk.std.Z","BodyGyro.mean.X","BodyGyro.mean.Y",
                       "BodyGyro.mean.Z","BodyGyro.std.X","BodyGyro.std.Y",
                       "BodyGyro.std.Z","BodyGyroJerk.mean.X","BodyGyroJerk.mean.Y",
                       "BodyGyroJerk.mean.Z","BodyGyroJerk.std.X","BodyGyroJerk.std.Y",
                       "BodyGyroJerk.std.Z","BodyAccMag.mean","BodyAccMag.std","GravityAccMag.mean",
                       "GravityAccMag.std","BodyAccJerkMag.mean","BodyAccJerkMag.std",
                       "BodyGyroMag.mean","BodyGyroMag.std","BodyGyroJerkMag.mean",
                       "BodyGyroJerkMag.std","BodyAcc.mean.X","BodyAcc.mean.Y",
                       "BodyAcc.mean.Z","BodyAcc.std.X","BodyAcc.std.Y",
                       "BodyAcc.std.Z","BodyAccJerk.mean.X","BodyAccJerk.mean.Y",
                       "BodyAccJerk.mean.Z","BodyAccJerk.std.X","BodyAccJerk.std.Y",
                       "BodyAccJerk.std.Z","BodyGyro.mean.X","BodyGyro.mean.Y","BodyGyro.mean.Z",
                       "BodyGyro.std.X","BodyGyro.std.Y","BodyGyro.std.Z","BodyAccMag.mean",
                       "BodyAccMag.std","BodyBodyAccJerkMag.mean","BodyBodyAccJerkMag.std",
                       "BodyBodyGyroMag.mean","BodyBodyGyroMag.std","BodyBodyGyroJerkMag.mean",
                       "BodyBodyGyroJerkMag.std")

# Step 5. Tidy data set
tidy <- aggregate(. ~ Subject + Activity, data=test.train.df, FUN=function(x) c(mn=mean(x)))

# Writing final output to file.
write.table(x=tidy,file="eirara_tidy_data.txt",row.name=FALSE)
