#
dfOlhos <- data.frame("nome" = c("Joana","Francisco",
                                  "Paulo","Márcia",
                                  "Joaquina","Bruno"),
                       "idade" = c(21,30,27,29,40,27),
                       "cor_dos_olhos" = c("Preto",
                                           "Castanho",
                                           "Azul",
                                           "Azul",
                                           "Preto",
                                           "Castanho"))

############################################################

idade <-c(21,30,27,29,40,27)
nome <- c("Joana","Francisco","Paulo","Márcia",
          "Joaquina","Bruno")
cor.dos.olhos <-c("Preto","Castanho","Azul",
                  "Azul","Preto","Castanho")

df_corOlhos <- data.frame(nome,idade,cor.dos.olhos)

#install.packages("dplyr")

library(dplyr)

dfCurso <- data.frame("nome"=c("Joana", "Maria", "João", "Pedro", "José"),
                      "idade"= c(21,25,28,34,18),
                      "curso"= c("Engenharia","Engenharia","Direito",
                                 "Enfermagem","Engenharia"))


engenharia <- dfCurso %>%  
  #%>%   indica que a função a seguir será aplicada
  # no valor precedente
  filter(curso=="Engenharia")

exemplo <- data.frame("nome" = c("Joana","Maria","Joao","Pedro","Fabio"),
                      "idade" = c(21,25,28,34,18),
                      "qtd_livros" = c(5,1,2,1,3),
                      "faculdade" = c("Engenharia" , "Direito" ,
                                      "Enfermagem" ,
                                      "matematica"  ,"podologia"))

engenharia
 exemplo %>% filter(faculdade=="Engenharia")
 
# colocando mais de uma opção de filtro
dfCurso %>% filter(curso %in% c("Engenharia","Enfermagem"))

#não cria o campo noco somente aplico o calculo
engenharia %>% summarise(mediaI = mean(idade))

# cria um novo campo com o calor que você quiser
engenharia <- engenharia %>% mutate(DP = "NÃO")

# para atribuir essa nova coluna ao data frame 
#faça assim
#dataframe <- dataframe %>% mutate(nomeColuna = valor)

#group_by + tALLY
# agrupa e conta a quantidade de ocorrencias

grupo <- dfCurso %>% 
         group_by(curso)%>% 
         tally()

# group_by sozinho não faz nada



 
              