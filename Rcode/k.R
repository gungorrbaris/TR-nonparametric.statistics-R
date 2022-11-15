## ----setup, include=FALSE--------
knitr::opts_chunk$set(echo = TRUE)


## --------------------------------
veri <-read.csv("https://raw.githubusercontent.com/gungorrbaris/TR-nonparametric.statistics-R/main/data/data.csv",sep = ";")
knitr::kable(head(veri,n=10), align = "c")


## --------------------------------
spd <- veri$Oy[c(1:16)] 
cdu <- veri$Oy[c(17:32)] 
gruene <- veri$Oy[c(33:48)] 
fdp<- veri $Oy[c(49:64)]


## --------------------------------
shapiro.test(spd)


## --------------------------------
shapiro.test(cdu)


## --------------------------------
shapiro.test(gruene)


## --------------------------------
shapiro.test(fdp)


## --------------------------------
wilcox.test(spd,cdu,alternative="greater",conf.level=0.95,paired=FALSE)

