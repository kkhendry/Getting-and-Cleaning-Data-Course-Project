# Variables: Description

X_train: read.table from 'X_train.txt' file
X_test: read.table from 'X_test.txt' file
Y_train: read.table from 'Y_train.txt' file
Y_test: read.table from 'Y_test.txt' file
subject_train: read.table from 'subject_train.txt' file
subject_test: read.table from 'subject_test.txt' file
activity_labels: read.table from 'activity_labels.txt' file
features read.table from 'features.txt' file

X: row binded X_train and X_test

Xm: columns of X with "mean" regex'd out of it
XS: columns of X with "std" regex'd out of it
Xms column binded Xm and Xs

Y: row binded Y_train and Y_test

S: row binded subject_train and subject_test

YSX: Merged data frame with all Activity, Subject and X data

Y_S: Simply a code to help aggregate the data that is removed later

df: Dataframe of merged data ready to be aggregated

final: Final tidy dataset aggregated by the mean organized by activity and then person




THE TWO VARIABLES MOST USEFUL AND DESCRIPTIVE ARE df AND final