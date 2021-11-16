dfolhos <- data.frame( "Nome" = c("Joana", "Francisco", "Paulo", "Márcia", "Joaquina", "Bruno"),
                       "Idade" = c(21,30,27,29,40,27),
                       "Cor dos Olhos" = c("Preto","Castanho","Azul","Azul","Preto","Castanho"))

View(dfolhos)
print(dfolhos)

# grafico de barras veritical

olho <- table(dfolhos$Cor.dos.Olhos)

barplot(olho, main = " Olhos", xlab = " Cor", ylab = "quantidade",
        col = c("pink", "light blue","light green" ))


#grafico de barras horizontal
barplot(olho, main = " Olhos", xlab = " Cor", ylab = "quantidade",
        col = c("pink", "light blue","light green"), horiz = TRUE)


# grafico de pizza
fator <- as.factor(dfolhos$Cor.dos.Olhos)

porcentagem <- round(olho/sum(olho)*100,2)
rotulo <- paste(levels(fator), "(",porcentagem, "%",")", ssep = "")

pie(porcentagem, labels = rotulo, 
    main =  "Olhos", col= c("pink", "light blue","light green"))


