# GRAFICO DE dIPERSÃO

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


#na base de credit fazer a verificação 
#de outliers e sua remoção
#pode ser excluindo ou alterando os valores
#para a media ou mediana
# encontrar algo na base significativo 
#para você criar uma regressão linear simples
# ou multivariada