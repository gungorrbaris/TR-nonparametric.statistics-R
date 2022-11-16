## ----setup, include=FALSE---------
knitr::opts_chunk$set(echo = TRUE)


## ---------------------------------
veri <-read.csv("https://raw.githubusercontent.com/gungorrbaris/TR-nonparametric.statistics-R/main/data/data2.csv",sep = ";")
knitr::kable(head(veri,n=10), align = "c")


## ---------------------------------
hafta_6 <- veri$dakika[c(1:33)] 
hafta_12 <- veri$dakika[c(34:66)] 
hafta_18 <- veri$dakika[c(67:99)] 


## ---------------------------------
shapiro.test(hafta_6)


## ---------------------------------
shapiro.test(hafta_12)


## ---------------------------------
shapiro.test(hafta_18)


## ---------------------------------
friedman.test(dakika~hafta|blok,data=veri)


## ---------------------------------
library(PMCMRplus)

frdAllPairsConoverTest(y=veri$dakika,groups=veri$hafta,blocks=veri$blok)


