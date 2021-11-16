#########################################
library(mlbench)
library(e1071)
library(lattice)
library(Amelia)
library(corrplot)
library(caret)
library(ggplot2)
library(stats)
#######################################
data(PimaIndiansDiabetes)
View(PimaIndiansDiabetes)


#########################################
# lista as três primeiras linhas 
head(PimaIndiansDiabetes, n=3)

# função dim = dimensão retorna a quantidade de linhas e colunas do objeto
dim(PimaIndiansDiabetes)

#Aplica a função class a cada coluna do data frame 
sapply(PimaIndiansDiabetes, class)

#estatistica descritiva

summary(PimaIndiansDiabetes)

#desvio padrão
sapply(PimaIndiansDiabetes[,1:8], sd)

#assimetria
apply(PimaIndiansDiabetes[,1:8], 2, skewness)

#historgrama univariado
par(mfrow = c(3,3))
for(i in 1:8){
  hist(PimaIndiansDiabetes[,i], main = names(PimaIndiansDiabetes)[i])
}

#Grafico de densidade
par(mfrow = c(3,3))
for(i in 1:8){
  plot(density(PimaIndiansDiabetes[,i]), main = names(PimaIndiansDiabetes)[i])
}

#boxplot e Whisker (univariado)
par(mfrow = c(3,3))
for(i in 1:8){
  boxplot(PimaIndiansDiabetes[,i], main = names(PimaIndiansDiabetes)[i])
}

#correlação das variaveis / colunas do data frame
correlacao <- cor(PimaIndiansDiabetes[,1:8])

#grafico de correlação / tabela de correlação

cores <- colorRampPalette(c("red","white","blue"))

#grafico de correlação em quadrados coloridos 
#azul positiva, vermelho é uma correlação negativa
#quanto for a cor mais forte ou signficativa é a correlação
# quanta mais fraca for a cor, menos sigficativa ou forte é a correlação
corrplot(correlacao, order = "AOE", method = "square",
         col = cores(20), tl.srt = 45, tl.cex = 0.75,
         tl.col = "black")

corrplot(correlacao, add = TRUE, type = "lower", method = "number",
          order = "AOE", col= "black", diag= FALSE, tl.pos = "n",
         cl.pos="n", number.cex = 0.75)


# regressão linear
 regDiabetes<- lm(pregnant ~ age, data = PimaIndiansDiabetes )
summary(regDiabetes)


# regressão multilinear
regDiabetes2 <- lm(pregnant ~ age +pressure, data = PimaIndiansDiabetes)
summary(regDiabetes2)

regDiabetes3 <- lm(pregnant ~ age+glucose, data = PimaIndiansDiabetes)
summary(regDiabetes3)




