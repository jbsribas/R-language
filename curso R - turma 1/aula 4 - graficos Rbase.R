library(car)
library(dplyr)

carros <- mtcars

plot(carros$wt, carros$mpg, 
     main = "Grafico de pontos ou dispers�o",
     xlab = "Peso do carro",
     ylab="Milhas por gall�o",
     pch=19)

#grafico de linhas Rbase
x<- seq(1:10)

plot(x, sin(x),
     main="duas linhas",
     ylab="",
     type="l",
     col="blue")
lines(x,cos(x), col="red")
legend("topleft",
       c("sin(x)","cos(x)"),
       fill=c("blue","red"))

# histograma Rbase
hist(iris$Sepal.Length,col="orange",
     main= "Tamanho da S�pala Iris",
     xlab= "S�pala",
     ylab = "frequ�ncia")

#Caso queira ver o histograma de todas as colunas da base �ris de uma vez,
#ser� necess�rio a utiliza��o da fun��o "par(mfrow= c(linha,coluna))", 

par(mfrow=c(2,2))
for(i in 1:4) {
  hist(iris[,i], main=names(iris)[i])
}

#boxplot Rbase 
boxplot(iris, col =c("light blue","pink","brown","light green","red"),
        main = "data set Iris")






