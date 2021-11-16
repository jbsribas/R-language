
library(randomForest)
library(mlbench)  
library(e1071)
library(lattice)
library(Amelia)
library(corrplot)
library(ggplot2)
library(caret)

data(PimaIndiansDiabetes)

PimaIndiansDiabetes$mass
diabete <- randomForest(diabetes ~ pregnant + age, 
                        data = PimaIndiansDiabetes,
                        prox = TRUE)

diabete2 <- randomForest(diabetes ~ pregnant + age + mass , 
                         data = PimaIndiansDiabetes,
                         prox = TRUE)

diabete3 <- randomForest(diabetes ~ pregnant + age, 
                         data = PimaIndiansDiabetes,
                         prox = FALSE)

diabete4 <- randomForest(diabetes ~ pregnant + age + mass , 
                         data = PimaIndiansDiabetes,
                         prox = FALSE)
