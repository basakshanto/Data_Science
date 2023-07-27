mydata <- read.csv("D:/Shanto IDS Project/Household-living-costs.csv",header=TRUE,sep=",")
mydata
install.packages("cluster")
library(cluster)
mydata1 <- scale (mydata[,2:5])
head(mydata1)
set.seed(1)
kR<- pam(mydata1,k=4)
summary(kR)
plot(kR)
mydata2 <-data.frame(mydata,kR$clustering)
head(mydata2)
set.seed(1)
kR2 <- kmeans(mydata1,4)
kR2$cluster
kR2$centers
kR2$size
