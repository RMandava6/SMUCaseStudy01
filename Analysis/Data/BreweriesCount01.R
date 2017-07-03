#################################################
#1. How many breweries are present in each state?
#Ramya Mandava
#Update 07/02/2017
#################################################

#library(dplyr)
#setwd("C:/Users/aura7/Documents/SMU/Courses/Summer1/DoingDS_MSDS6306/Week7/CaseStudy_01/SMUCaseStudy01")

BrewerieCount <- count(BreweriesData, State, State)
BrewerieCount


