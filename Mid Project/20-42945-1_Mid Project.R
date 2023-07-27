dset_1 <- read.csv("F:/Dataset_midterm.csv",header=TRUE,sep=",")
dset_1
names(dset_1)
summary(dset_1)

dset_1$Blood <- factor(dset_1$Blood,
                      levels = c("high","normal","low"), labels = c(1,2,3))
dset_1
colSums(is.na(dset_1))

which(is.na(dset_1$Age)) 
which(is.na(dset_1$weight.kg.)) 
which(is.na(dset_1$Delivery_number)) 
which(is.na(dset_1$Delivery_time)) 
which(is.na(dset_1$Blood)) 
which(is.na(dset_1$Caesarian))

dset_1$missing_value= is.na(dset_1$Age) | is.na(dset_1$weight.kg.) | is.na(dset_1$Delivery_number) | is.na(dset_1$Delivery_time) | is.na(dset_1$Blood) | is.na(dset_1$Caesarian)
dset_1

remove_missingvalue<- na.omit(dset_1)
remove_missingvalue

meanvalueAge <-mean(dset_1$Age,na.rm=TRUE)
meanvalueAge
dset_1[is.na(dset_1$Age), "Age"] <-meanvalueAge
dset_1

meanvalueWeight <-mean(dset_1$weight.kg.,na.rm=TRUE)
meanvalueWeight
dset_1[is.na(dset_1$weight.kg.), "weight.kg."] <-meanvalueWeight
dset_1

meanvalueDelivery_number <-mean(dset_1$Delivery_number,na.rm=TRUE)
meanvalueDelivery_number
dset_1[is.na(dset_1$Delivery_number), "Delivery_number"] <-meanvalueDelivery_number
dset_1

meanvalueDelivery_time <-mean(dset_1$Delivery_time,na.rm=TRUE)
meanvalueDelivery_time
dset_1[is.na(dset_1$Delivery_time), "Delivery_time"] <-meanvalueDelivery_time
dset_1

meanvalueCaesarian <-mean(dset_1$Caesarian,na.rm=TRUE)
meanvalueCaesarian
dset_1[is.na(dset_1$Caesarian), "Caesarian"] <-meanvalueCaesarian
dset_1


modeAge=names(sort(table(dset_1$Age)))[1]
modeAge
dset_1[is.na(dset_1$Age), "Age"] <-modeAge
dset_1

modeweight=names(sort(table(dset_1$weight.kg.)))[1]
modeweight
dset_1[is.na(dset_1$weight.kg.), "weight.kg."] <-modeweight
dset_1

modeDelivery_number=names(sort(table(dset_1$Delivery_number)))[1]
modeDelivery_number
dset_1[is.na(dset_1$Delivery_number), "Delivery_number"] <-modeDelivery_number
dset_1

modeDelivery_time=names(sort(table(dset_1$Delivery_time)))[1]
modeDelivery_time
dset_1[is.na(dset_1$Delivery_time), "Delivery_time"] <-modeDelivery_time
dset_1

modeCaesarian=names(sort(table(dset_1$Caesarian)))[1]
modeCaesarian
dset_1[is.na(dset_1$Caesarian), "Caesarian"] <-modeCaesarian
dset_1


medianvalueAge <-median(dset_1$Age,na.rm=TRUE)
medianvalueAge
dset_1[is.na(dset_1$Age), "Age"] <-medianvalueAge
dset_1

medianvalueweight <-median(dset_1$weight.kg.,na.rm=TRUE)
medianvalueweight
dset_1[is.na(dset_1$weight.kg.), "weight.kg."] <-medianvalueweight
dset_1

medianvalueDelivery_number <-median(dset_1$Delivery_number,na.rm=TRUE)
medianvalueDelivery_number
dset_1[is.na(dset_1$Delivery_number), "Delivery_number"] <-medianvalueDelivery_number
dset_1

medianvalueDelivery_time <-median(dset_1$Delivery_time,na.rm=TRUE)
medianvalueDelivery_time
dset_1[is.na(dset_1$Delivery_time), "Delivery_time"] <-medianvalueDelivery_time
dset_1

medianvalueCaesarian <-median(dset_1$Caesarian,na.rm=TRUE)
medianvalueCaesarian
dset_1[is.na(dset_1$Caesarian), "Caesarian"] <-medianvalueCaesarian
dset_1


idRange=max(dset_1$id, na.rm=TRUE)-min(dset_1$id, na.rm=TRUE)
print(idRange)
AgeRange=max(dset_1$Age, na.rm=TRUE)-min(dset_1$Age, na.rm=TRUE)
print(AgeRange)
weightRange=max(dset_1$weight.kg., na.rm=TRUE)-min(dset_1$weight.kg., na.rm=TRUE)
print(weightRange)
Delivery_numberRange=max(dset_1$Delivery_number, na.rm=TRUE)-min(dset_1$Delivery_number, na.rm=TRUE)
print(Delivery_numberRange)
Delivery_timeRange=max(dset_1$Delivery_time, na.rm=TRUE)-min(dset_1$Delivery_time, na.rm=TRUE)
print(Delivery_timeRange)
CaesarianRange=max(dset_1$Caesarian, na.rm=TRUE)-min(dset_1$Caesarian, na.rm=TRUE)
print(CaesarianRange)
HeartRange=max(dset_1$Heart, na.rm=TRUE)-min(dset_1$Heart, na.rm=TRUE)
print(HeartRange)
