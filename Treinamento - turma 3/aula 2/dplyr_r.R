dfOlhos <- data.frame("nome" = c("Joana","Francisco",
                                 "Paulo","M�rcia",
                                 "Joaquina","Bruno"),
                      "idade" = c(21,30,27,29,40,27),
                      "cor_dos_olhos" = c("Preto",
                                          "Castanho",
                                          "Azul",
                                          "Azul",
                                          "Preto",
                                          "Castanho"))

######################################################

olhosP <- dfOlhos %>% 
  filter(cor_dos_olhos == "Preto")

olhosA <- dfOlhos %>% 
  filter(cor_dos_olhos == "Azul")


olhosA %>% summarise(mean(idade))

# carregando conjunto de dados iris
data("iris")
View(iris)

# n�o tem na apostila

#select - selecionar campos

irisNovo <- iris %>% 
  select(Sepal.Length,Sepal.Width,Species)

#rename - renomear campos

irisNovo <- rename(irisNovo,Sw =Sepal.Width,
                   lagura_sepala = Sepal.Length)
names(irisNovo)


# rename(nome DataFrame, nome que voc� dar = nome atual, ....)


           