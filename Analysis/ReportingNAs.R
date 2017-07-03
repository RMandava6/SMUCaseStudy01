##################################
#Reporting NA's in the Data
#Ramya Mandava
#Update 07/02/2017
##################################


#setwd("C:/Users/aura7/Documents/SMU/Courses/Summer1/DoingDS_MSDS6306/Week7/CaseStudy_01/SMUCaseStudy01")

#Summary on MergedData1 shows the NA's under various variables
summary(MergedData1)
MergedData2 <- MergedData1
summary(MergedData2)

#Blanks are not shown as NA -The below code assigns NA to blank fields
MergedData2[MergedData2==""]<-NA

#Writing the final Merged Data with blank spaces replaced by NA to Data folder
write.table(MergedData2, "Analysis/Data/MergedData2.csv", sep = ",",row.names=FALSE)

na_count <-sapply(MergedData2, function(y) sum(length(which(is.na(y)))))
cat("Below is the data frame showing NA counts for each variable")
na_count