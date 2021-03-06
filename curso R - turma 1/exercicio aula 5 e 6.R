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
# lista as tr�s primeiras linhas 
head(PimaIndiansDiabetes, n=3)

# fun��o dim = dimens�o retorna a quantidade de linhas e colunas do objeto
dim(PimaIndiansDiabetes)

#Aplica a fun��o class a cada coluna do data frame 
sapply(PimaIndiansDiabetes, class)

#estatistica descritiva

summary(PimaIndiansDiabetes)

#desvio padr�o
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

#correla��o das variaveis / colunas do data frame
correlacao <- cor(PimaIndiansDiabetes[,1:8])

#grafico de correla��o / tabela de correla��o

cores <- colorRampPalette(c("red","white","blue"))

#grafico de correla��o em quadrados coloridos 
#azul positiva, vermelho � uma correla��o negativa
#quanto for a cor mais forte ou signficativa � a correla��o
# quanta mais fraca for a cor, menos sigficativa ou forte � a correla��o
corrplot(correlacao, order = "AOE", method = "square",
         col = cores(20), tl.srt = 45, tl.cex = 0.75,
         tl.col = "black")

corrplot(correlacao, add = TRUE, type = "lower", method = "number",
          order = "AOE", col= "black", diag= FALSE, tl.pos = "n",
         cl.pos="n", number.cex = 0.75)


# regress�o linear
 regDiabetes<- lm(pregnant ~ age, data = PimaIndiansDiabetes )
summary(regDiabetes)


# regress�o multilinear
regDiabetes2 <- lm(pregnant ~ age +pressure, data = PimaIndiansDiabetes)
summary(regDiabetes2)

regDiabetes3 <- lm(pregnant ~ age+glucose, data = PimaIndiansDiabetes)
summary(regDiabetes3)




