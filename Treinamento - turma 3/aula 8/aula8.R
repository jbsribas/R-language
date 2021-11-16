library(randomForest)
library(dplyr)

data("iris")
iris

irisM <- randomForest(Species ~ 
                        Petal.Length+ 
                        Petal.Width, 
                      data = iris,
                      prox = TRUE)
irisM

getTree(irisM, k = 2)

#matriz de confusão
MC <- table(predict(irisM),iris$Species)

#matriz de confusão % erro
prop.table(MC)

#Acuracia
(100+98+70)/3


plot(iris$Petal.Length, iris$Petal.Width,
     pch = 21, 
     bg = c("red", "blue", "green")[as.numeric(factor(iris$Species))])


irisM2 <- randomForest(Species ~ Sepal.Length+
                      Sepal.Width, data = iris,
                        prox=TRUE)
irisM2 

#matriz de confusão
MC2 <- table(predict(irisM2),iris$Species)

#matriz de confusão % erro
prop.table(MC2)

(100+86+81)/3

plot(iris$Sepal.Length, iris$Sepal.Width,
     pch = 21, 
     bg = c("red", "blue", "green")[as.numeric(factor(iris$Species))])


irisM3 <- randomForest(Species~
                      Sepal.Length+
                      Sepal.Width+
                      Petal.Length+
                      Petal.Width,
                      data = iris,
                      prox = TRUE)

irisM3

#matriz de confusão
MC3 <- table(predict(irisM3),iris$Species)

#matriz de confusão % erro
prop.table(MC3)


rename()

names(pokemon[,1]) <- c("Nome")

is.na(pokemon_df)

class(pokemon_df$Name)

pokemon_df$Name <- factor(pokemon_df$Name)
 #ou
pokemon_df$Name <- as.factor(pokemon_df$Name)

as.numeric()

for( i in 1:length(iris$Sepal.Length)){
  if(is.na(iris$Sepal.Length)[i] == TRUE){
    iris$Sepal.Length[i] <- mean(iris$Sepal.Length)
  }
}
  







