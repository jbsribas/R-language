vetorum <- seq(0,50)
vetordois <- seq(0,10)

repeticao <- rep(vetorum,5)

soma <- vetorum + vetordois
soma2 <- sum(vetorum + vetordois)

soma3 <- vetorum + vetorum


corcarro <- c( 1, 2, 3, 4, 2, 4, 3, 1)
corcarro <- factor(corcarro)

levels(corcarro)<- c("preto", "prata", "branco", "amarelo", "azul", "vermelho")

corcarro

lista <- list(corcarro, soma3, vetorNum,  repeticao, m2, m1, "lalalalaalallaallaal pra vc")

lista[[5]]

 #vetor [indice]
 #matriz[linha, coluna]
 #lista [[nivel ou item]]


dframe <- data.frame("nome" = c("maria", "joão", "antonio", "josé", "joaquina"),  
                     "idade" = c(5, 8, 2, 10, 7),
                      "sala" = c(1,10,3,5,6))

View(dframe)
print(dframe)


dframe2 <- data.frame(c(1,2,3,4), 
                     c("batata", "carne", "arroz", "feijão"),
                     c("segunda","terça","quarta","quinta"))

names(dframe2) <- c("id","prato", "dia")
print(dframe2)


dfolhos <- data.frame( "Nome" = c("Joana", "Francisco", "Paulo", "Márcia", "Joaquina", "Bruno"),
                       "Idade" = c(21,30,27,29,40,27),
                       "Cor dos Olhos" = c("Preto","Castanho","Azul","Azul","Preto","Castanho"))

View(dfolhos)
print(dfolhos)

#install.packages('dplyr'). # pacote para manipulação de dados

library(dplyr)


dfEdu <- data.frame("Nome" = c("Joana", "Maria", "João", "Pedro", "José"),
                    "Idade" = c(21,25,28,34,18),
                    "Curso Faculdade" = c("Engenharia", "Engenharia", "Direito","Enfermagem", "Enfermagem"))


# comando filter 

engenharia <- dfEdu %>% filter(Curso.Faculdade == "Engenharia")

enfermagem <- dfEdu %>% filter(Curso.Faculdade == "Enfermagem")

direito <- dfEdu %>% filter(Curso.Faculdade == "Direito")

#comando summarise 
sumarizado <- dfEdu %>%summarise(media_idade = mean(Idade))

#mutate (adiciona coluna por meio do calculo da media de notas) + filter
mediaEngenharia <- dfEdu %>% 
                            filter(Curso.Faculdade == "Engenharia")%>% 
                            mutate(media_idade = mean(Idade))

grupo <- dfEdu %>% group_by(Curso.Faculdade) %>% tally()


###############################

library(randomForest)
data("iris")


irisRandom <- randomForest(Species ~ Petal.Width +  Petal.Length, data = iris,  
                           prox = TRUE)

irisRandom2 <- randomForest(class ~ petal_width +  petal_length, data = iris_txt,  
                           prox = TRUE)

iris_txt$class <- factor(iris_txt$class)

irisRandom3 <- randomForest(iris_txt$class ~ iris_txt$petal_width +  iris_txt$petal_length, 
                            data = iris_txt,  
                            prox = TRUE)


