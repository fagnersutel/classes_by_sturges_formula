#install.packages('agricolae')
#install.packages('gtools')
library(agricolae)
data(natives)
attach(natives)
classes<-sturges.freq(size)
# information of the classes
classes
intervals <- classes$classes
#startgraph
# Histogram with the established classes
h1<-hist(size,breaks=intervals,freq=TRUE, col="yellow",axes=FALSE,
         xlim=c(0,0.12),main="",xlab="",ylab="")
axis(1,intervals,las=2)
axis(2,seq(0,400,50),las=2)
title(main="Histogram of frequency
      Size of the tubercule of the Oca",
      xlab="Size of the oca", ylab="Frequency")
#endgraph

newdata <- natives[ which(size < 0.0099),]
newdata2 <- natives[ which(size > 0.0188 & size < 0.0277),]
head(newdata)
head(newdata2)
summary(newdata)
summary(newdata2)
summary(natives)
