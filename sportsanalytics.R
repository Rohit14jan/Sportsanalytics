rm(list = ls())
library("dplyr")
library("magrittr")
library("ggplot2")

# install.packages("dplyr")

sportsData = read.csv("baseball.csv")
summary(sportsData)
trainsubset = subset(sportsData, Year<=2007)
testsubset = subset(sportsData, Year>2007)

sports96to2001 = subset(sportsData, Year>=1996 & Year<=2001)
ggplot(data = sports96to2001, aes(x = W, y = Team)) + theme_bw() + scale_color_manual(values = c("grey", "red3")) +geom_vline(xintercept = c(85.0,95.0), col = "green2", linetype = "longdash") +geom_point(aes(color = factor(Playoffs)), pch = 16, size = 3.0)

ggplot(data = sports96to2001)

ggplot(data = sports96to2001, aes(x = RA, y = W)) + theme_bw() +scale_color_manual(values = c("grey", "red3")) + geom_hline(yintercept= c(85.0, 95.0), col = "green2", linetype = "longdash") +    geom_point(aes(color = factor(Playoffs)), alpha = 0.5,pch = 16, size = 3.0) 
