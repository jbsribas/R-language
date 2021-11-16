library(stats)
library(ggplot2)
library(outliers)

aptidao <- c(45,81,65,87,68,91,77,61,
             55,66,82,93,76,83,61,74)

performace <- c(56,74,56,81,75,84,68,
                52,57,82,73,90,67,
                79,70,66)

df_consultor <- data.frame(aptidao,
                           performace)

# salavar os resultados da 
#função lm em uma variavel 
regressao <- lm(performace ~ aptidao, 
   data = df_consultor )

summary(regressao)

#pegar somente os coeficientes
coefficients(regressao)

#intervalo de confiança
confint(regressao)

#valores adequados
fitted(regressao)

# residuos
residuals(regressao)

# predição
predict(regressao, 
        data.frame("aptidao" = c(85,62)))

data("iris")
regressao1 <- lm(Species ~
                Sepal.Length,
                data = iris)

predict(regressao1, 
       data.frame("Sepal.Length"=c(0.45,0.7)))


#exemplo 2 

x <- seq(1,10)
y <- c(2,5,8,5,3,9,10,12,9,7)

regressao3 <- lm(x ~ y)

summary(regressao3)

# teste de normalidade
# para regressão linear ou
#regressaõ generalizada
shapiro.test(rstudent(regressao3))

#Analise visual para homogeneidade
#dos residuos
#(eles devem distribuir igualmente
#abaixo da linha)
plot(rstudent(regressao3) ~ 
       fitted(regressao3),
     pch=19)
# linha tracejado para separaçao
abline(h=0, lty = 2)

# analise grafica dos dados ou da base
plot(x~y, pch=19)
abline(regressao3, lty=2)
#lty = tipo de linha


# outliers
#visualização outlier gráfica
boxplot(iris)

plot(iris$Petal.Length, 
     iris$Sepal.Width)

#valores de outliers superior
outlier(iris$Sepal.Width)

#valores de outliers inferior
outlier(iris$Sepal.Width, 
        opposite = TRUE)

# retorna false para os
#valores dentro do intervalo 
#"normais" e true para o outilier 
outlier(iris$Sepal.Width,
        logical = TRUE)


outlier(iris$Sepal.Width,
        logical = TRUE, 
        opposite = TRUE)

# remover outlier
iris$Sepal.Width <- 
  round(rm.outlier(iris$Sepal.Width, 
           fill = TRUE),1)

iris$Sepal.Width <- 
round(rm.outlier(iris$Sepal.Width, 
                fill = TRUE,
                opposite = TRUE),1)

## Regressão linear multipla

personalidade <- c(9,15,11,15,14,19,
                   12,10,9,14,15,14,
                   16,19,15,12)

#incluir uma coluna nova no DF
#por meio de um vetor
df_consultor["personalidade"]<- personalidade
View(df_consultor)

# construção do modelo de regressão multipla
multipla <- lm(performace ~ aptidao+personalidade,
   data=df_consultor)

summary(multipla)

coefficients(multipla)
residuals(multipla)

predict(multipla,
        data.frame("aptidao"=c(85,62),
                   "personalidade" = c(14,17)))

# fazer na primeira regressão linear
#aptidão ~performace
#fazer o teste de normalidade de shapiro
# e a verificação gráfica dos residuos

regressaoE <- lm(aptidao ~ performace, 
                 data=df_consultor)
summary(regressaoE)
shapiro.test(rstudent(regressaoE))

#Analise visual para homogeneidade
#dos residuos
#(eles devem distribuir igualmente
#abaixo da linha)
plot(rstudent(regressaoE) ~ 
       fitted(regressaoE),
     pch=19)
# linha tracejado para separaçao
abline(h=0, lty = 2)

# analise grafica dos dados ou da base
plot(aptidao~performace, pch=19)
abline(regressaoE, lty=2)

# fazer na multivariada 
# aptidão ~ performace + personalidade

multiE <- lm(aptidao ~ performace+personalidade,
             data = df_consultor)

summary(multiE)

predicao <- predict(regressaoE, 
        data.frame('performace'=
                     c(50,62,74,89,94)))
x = c(50,62,74,89,94)

plot(x ~predicao, pch = 19, 
     xlab = "performace")
abline(regressaoE)

# precisa de um grafico 3d
predicaoM <- predict( multiE,
                      data.frame('performace'=
                                   c(50,62,74,89,94),
                                 'personalidade' =
                                   c(10,15,19,7,6)))

