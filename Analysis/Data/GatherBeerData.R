##################################
#Data gathering for Beers data set
#Ramya Mandava
#Update 07/02/2017
##################################

#library(repmis)

#setwd("C:/Users/aura7/Documents/SMU/Courses/Summer1/DoingDS_MSDS6306/Week7/CaseStudy_01/SMUCaseStudy01")
BeerURL <- "https://raw.githubusercontent.com/RMandava6/DataRepo/master/Beers_2_2.csv"

#Downloading data from: https://raw.githubusercontent.com/RMandava6/DataRepo/master/Beers_2_2.csv
#SHA-1 hash of the downloaded data file is:
#  d3e3e8f8e9cf27e0df038f47ccfcfc2dfccf4217
BeerData <- source_data(BeerURL, sep = ",", header = TRUE, sha1 = "d3e3e8f8e9cf27e0df038f47ccfcfc2dfccf4217")

#Show variables in BeerData(checking if data download is accurate)
names(BeerData)

#Saving data in plain text format in the Data Folder
write.table(BeerData, "Analysis/Data/Beers.csv", sep = ",",row.names=FALSE)