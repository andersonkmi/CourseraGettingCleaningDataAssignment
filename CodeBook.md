## Assignment code book

##### Introduction
The variables containing "Mean" represent means of original variables supplied by the original data set. The same is for variables marked with StdDev - they are the standard deviation variables extracted and renamed from the original data set.

Initially it was loaded the activities and feature information from the original data set downloaded from the Internet.

Then data sets for with subjects, activities and training data were loaded and later column-bound to form a unique data set. Once they were combined, a select is performed to extract only the variables related to mean and standard deviation. The same operation was applied to the test data set.

With both training and test data sets, both are finally merged (row bind operation) allowing them to be combined and to generate the final tidy data set containing the mean values for each variable, subject and activity.

##### Metadata
  * subject
    *  Represents the subject code
    *  1 until 30 - each number represents a subject inside the dataset.
  * activity
    *  Represents the activities performed by the subjects
      * WALKING
      * WALKING_UPSTAIRS
      * WALKING_DOWNSTAIRS
      * SITTING
      * STANDING
      * LAYING
  * tBodyAccMeanX
  * tBodyAccMeanY
  * tBodyAccMeanZ
  * tGravityAccMeanX            
  * tGravityAccMeanY
  * tGravityAccMeanZ
  * tBodyAccJerkMeanX
  * tBodyAccJerkMeanY           
  * tBodyAccJerkMeanZ
  * tBodyGyroMeanX              
  * tBodyGyroMeanY
  * tBodyGyroMeanZ              
  * tBodyGyroJerkMeanX
  * tBodyGyroJerkMeanY          
  * tBodyGyroJerkMeanZ
  * tBodyAccMagMean             
  * tGravityAccMagMean
  * tBodyAccJerkMagMean         
  * tBodyGyroMagMean
  * tBodyGyroJerkMagMean        
  * fBodyAccMeanX
  * fBodyAccMeanY               
  * fBodyAccMeanZ
  * fBodyAccmeanFreqX           
  * fBodyAccmeanFreqY
  * fBodyAccmeanFreqZ           
  * fBodyAccJerkMeanX
  * fBodyAccJerkMeanY           
  * fBodyAccJerkMeanZ
  * fBodyAccJerkmeanFreqX       
  * fBodyAccJerkmeanFreqY
  * fBodyAccJerkmeanFreqZ       
  * fBodyGyroMeanX
  * fBodyGyroMeanY              
  * fBodyGyroMeanZ
  * fBodyGyromeanFreqX          
  * fBodyGyromeanFreqY
  * fBodyGyromeanFreqZ          
  * fBodyAccMagMean
  * fBodyAccMagmeanFreq         
  * fBodyBodyAccJerkMagMean
  * fBodyBodyAccJerkMagmeanFreq
  * fBodyBodyGyroMagMean
  * fBodyBodyGyroMagmeanFreq    
  * fBodyBodyGyroJerkMagMean
  * fBodyBodyGyroJerkMagmeanFreq
  * tBodyAccStdDevX
  * tBodyAccStdDevY             
  * tBodyAccStdDevZ
  * tGravityAccStdDevX          
  * tGravityAccStdDevY
  * tGravityAccStdDevZ          
  * tBodyAccJerkStdDevX
  * tBodyAccJerkStdDevY         
  * tBodyAccJerkStdDevZ
  * tBodyGyroStdDevX            
  * tBodyGyroStdDevY
  * tBodyGyroStdDevZ            
  * tBodyGyroJerkStdDevX
  * tBodyGyroJerkStdDevY        
  * tBodyGyroJerkStdDevZ
  * tBodyAccMagStdDev           
  * tGravityAccMagStdDev
  * tBodyAccJerkMagStdDev       
  * tBodyGyroMagStdDev
  * tBodyGyroJerkMagStdDev      
  * fBodyAccStdDevX
  * fBodyAccStdDevY             
  * fBodyAccStdDevZ
  * fBodyAccJerkStdDevX         
  * fBodyAccJerkStdDevY
  * fBodyAccJerkStdDevZ         
  * fBodyGyroStdDevX
  * fBodyGyroStdDevY            
  * fBodyGyroStdDevZ
  * fBodyAccMagStdDev           
  * fBodyBodyAccJerkMagStdDev
  * fBodyBodyGyroMagStdDev      
  * fBodyBodyGyroJerkMagStdDev  
