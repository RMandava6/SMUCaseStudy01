##################################
#Data gathering for Breweries data set
#Ramya Mandava
#Update 07/02/2017
##################################

#library(repmis)
#setwd("C:/Users/aura7/Documents/SMU/Courses/Summer1/DoingDS_MSDS6306/Week7/CaseStudy_01/SMUCaseStudy01")
BreweriesURL <-"https://raw.githubusercontent.com/RMandava6/DataRepo/master/Breweries_2_2.csv"

#Downloading data from: https://raw.githubusercontent.com/RMandava6/DataRepo/master/Breweries_2_2.csv 

#SHA-1 hash of the downloaded data file is:
#  4579c1fc92624c25cb2643d7e61c542972fdc7ab
BreweriesData <- source_data(BreweriesURL, sep = ",", header = TRUE, sha1 = "4579c1fc92624c25cb2643d7e61c542972fdc7ab")

#Show variables in BreweriesData(checking if data download is accurate)
names(BreweriesData)

#Saving data in plain text format in the Data Folder
write.table(BreweriesData, "Analysis/Data/Breweries.csv", sep = ",",row.names=FALSE)