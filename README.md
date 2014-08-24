cleaningDataProject
===================

Coursera Project on Getting and Cleaning Data

In this project, here are the steps I did to come up with a tidy/cleaned version of the input data set:

1. Data set in Zip file was downloaded from the source URL.

 Unzip file.
 Set working directory.
 setwd("~/UCI HAR Dataset")

2. Processing of Training Data Set by reading through the input data files, i.e.
* subject_training.txt
* X_train.txt
* y_train.txt

3. Processing of Test Data Set by reading through the input data files, i.e.
* subject_test.txt
* X_test.txt
* y_test.txt

4. Merging of Data from the output of Items 3 and 4. Also in this step, appropriate labels are applied to the data set, particularly in the column names and under column Activity Names.

5. In this final step, average of each variable, aggregated by activity and subject were computed using different helper functions.
