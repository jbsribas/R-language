# GRAFICO DE dIPERS�O

#BOXPLOT

# PCOTE OUTLIERS
library(ISLR)
library(outliers)

data("Credit")
View(Credit)

names(Credit)

boxplot(Credit)

outlier(Credit$Limit)
outlier(Credit$Limit, opposite = TRUE)


#na base de credit fazer a verifica��o 
#de outliers e sua remo��o
#pode ser excluindo ou alterando os valores
#para a media ou mediana
# encontrar algo na base significativo 
#para voc� criar uma regress�o linear simples
# ou multivariada