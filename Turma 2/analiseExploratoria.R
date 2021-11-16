library(mlbench)  
library(e1071)
library(lattice)
library(Amelia)
library(corrplot)
library(ggplot2)
library(caret)
#############################
data(PimaIndiansDiabetes)

#vendo as três primeiras linhas 
head(PimaIndiansDiabetes,3)

# vendo somente o titulo das colunas
names(PimaIndiansDiabetes)

# mostra a quantidade de linhas e colunas do data frame
dim(PimaIndiansDiabetes)

# comando sapply aplica a função class no dataframe indicado
sapply(PimaIndiansDiabetes , class)

summary(PimaIndiansDiabetes)

# desvio padrao
sapply(PimaIndiansDiabetes[,1:8], sd)

apply(PimaIndiansDiabetes[,1:8], 2, skewness)

# analise exploratoria gráfica
#histograma
par(mfrow = c(3,3))
for(i in 1:8){
  hist(PimaIndiansDiabetes[,i],
       main = names(PimaIndiansDiabetes)[i])
}
#dispersão para cada variavel ou univariado
par(mfrow = c(3,3))
for(i in 1:8){
  plot(PimaIndiansDiabetes[,i],
       main = names(PimaIndiansDiabetes)[i])
}
#densidade para cada variavel ou univariado
par(mfrow = c(3,3))
for(i in 1:8){
  plot(density(PimaIndiansDiabetes[,i]),
       main = names(PimaIndiansDiabetes)[i])
}
#boxplot
par(mfrow = c(3,3))
for(i in 1:8){
  boxplot(PimaIndiansDiabetes[,i],
       main = names(PimaIndiansDiabetes)[i])
}

correlacao <- cor(PimaIndiansDiabetes[1:8])

cores <- colorRampPalette("red", "white", "blue")
corrplot(correlacao, order = "AOE",method = "square",
       tl.srt = 45, tl.cex = 0.75,tl.col= "black")
corrplot(correlacao, order = "AOE",method = "number", add = TRUE,
         col = "black", diag= FALSE, tl.pos = "n",
         cl.pos= "n", number.cex = 0.75, type = "lower")

# exemplos de regressao
PimaIndiansDiabetes$diabetes
regressaoP <- lm(pregnant ~ age, data = PimaIndiansDiabetes)
summary(regressaoP)

# não pode usar o diabete como variavel dependete por ser um fator
regressaoE <- lm(diabetes ~ pregnant + age, data = PimaIndiansDiabetes)
summary(regressaoE)

regressaoD <- lm(pregnant ~ age+diabetes, data = PimaIndiansDiabetes)
summary(regressaoD)

regressaoA <- lm(age ~ pregnant+diabetes, data = PimaIndiansDiabetes)
summary(regressaoA)

regressaoM <- lm(age ~ mass+diabetes, data = PimaIndiansDiabetes)
summary(regressaoM)

class(PimaIndiansDiabetes$diabetes)





