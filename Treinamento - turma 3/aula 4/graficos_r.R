library(car)
library(dplyr)

##############################################################
dfOlhos <- data.frame("nome" = c("Joana","Francisco",
                                 "Paulo","Márcia",
                                 "Joaquina","Bruno"),
                      "idade" = c(21,30,27,29,40,27),
                      "cor_dos_olhos" = c("Preto",
                                          "Castanho",
                                          "Azul",
                                          "Azul",
                                          "Preto","Castanho"))


##############################
#graficos de barras

contOlho <- table(dfOlhos$cor_dos_olhos)

barplot(contOlho, 
        main = "Cor Olhos",
        col = c("blue", "yellow", "green"),
        xlab = " cor dos olhos", 
        ylab= " Qtde")

barplot(contOlho, 
        main = "Cor Olhos",
        col = c("blue", "yellow", "green"),
        xlab = " cor dos olhos", 
        ylab= " Qtde",
        horiz = TRUE)

###################################
#grafico de pizza

perc <- round(contOlho/sum(contOlho)*100,2)
nome <- levels(as.factor(dfOlhos$cor_dos_olhos))
rotulo <- paste(nome,perc,"%", sep = " ")

pie(contOlho,
    main = "Cor dos olhos",
    col = c("red", "blue", "green"),
    labels = rotulo)

#Faça um histograma 
#e um boxplot para a base de 
#dados mtcars
carros <- mtcars
names(carros)
hist(carros[,2], main="cyl")

par(mfrow = c(2,3))
for( i in 1:6){
    hist(carros[,i], 
         main = names(carros)[i])
}

View(carros)

boxplot(carros, main="Carros")

car2 <- carros %>%
    select(cyl, drat, wt, vs, am)

boxplot(car2, main= "car2")

##################################
#dispersão
iris <- iris

plot(iris$Sepal.Length, iris$Sepal.Width,
     main = "Iris flower",
     col = "green",
     pch = 3)


