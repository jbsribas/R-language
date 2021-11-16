##########################
#
#exemplo de script KNN
#
###########################
#install.packages("class")
#Todos os pacotes chamados são instalados
###########################
library(ISLR)
library(dplyr)
library(class)
library(caTools)
library(ggplot2)
##############################
# caravan -  Esse conjunto de dados inclui 86 variáveis 
#onde há dados sociodemográficos (variáveis nas colunas de 1-43)
#e propriedade do produto (variáveis nas colunas de 44-86)
#carregar o dataset da biblioteca ISLR
glimpse(Caravan)

table(Caravan$Purchase)/nrow(Caravan) 
#Foi afirmado acima (linha 20)  que no conjunto de dados, 
#apenas 6% das pessoas compraram apólice de seguro Caravan.

#limpeza dos dados
#verificação de campos NA - dados não atribuidos ou faltantes em branco
any(is.na(Caravan))

#as escalas dos dados estão diferentes,
#faz necessario normalizar e deixar tudo na mesma escala
# Standarize the dataset using "scale()" R function
Caravan[,1:85]<- scale(Caravan[,1:85])

# dados de treinamento e teste
set.seed(1)
divisao <- sample.split(Caravan$MOSTYPE, SplitRatio = 0.75)

Caravan_treinamento <- subset(Caravan, divisao==TRUE) #treinamento
Caravan_teste <- subset(Caravan, divisao==FALSE) # teste

#KNN - biblioteca class
set.seed(1)
previsoes <- knn(train = Caravan_treinamento[,-86], test= Caravan_teste[,-86],cl= Caravan_treinamento[,86],k=1)
head(previsoes)

#Avaliando o modelo e taxa de erro( % de classificação errada):
mean(Caravan_teste[,86] != previsoes)

#Mudando o k, para k=5:
previsoes <- knn(train = Caravan_treinamento[,-86], test= Caravan_teste[,-86],cl= Caravan_treinamento[,86],k=7)
mean(Caravan_teste[,86] != previsoes)

#No lugar de ficar "chutando" valores,pode-se automatizar o processo 
#com um loop. Uma forma de fazer isso é a seguinte:
previsoes = NULL
perc.erro = NULL

for(i in 1:20){
  set.seed(1)
  previsoes = knn(train = Caravan_treinamento[,-86], test= Caravan_teste[,-86],cl= Caravan_treinamento[,86],k=i)
  perc.erro[i] =mean(Caravan_teste[,86] != previsoes)
}

k.values <- 1:20
error.df <- data.frame(perc.erro,k.values)

#visualização
#gráfico k x perc.erro fica melhor a visualização:
ggplot(error.df,aes(x=k.values,y=perc.erro)) + 
  geom_point()+ 
  geom_line(lty="dotted",color='red')


