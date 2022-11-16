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
wilcox.test(hafta_6,hafta_18,alternative = "greater",paired = TRUE,conf.level=0.95)

