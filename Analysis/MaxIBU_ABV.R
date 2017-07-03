###############################################################################
#Max values for Alcohol content and IBU(International Bitterness Units of Beer)
#Ramya Mandava
#Update 07/02/2017
###############################################################################


#setwd("C:/Users/aura7/Documents/SMU/Courses/Summer1/DoingDS_MSDS6306/Week7/CaseStudy_01/SMUCaseStudy01")
x<-MergedData2
ABV_Max_state <- x[which.max( x[,4] ),10]
cat("State with maximum alcoholic Beer is:", ABV_Max_state)

IBU_Max_state <- x[which.max( x[,5] ),10]
cat("State with the most bitter Beer is:",IBU_Max_state)