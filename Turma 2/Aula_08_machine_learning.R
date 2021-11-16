library(randomForest)

data("iris")
View(iris)

iris$Petal.Width
# classificação do tipo de flor utilizando a largura e altura da Petala
iris_classificadao <- randomForest(Species ~ Petal.Length + Petal.Width,
                                   data = iris, 
                                   prox = TRUE)
iris_classificadao$confusion 


df <- iris_classificadao$confusion 

df <- iris_classificadao$confusion 

df.index.names = ['setosa','versicolor','virginica']

iris_classificadao2 <- randomForest(Species ~ Petal.Length + Petal.Width,
                                   data = iris, 
                                   prox = FALSE)

iris_classificadao3 <- randomForest(Species ~ Petal.Length + Petal.Width,
                                   data = iris, 
                                   prox = TRUE,
                                   ntree = 100)

