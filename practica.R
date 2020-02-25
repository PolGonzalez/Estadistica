library(tables)
library(RcmdrMisc)
dd = read.csv2("González Sierras, POl-ent1.csv")
dd$MO<-factor(dd$MO,labels=c("No","Si"))
dd$PC<-factor(dd$PC,labels=c("No","Si"))
dd$Envas<-factor(dd$Envas,labels=c("No","Si"))
dd$Vidre<-factor(dd$Vidre,labels=c("No","Si"))
dd$BMI<-dd$Pes/(dd$H/100)^2
dd$IM<-dd$D2/dd$D4
dd$CBMI<-cut(dd$BMI,c(0,19,27,100),label=c("1-baix","2-mig","3-alt"),right=F)
dd$CEdat<-cut(dd$Edat,c(0,26,200),label=c("1-jove","2-gran"),right=T)
tabular(mean*(Sexe+1)~BMI*(CEdat +1),dd)

