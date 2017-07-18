---
title: "README"
author: "E Balanou"
date: "16 July 2017"
output: html_document
---

Cleaning and Gathering Data - Coursera - Final Assignemnt on tidyData
=====================================================================
Evangelia Balanou
=====================================================================

This assignment uses the dataset by [1]. 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.


The dataset includes the following files:
=========================================

- 'README.md'

- 'Codebook.md': Where the variables of the resulting tidyData are explained

- 'tidyData.txt': the resulting tidy dataset from the 'run_analysis.R'. Can be loaded with the command
                  > loadTidyData <- read.table("tidyData.txt", header = TRUE)
    
    In a tidy data set according to Hadley Wickham's paper <http://vita.had.co.nz/papers/tidy-data.html>
    on tidy data:
    
      - Each variable is saved in each own column
      - Each observation is saved in its own row
      - Each type of observational unit forms a table/file
 
 I chose not to decompose the variable names to X, Y, Z because of the discussion here: 
 <https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/>


- 'run_analysis.R': the script runs given the folder 'Data' folder, which contains the original dataset, is in the working directory with the script. The script does the following:

 1. Loads and merges the training and the test sets from the original Samsung dataset to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement.
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive variable names.
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each     activity and each subject. You can load the resulting tidy dataset with the command 
    > loadTidyData <- read.table("tidyData.txt", header = TRUE)
 


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
