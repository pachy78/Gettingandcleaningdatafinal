## This script was created for the: Getting and Cleaning Data Course's Final 
## Project. It performs the following steps:
##
##  1 - Merges the training and the test sets to create one data set.
##  2 - Extracts only the measurements on the mean and standard deviation for 
#       each measurement.
##  3 - Uses descriptive activity names to name the activities in the data set
##  4 - Appropriately labels the data set with descriptive variable names.
##  5 - From the data set in step 4, creates a second, independent tidy data 
##      set with the average of each variable for each activity and each subject.


#Loading the aproppiated libraries
    library(dplyr)

#Defining important variables
    #URL 
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    Path <- "./data/UCI HAR Dataset"
            
#Downloading the zip file and extacting the data
        
    if(!file.exists("data")) { dir.create("data")}
    
    if(!file.exists("./data/original.zip")) 
        {download.file(fileUrl,destfile="./data/original.zip")}
    
    if(!file.exists("./data/UCI HAR Dataset")) 
        {unzip("./data/original.zip",exdir = "./data") }
    
#Reading the files from both Datasets.
    #Training Data Set
        Training <- read.table(file.path(Path,"train","x_train.txt"),
                               sep = "",header = FALSE, as.is = TRUE)
        
        Training_Lab <- read.table(file.path(Path,"train","y_train.txt"), 
                                      sep ="", header = FALSE, as.is = TRUE)
        
        Training_Sub <- read.table(file.path(Path,"train","subject_train.txt"), 
                                       sep ="", header = FALSE, as.is = TRUE)
    
    #Test Data Set
        Test <- read.table(file.path(Path,"test","x_test.txt"),
                           sep = "",header = FALSE, as.is = TRUE)
        
        Test_Lab <- read.table(file.path(Path,"test","y_test.txt"), 
                               sep = "", header = FALSE, as.is = TRUE)
        
        Test_Sub <- read.table(file.path(Path,"test","subject_test.txt"), 
                               sep= "", header = FALSE, as.is = TRUE)
    
    #Names
        Attributes_Nam <- read.table(file.path(Path,"features.txt"),
                                       sep = "",header = FALSE, as.is = TRUE)
        
        Activity_Lab <- read.table(file.path(Path,"activity_labels.txt"),
                                   sep = "",header = FALSE, as.is = TRUE)
        
#Making the attribute names unique (they are not!!!)
    Attributes_Nam$unique <- paste0(Attributes_Nam[,2],"_",Attributes_Nam[,1])
    
#Assigning column names both Datasets
        names(Training) <- Attributes_Nam$unique
        names(Test) <- Attributes_Nam$unique
        
#Adding the Subject ID and Activity ID to both Datasets. 
    Training <- Training %>% mutate(ActivityId = Training_Lab[,1],
                                    SubjectId = Training_Sub[,1])
        
    Test <- Test %>% mutate(ActivityId = Test_Lab[,1],
                                    SubjectId = Test_Sub[,1])
        
        
   
##Request #1: Merging the training and the test sets to create one data set.
    #FullData data set is created. I will leave it loaded on memory in case it is
    #needed for any extra analisys, but this data set will not be converted to a
    #file.
    
    FullData <- rbind(Training,Test)
    FullData <- tbl_df(FullData) .
        
    
##Request #2: Extracting only the measurements on the mean and standard deviation for each measurement.
    Mean_Std <- FullData %>% select(SubjectId, 
                                    ActivityId, 
                                        contains("mean()"), 
                                        contains("std()"))
    
##Request #3: Using descriptive activity names to name the activities in the data set
    Mean_Std <- Mean_Std %>% mutate(ActivityId = factor(ActivityId, labels = Activity_Lab[,2]))
        
##Request #4: Appropriately labeling the data set with descriptive variable names.
    names(Mean_Std) <- sapply(strsplit(names(Mean_Std),"_"), function(x){x[1]})
    names(Mean_Std) <- gsub("-","_",names(Mean_Std))
    names(Mean_Std) <- sub("^t","Time",names(Mean_Std)) 
    names(Mean_Std) <- sub("^f","Frequency",names(Mean_Std))
    names(Mean_Std) <- sub("Acc","Accelerometer",names(Mean_Std))
    names(Mean_Std) <- sub("Gyro","Gyroscope",names(Mean_Std))
    names(Mean_Std) <- gsub("mean()","Mean",names(Mean_Std))
    names(Mean_Std) <- gsub("std()","StadDev",names(Mean_Std))
    names(Mean_Std) <- gsub("[()]","",names(Mean_Std))
        
        
##Rquest #5: From the data set in step 4, creating a second, independent  
##           tidy data set with the average of each variable for each 
##           activity and each subject.    
        
    AverageData <- Mean_Std %>% group_by(ActivityId,SubjectId) %>% 
        summarise_all(mean)    
                                        

#Saving the Mean_Std and AverageData to csv and txt files, stored in ./data/results
    if(!file.exists("./data/results")) { dir.create("./data/results")}
    Path <- "./data/results"
    
    #With headers and as CSV files
    write.csv(x = Mean_Std, file.path(Path,"Mean_Std.csv"), row.names = FALSE)
    write.csv(x = AverageData, file.path(Path,"AverageData.csv"), row.names = FALSE)            

    #As txt files since it was requested in the "my submision page".
    #My initail idea was to just to create CSV files since I find them more easy 
    #to manage. I am adding this after realizing txt was requiered. I am leaving 
    #the CSV files anyways.
    
    write.csv(x = Mean_Std, file.path(Path,"Mean_Std.txt"), row.names = FALSE)
    write.csv(x = AverageData, file.path(Path,"AverageData.txt"), row.names = FALSE)   
    
##Removing not necessary data sets and variables
    rm(list=c("Activity_Lab","Attributes_Nam","Test","Test_Lab","Test_Sub",
              "Training", "Training_Lab","Training_Sub","Path","fileUrl"))
    
    