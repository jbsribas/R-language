library(ISLR)
library(dbscan)
library(outliers)
library(stats)

data(Wage)
head(Wage)


aptidao <- c(45,81,65,87,68,91,77,61,55,66,82,93,76,83,61,74)
performace <- c(56,74,56,81,75,84,68,52,57,82,73,90,67,79,70,66)

df <- data.frame(aptidao,performace)



consultores.regressao <- lm(performace ~ aptidao, data = df)

summary(consultores.regressao)
# coeficientes
coefficients(consultores.regressao)

#residuos
residuals(consultores.regressao)

#intervalo de confiança
confint(consultores.regressao)


residuals.lm(consultores.regressao)
# valores adequados

fitted(consultores.regressao)

# quando o modelo tiver com um p-valor significativo (maior ou igual 0.5) 
#o modelo pode ser utilizado para fazer predição/estimação 
#utilizando o comando predict

predict(consultores.regressao, data.frame(aptidao = c(85,62)))




##regressão multilinear

personalidade <- c(9,15,11,15,14,19,12,10,9,14,15,14,16,19,15,12)
df2 <- data.frame(aptidao,performace,personalidade)

consultores.reg_multipla <- lm(performace ~ aptidao + personalidade,
                                data = df2)
summary(consultores.reg_multipla)

predict(consultores.reg_multipla, data.frame(aptidao =c(85,62), 
                                             personalidade = c(14,17)))
