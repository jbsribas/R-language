library(ISLR)
library(dbscan)
library(outliers)
library(stats)

aptidao <- c(45,81,65,87,68,91,77,61,55,66,82,93,76,83,61,74)
performace <- c(56,74,56,81,75,84,68,52,57,82,73,90,67,79,70,66)

df <- data.frame(aptidao,performace)

# modelo <- lm(variavel dependente ~variavel independente, dados entrada)
regressaol <- lm(performace ~ aptidao, data = df)

#regressaol <- lm(aptidao~performace+ variavel- variavel ,
#                 data = df)

summary(regressaol)

coefficients(regressaol) # coeficientes 
confint(regressaol) # intervalo de confiança
fitted(regressaol) # valores adequados
residuals(regressaol) # residuos

entrada <- data.frame("aptidao" = c(85,62))
View(entrada)
predicao <- predict(consultores.regressao, 
                    data.frame(aptidao= c(85,62)))

personalidade <- c(9, 15,11,15,14,19,12,10,9,14,15,14,16,19,15,12)
# incluir a coluna personalidade no data frame ja existente
df["personalidade"] = personalidade  
View(df)
df


regressaoM <- lm(performace ~ aptidao + personalidade,
                 data = df)
regressaoM

summary(regressaoM)

coefficients(regressaoM) # coeficientes 
confint(regressaoM) # intervalo de confiança
fitted(regressaoM) # valores adequados
residuals(regressaoM) # residuos


entradaM <- data.frame("aptidao" = c(85,62),
                       "personalidade" = c(14,17))
predicaoM <- predict(regressaoM, entradaM)
predicaoM
predicao