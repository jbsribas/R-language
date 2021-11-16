#Descrever o objetivo de seu script

#######################################
# nome do criador
# data
#controle de alterações

###########################################
#incluedes de bibliotecas ou instações de pacote

install.packages(rnn)

library(dplyr)
library(Amelia)
library(rnn)
library(readr)

################################################
# pesquisa no help usando o comando ?
?rnn

#Para usar o ? e a biblioteca não for do Rbase deve-se 
#chamar a biblioteca no library


####################################################
#Verificar o diretório (pasta) corrente
getwd()

#Alterar o diretório (pasta)
setwd("C:/Users/jessi/Documents/Impacta Treinamentos/Turma 2")

#### import de arquivo csv

iris <- read_csv("iris.csv", col_names = FALSE)
View(iris)

# import arquivo direto da internet
url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data"

teste <- read_csv(url, col_names = FALSE)
View(teste)
names(iris) <- c("sepal_length", "sepal_width", 
                 "petal_length", "petal_width", "class")

names(iris) <- c("v1","v2","v3","v4","class")

preciso <- data.frame(iris$X1, iris$X5)
names(preciso) <- c("valor 1", "valor 5")

summary(iris)

mean(iris$sepal_length)

#criar um vetor função ou comando c (minusculo)

vet <- c(1,2,3,4,5)
vet2 <- c("1","2","3","4","5")
vet3 <- c(1,2,3,"texto1","texto2")

class(vet)

class(vet2)

class(vet3)

#lista em R comando list

lista1<-  list(1,2,"texto","texto 2", "lalala" )

lista2 <- list(vet, vet2, vet3)
 
#matriz comando matrix

dados <- c(1,2,3,4)
matriz1 <- matrix(dados, nrow = 2)
matriz2 <- matrix(dados, nrow = 2, byrow = TRUE)

matriz1[1,2] # indice i = coluna , j = linha  matrix[i,j]
matriz2[1,2]

class(matriz1)
#Data Frame comando data.frame estrutura de dados em tabela, 
#pode haver tipos diferentes em cada coluna

df <- data.frame(titulo1 = c(" Teste", "amora", "laranja", "sei la"),
                 valor2 = c(1,2,3,4),
                 erro = c(3,2,1,10))
df2 <-data.frame(vet, vet2, vet3) 
class(df$titulo1)
df