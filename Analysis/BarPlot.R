##################################
#Bar Plot ABV and IBU per State
#Ramya Mandava
#Update 07/02/2017
##################################

#library(ggplot2)
#setwd("C:/Users/aura7/Documents/SMU/Courses/Summer1/DoingDS_MSDS6306/Week7/CaseStudy_01/SMUCaseStudy01")

#Preparing vectors to calculate Median
ABVM <- MergedData2$ABV
IBUM <- MergedData2$IBU
StateM <- MergedData2$State

#Calculating Median Alcohol contents by State
ABVMedian <- aggregate(ABVM ~ StateM, FUN = median)

#Calculating International Bitterness Unit by State
IBUMedian <-aggregate(IBUM ~ StateM, FUN = median)

#Plotting Alcohol Content by State
#ABV Barplot
ABV_BarPlot <-ggplot(ABVMedian, aes(ABVMedian$StateM, ABVMedian$ABVM, fill = -ABVM,colour=-ABVM,label="Median Alcohol Content"))+geom_bar(stat = "identity")+
  xlab("States") + ylab("Meadian Alcohol Cotent") + theme(axis.text.x = element_text(angle = 90, hjust = 1))
ABV_BarPlot

#Plotting International Bitterness Units of the Beers by State
#IBu Barplot
IBU_BarPlot <-ggplot(IBUMedian, aes(IBUMedian$StateM, IBUMedian$IBUM,fill = -IBUM,colour=-IBUM))+geom_bar(stat = "identity")+
  xlab("States") + ylab("International Bitterness Unit") + theme(axis.text.x = element_text(angle = 90, hjust = 1))
IBU_BarPlot