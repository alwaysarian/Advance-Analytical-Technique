require(caret) #select tuning parameters
require(e1071) #SVM

eddat <- read.csv('EdgarMDPraveen1.csv', as.is = T);
attach(eddat)

#six group
dm6 <- eddat[which(group == 'AfA' | group == 'AsA'| group == 'EA'| group == 'NAm'| group == 'HW' | group == 'HSE'),];
colSums(is.na(eddat))
table(na.omit(dm6[,c(9,12,13,16,17,19,20,22,23,24,14,25,15,21,29,18)])$group)#18,,30

#good model
dm <- na.omit(dm6[,c(9,12,13,16,17,19,20,22,23,24,14,25,21,29,18)])
dm$group <- as.factor(dm$group)

dm <- cbind(dm["group"], scale(dm[,c(2:15)]) )



# time how long it takes
start_time <- Sys.time()
Accuracies <- c(0.00)
# suppress console output
sink('sinktest.txt')
for (i in seq(100))
{
  # sample
  inTrain <- createDataPartition(dm$group, p = .80, list = FALSE)
  dm.navg <- avNNet(dm[c(2:15)], dm$group, subset = inTrain, size = 2, rang = 0.5, decay = 5e-6, maxit = 200, repeats = 50)
  Accuracies[i] <- confusionMatrix(dm$group[-inTrain], predict(dm.navg, dm[-inTrain,], type = "class"))$overall["Accuracy"]
}
# turn output on again
sink()
summary(Accuracies)
acclen = length(na.omit(Accuracies))
plot(density(Accuracies), main = paste('Average Neural Network Model accuracies:',acclen, 'runs') )

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#Part2


eddat <- read.csv('EdgarMDPraveen1.csv', as.is = T);
attach(eddat)

#six group
dm6 <- eddat[which(group == 'AfA' | group == 'EA'| group == 'HW' | group == 'HSE'),];
colSums(is.na(eddat))
table(na.omit(dm6[,c(9,12,13,16,17,19,20,22,23,24,14,25,15,21,29,18)])$group)#18,,30

#good model
dm <- na.omit(dm6[,c(9,12,13,16,17,19,20,22,23,24,14,25,21,29,18)])
dm$group <- as.factor(dm$group)

dm <- cbind(dm["group"], scale(dm[,c(2:15)]) )



# time how long it takes
start_time <- Sys.time()
Accuracies <- c(0.00)
# suppress console output
sink('sinktest.txt')
for (i in seq(100))
{
  # sample
  inTrain <- createDataPartition(dm$group, p = .80, list = FALSE)
  dm.navg <- avNNet(dm[c(2:15)], dm$group, subset = inTrain, size = 2, rang = 0.5, decay = 5e-6, maxit = 200, repeats = 50)
  Accuracies[i] <- confusionMatrix(dm$group[-inTrain], predict(dm.navg, dm[-inTrain,], type = "class"))$overall["Accuracy"]
}
# turn output on again
sink()
summary(Accuracies)
acclen = length(na.omit(Accuracies))
plot(density(Accuracies), main = paste('Average Neural Network Model accuracies:',acclen, 'runs') )

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#Part3


eddat <- read.csv('EdgarMDPraveen2.csv', as.is = T);
attach(eddat)

#six group
dm6 <- eddat[which(group == 'AfA' | group == 'EA'| group == 'hispanic'),];
colSums(is.na(eddat))
table(na.omit(dm6[,c(9,12,13,16,17,19,20,22,23,24,14,25,15,21,29,18)])$group)#18,,30

#good model
dm <- na.omit(dm6[,c(9,12,13,16,17,19,20,22,23,24,14,25,21,29,18)])
dm$group <- as.factor(dm$group)

dm$UI1LC<-as.factor(dm$UI1LC)
dm$UI1SS<-as.factor(dm$UI1SS)
dm$UI1DS<-as.factor(dm$UI1DS)
dm$UI2DS<-as.factor(dm$UI2DS)
dm$UM1MC<-as.factor(dm$UM1MC)
dm$UM1HC<-as.factor(dm$UM1HC)
dm$LI1SS<-as.factor(dm$LI1SS)
dm$LI2SS<-as.factor(dm$LI2SS)
dm$LP3LC<-as.factor(dm$LP3LC)

dm$UI2SS<-as.factor(dm$UI2SS)
dm$LP4LC<-as.factor(dm$LP4LC)
dm$UM1C5<-as.factor(dm$UM1C5)

dm$LM1PS<-as.factor(dm$LM1PS)
dm$UP3TC<-as.factor(dm$UP3TC)



#dm <- cbind(dm["group"], as.factor(dm[,c(2:15)]) )



# time how long it takes
start_time <- Sys.time()
Accuracies <- c(0.00)
# suppress console output
sink('sinktest.txt')
for (i in seq(100))
{
  # sample
  inTrain <- createDataPartition(dm$group, p = .80, list = FALSE)
  dm.navg <- avNNet(dm[c(2:15)], dm$group, subset = inTrain, size = 2, rang = 0.5, decay = 5e-6, maxit = 200, repeats = 50)
  Accuracies[i] <- confusionMatrix(dm$group[-inTrain], predict(dm.navg, dm[-inTrain,], type = "class"))$overall["Accuracy"]
}
# turn output on again
sink()
summary(Accuracies)
acclen = length(na.omit(Accuracies))
plot(density(Accuracies), main = paste('Average Neural Network Model accuracies:',acclen, 'runs') )