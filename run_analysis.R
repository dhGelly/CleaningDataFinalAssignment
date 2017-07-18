# # =========================================================================================
#  run_analysis.R can be run as long as the original Samsung data is in your working directory (given by coursera). 
#  The output is tidy data set you submitted for part 1 of the assignment. 
#  There is a README.md in the repo describing how the script works and the code book describing the variables.
# 
#    This script computes the following steps:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.
# 
# =========================================================================================

# libraries
library(reshape2) # need to access dcast

# load the training data 
trainData <- read.table("./Data/train/X_train.txt") 
#View(trainData)
trainSubjects   <- readLines("./Data/train/subject_train.txt") 
trainActivities <- readLines("./Data/train/y_train.txt") 

# load the test data 
testData       <- read.table("./Data/test/X_test.txt") 
#View(testData)
testSubjects   <- readLines("./Data/test/subject_test.txt") 
testActivities <- readLines("./Data/test/y_test.txt") 

# load activity labels names
activity_labels <-  readLines("./Data/activity_labels.txt")

# load features names
features        <- readLines("./Data/features.txt")


# 1. Merges the training and the test sets to create one data set
mergedTrainTestData           <- rbind(trainData, testData)
colnames(mergedTrainTestData) <- features


# 2. Extracts only the measurements on the *mean* and *standard deviation* for each measurement.
#   I have included features that include mean() and std() at the end of their name.

subFeatures            <- features[grepl( "mean\\(\\)|std\\(\\)", features)]
subMergedTrainTestData <- mergedTrainTestData[subFeatures]

# 3. Uses descriptive activity names to name the activities in the data set

mergedTrainTestActivities      <- c(trainActivities, testActivities)
labelMergedTrainTestActivities <- activity_labels[as.numeric(mergedTrainTestActivities)]

splitNames    <- strsplit(labelMergedTrainTestActivities, " ")
secondElement <- function(x){x[2]}

descriptiveMergedTrainTestActivities <- sapply(splitNames, secondElement)
descriptiveSubMergedTrainTestData    <- cbind(descriptiveMergedTrainTestActivities, subMergedTrainTestData)

# 4. Appropriately labels the data set with descriptive variable names.
# I will leave the names chosen by the original authors of the features and I will explain what they mean
# at the codebook. 

# in steps 1 and 2 I had added the column names and subsetted the merged dataset with the name of the columns
# Thus is step is already completed and no other action should be taken, except writing the codebook. 


# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.

# In a tidy data set according to Hadley Wickham's paper <http://vita.had.co.nz/papers/tidy-data.html>
# on tidy data:
# - Each variable is saved in each own column
# - Each observation is saved in its own row
# - Each type of observational unit forms a table/file

# I chose not to decompose the variable names to X, Y, Z because of the discussion here: 
# <https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/>

# The script generates a tidy data text file in the wide form as disccussed in the above link. 

# Add the subject column at the left side of the data. 
mergedTrainTestSubjects  <- c(trainSubjects, testSubjects)
mergedTrainTestSubjects  <- factor(mergedTrainTestSubjects, levels = 1:30) # there are 30 subjects in the original experiment
fullyMergedTrainTestData <-cbind(mergedTrainTestSubjects, descriptiveSubMergedTrainTestData)


# Calculate each the average of each variable for each activity and each subject.

moltenData <- melt(fullyMergedTrainTestData, id.vars = c("mergedTrainTestSubjects","descriptiveMergedTrainTestActivities"), variable.name = "feature", value.name = "measurement")
tidyData   <- dcast(moltenData, mergedTrainTestSubjects + descriptiveMergedTrainTestActivities ~ feature, mean)

write.table(tidyData, file = "tidyData.txt", row.name= FALSE)

# write comment how to read
# loadTidyData <- read.table("tidyData.txt", header = TRUE)
