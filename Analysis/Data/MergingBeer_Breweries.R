##################################
#Merging Beers and Breweries Data
#Ramya Mandava
#Update 07/02/2017
##################################

#library(dplyr)
#setwd("C:/Users/aura7/Documents/SMU/Courses/Summer1/DoingDS_MSDS6306/Week7/CaseStudy_01/SMUCaseStudy01")

#Re-naming the Brew_ID to Brewery_ID as it is the common unique identifier, used to merge Beers and Breweries data sets
BreweriesDataNew <- dplyr::rename(BreweriesData, Brewery_id = Brew_ID)
#names(BreweriesDataNew)

#Merging Beers and Breweries data set
MergedData <- merge(x=BeerData, y=BreweriesDataNew, by = "Brewery_id", all = TRUE)
#names(MergedData)

#Renaming name variables appropriatly from Beers and Breweries data sets after Merging
MergedData1 <- dplyr::rename(MergedData, Beer = Name.x, Brewery = Name.y)
names(MergedData1)

#Printing first six and last six observations to check the merged file
head(MergedData1)
tail(MergedData1)

#Writing the merged data to the Data directory
write.table(MergedData1, "Analysis/Data/MergedData.csv", sep = ",",row.names=FALSE)

