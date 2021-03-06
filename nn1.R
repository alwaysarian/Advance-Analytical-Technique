require(caret) #select tuning parameters
require(e1071) #SVM

eddat <- read.csv('EdgarMDPraveen1.csv', as.is = T);
attach(eddat)

#six group
dm6 <- eddat[which(group == 'AfA' | group == 'AsA'| group == 'EA'| group == 'NAm'| group == 'HW'),];
colSums(is.na(eddat))
table(na.omit(dm6[,c(9,12,13,16,17,19,20,22,23,24,14,25,29,21,18)])$group)#

dm <- na.omit(dm6[,c(9,12,13,16,17,19,20,22,23,24,14,25,29,21)])#
dm$group <- as.factor(dm$group)

dm <- cbind(dm["group"], scale(dm[,c(2:12)]) )



# time how long it takes
start_time <- Sys.time()
Accuracies <- c(0.00)
# suppress console output
sink('sinktest.txt')
for (i in seq(200))
{
  # sample
  inTrain <- createDataPartition(dm$group, p = .90, list = FALSE)
  dm.navg <- avNNet(dm[c(2:12)], dm$group, subset = inTrain, size = 2, rang = 0.5, decay = 5e-4, maxit = 200, repeats = 20)
  Accuracies[i] <- confusionMatrix(dm$group[-inTrain], predict(dm.navg, dm[-inTrain,], type = "class"))$overall["Accuracy"]
}
# turn output on again
sink()
summary(Accuracies)
acclen = length(na.omit(Accuracies))
plot(density(Accuracies), main = paste('Average Neural Network Model accuracies:',acclen, 'runs') )

