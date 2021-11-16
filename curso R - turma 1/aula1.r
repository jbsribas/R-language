###
#desenvolvedor: Jessica
#data: 21/11/2020
#script: aula 1 de R, sobre variaveis e pacotes

###########################################
#manutenção


##############################################
# importação 
#install.packages("forecast")


##########################################
#instanciar (usar utilizar, setar, indicar o uso ) as bibliotecas / pacote
library(forecast)
library(dplyr)
library(plyr)

names(iris_txt) <- c("sepal_length", "sepal_width", "petal_length", "petal_width", "class")


summary(iris_txt) # analise exploratoria de dados


mean(iris_txt$sepal_length) # função média

mapply(mean, iris_txt[1:4]) # aplicando a função média em todas as colunas com saida em dataframe

lapply(iris_txt[1:4], mean) # aplicando a função média em todas as colunas com saida em lista







