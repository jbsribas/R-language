# vetor contendo o nome das pessoas da sua familia
nomeF <- c("Teresa", "Jose", "Eric", "Robson")

# vetor contendo o parentesco/ liação familiar de cada um
parentesco <- c("Mãe","Pai","Irmão","Irmão")

# vetor contendo o nome dos amigos
NomeA <- c("Rafael","Samuel","Thais","Fernanda")

#vetor contendo a idade de cada um
idadeA <- c(31,31,28,25)


# um vetor contendo o nome do pet
nomeP <- c("Nick", "Preta", "Loro", "Marrie")

#contendo o tipo de pet ex. cachorro, 
#gatop, aranha, cobra, etc...
tipo <- c("Gato", "Cachorro", "Papagaio", "Cachorro")

# factor ou fator
factor(parentesco)
factor(idadeA)
factor(tipo)

class(parentesco) # para verificar o tipo de dado
# para verificar se a variavel é um fator
# se ela foi convertida com sucesso
#ou seus niveis / level use o as.factor
as.factor(parentesco) 

## criar Lista

vazia <- list()

com_tudo <- list(idadeA,nomeF,NomeA,nomeP,tipo,
                 vetNum2,vetNum3,vetRep, mat1,
                 mat2, mult, vazia)

vazia
com_tudo

#############################################
#Acessando um indice especifico da estrutura
# vetor nome da variavel []
parentesco[4]

# sempre o tamanho da estrutura de dados
length(parentesco)

# acessar o valor especifico de uma matriz
# o length para saber o volume de estruturas
#bidimensionais não serve
# só informará a quantidade de elementos
length(mat1)
# matriz sempre será [linha, coluna]
mat1[3,2]

##############################################
#acessar a lista
#[[ ]] visualizar o elemento pelo indice
com_tudo[[3]]

# acessando o indice 1 do vetor 
#salvo no elemento 3 da lista
com_tudo[[3]][1]

#acessando a posição 1,2 da matriz salva
#no elemento 10
com_tudo[[10]][1,2]

#############################################
df_familia <- data.frame(nomeF,parentesco)
View(df_familia)

df_amigos <- data.frame(NomeA,idadeA)
View(df_amigos)

df_pet <- data.frame(nomeP,tipo)
View(df_pet)

# função names retorna o nome das colunas 
# de um data frame
names(df_familia)

#renomear as colunas
names(df_familia)<- c("nome","parentesco")
names(df_amigos)<- c("nome","idade")
names(df_pet) <- c("nome","tipo")

names(df_pet[1:2])<- c("Nome","Tipo")

#######################################
