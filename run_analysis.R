# Load in relevant data using read.table()

X_train <- read.table("./train/X_train.txt")
X_test <- read.table("./test/X_test.txt")
Y_train <- read.table("./train/Y_train.txt")
Y_test <- read.table("./test/Y_test.txt")
subject_train <- read.table("./train/subject_train.txt")
subject_test <- read.table("./test/subject_test.txt")
activity_labels <- read.table("./activity_labels.txt")
features <- read.table("./features.txt")

# Merging and reshaping data into a data frame
X <- rbind(X_train,X_test)
colnames(X) <- c(as.character(features[,2]))

Xm <- X[grep("mean", names(X))]
Xs <- X[grep("std", names(X))]
Xms <- cbind(Xm, Xs)

Y <- rbind(Y_train,Y_test)
colnames(Y) <- "Activity"

S <- rbind(subject_train,subject_test)
colnames(S) <- "Subject"

YSX <- cbind(Y, S, Xms)

YSX$Activity <- factor(YSX$Activity)
levels(YSX$Activity) <- activity_labels[, 2]

Y_S <- data.frame(paste(YSX$Activity, YSX$Subject, sep="_"))
colnames(Y_S) <- "Activity_Subject"

df <- cbind(Y_S, YSX)
final <- aggregate(.~Activity_Subject, FUN=mean, data=df)
final$Activity <- factor(final$Activity)
levels(final$Activity) <- activity_labels[, 2]
final[,1]=NULL
final <- final[order(final$Activity, final$Subject),]
rownames(final) <- NULL






