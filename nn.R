qhp <- read.csv("qhp.csv")
qhp$metal_level <- as.factor(qhp$metal_level)

cleandataqhp <- qhp[c(4,24, 26:62)]

dim(cleandataqhp)

cqhp <- cbind(cleandataqhp["metal_level"], scale(cleandataqhp[2:39]))

require(MASS)
require(caret)
require(nnet)


Accuracies <- c(0.00)
for (i in seq(1))
{
 
  inTrain <- createDataPartition(cqhp$metal_level, p = .80, list = FALSE)
  cqhp.nn4 <- nnet(metal_level ~ ., data = cqhp, subset = inTrain, size = 4, rang = 0.5,
                   decay = 5e-4, maxit = 200)

  Accuracies[i] <- tryCatch({
    confusionMatrix(cqhp$metal_level[-inTrain], predict(cqhp.nn4, cqhp[-inTrain,], type = "class"))$overall["Accuracy"]
  }, error = function(err) { Accuracies[i] <- NA })
}
summary(Accuracies)
acclen = length(na.omit(Accuracies))
plot(density(na.omit(Accuracies)), main = paste('Neural Network accuracies:',acclen, 'runs') )


