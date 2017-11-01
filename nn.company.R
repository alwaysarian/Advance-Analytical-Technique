qhp <- read.csv("qhp.csv")
qhp$issuer_name <- as.factor(qhp$issuer_name)

cleandataqhp <- qhp[c(5,24,26:62)]

dim(cleandataqhp)

cqhp <- cbind(cleandataqhp["issuer_name"], scale(cleandataqhp[2:39]))

require(MASS)
require(caret)
require(nnet)


Accuracies <- c(0.00)
for (i in seq(2))
{
  
  inTrain <- createDataPartition(cqhp$issuer_name, p = .75, list = FALSE)
  cqhp.nn4 <- nnet(issuer_name ~ ., data = cqhp, subset = inTrain, size = 4, rang = 0.5,
                   decay = 5e-4, maxit = 200)
  
  Accuracies[i] <- tryCatch({
    confusionMatrix(cqhp$issuer_name[-inTrain], predict(cqhp.nn4, cqhp[-inTrain,], type = "class", na.action = na.pass))$overall["Accuracy"]
  }, error = function(err) { Accuracies[i] <- NA })
}
summary(Accuracies)
acclen = length(na.omit(Accuracies))
plot(density(na.omit(Accuracies)), main = paste('Neural Network accuracies:',acclen, 'runs') )


