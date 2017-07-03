###############################################################################
#Scatter plot ABV vs IBU
#Ramya Mandava
#Update 07/02/2017
###############################################################################


#setwd("C:/Users/aura7/Documents/SMU/Courses/Summer1/DoingDS_MSDS6306/Week7/CaseStudy_01/SMUCaseStudy01")

attach(MergedData2)
Scatter_Plot<- plot(ABV, IBU, main="Alcohol content vs. International Bitterness Unit", 
                    xlab="Alcohol Content by Volume", ylab="International Bitterness  Unit ", pch=19, col=rgb(0,100,0,50,maxColorValue=255)) + abline(lm(IBU~ABV), col="red")
detach(MergedData2)
