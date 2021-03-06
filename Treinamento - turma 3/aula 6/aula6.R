library(mlbench)
library(e1071)
library(lattice)
library(Amelia)
library(corrplot)
library(caret)
library(ggplot2)
library(outliers)

data("PimaIndiansDiabetes")

#PimaIndiansDiabetes
head(PimaIndiansDiabetes, n=3)

#verificar a dimens�o de dados 
#(linhas,colunas)
dim(PimaIndiansDiabetes)

#verfica os tipos  de dados de cada atributo
sapply(PimaIndiansDiabetes,class)

#estatistica descritiva
summary(PimaIndiansDiabetes)

#frequencia absoluta e relativa
d <- PimaIndiansDiabetes$diabetes

d <- cbind(fAbs=table(d),
           fRel=prop.table(table(d))*100)

# verificar desvio padr�o
sapply(PimaIndiansDiabetes[1:8], sd)

#simetria
apply(PimaIndiansDiabetes[1:8], 2, skewness)
#ou
sapply(PimaIndiansDiabetes[1:8], skewness)

# calcular o valor m�dio 
sapply(PimaIndiansDiabetes[1:8], mean)

# correla��o
correlacao <- cor(PimaIndiansDiabetes[1:8])
print(correlacao)

# grafico de correla��o
cores <- colorRampPalette(c("red","white","blue"))

corrplot(correlacao, order = "AOE",
         method = "square", col=cores(20),
         tl.srt = 45, tl.cex=0.75,
         tl.col="black")

corrplot(correlacao, add=TRUE, type="lower",
         order = "AOE",method = "number",
         col="black",
         diag = FALSE, tl.pos = "n", 
         cl.pos="n", number.cex =0.75 )

#histograma univariado
par(mfrow=c(2,4))
for(i in 1:8){
  hist(PimaIndiansDiabetes[,i],
       main = names(PimaIndiansDiabetes)[i])
}

# grafico de densidade univariado
par(mfrow=c(2,4))
for(i in 1:8){
  plot(density(PimaIndiansDiabetes[,i]),
       main = names(PimaIndiansDiabetes)[i])
}

#boxplot univariado
par(mfrow=c(2,4))
for(i in 1:8){
  boxplot(PimaIndiansDiabetes[,i],
       main = names(PimaIndiansDiabetes)[i])
}


# considerando a correla��o 
#das variaveis
#  escolha qual ou quais voc�
#acredita explicar o 
#fenomeno de diabetes gestacional
#ap�s escolher as variaveis, 
#veja os outliers e possiveis ruidos
# NA
# is.na()
#se tiver os NA tratar os NA
# fazer a regress�o linear ou multipla
#

mean(PimaIndiansDiabetes$age)
outlier(PimaIndiansDiabetes$age)

PimaIndiansDiabetes$age <- round(
  rm.outlier(PimaIndiansDiabetes$age,
             fill=TRUE),0)

outlier(PimaIndiansDiabetes$age, 
        opposite = TRUE)

outlier(PimaIndiansDiabetes$pregnant)

mean(PimaIndiansDiabetes$glucose)
outlier(PimaIndiansDiabetes$glucose)
PimaIndiansDiabetes$glucose <- round(rm.outlier(PimaIndiansDiabetes$glucose, 
           fill = TRUE),0)

PimaIndiansDiabetes$pregnant <- round(
  rm.outlier(PimaIndiansDiabetes$pregnant,
             fill=TRUE),0)


outlier(PimaIndiansDiabetes$triceps)
PimaIndiansDiabetes$triceps <- round(
  rm.outlier(PimaIndiansDiabetes$triceps,
             fill=TRUE),0)

mean(PimaIndiansDiabetes$pressure)
outlier(PimaIndiansDiabetes$pressure)
PimaIndiansDiabetes$pressure<-round(
  rm.outlier(PimaIndiansDiabetes$pressure,
             fill=TRUE),0)


  

##########################################
rl <- lm(pregnant~ age, 
         data = PimaIndiansDiabetes)
summary(rl)

rl1 <- lm(pregnant~ age+pressure, 
         data = PimaIndiansDiabetes)
summary(rl1)


# chance de ter diabestes por meio da 
#glicose atual e triceps
rl2 <- lm(pedigree~glucose+triceps, 
         data = PimaIndiansDiabetes)
summary(rl2)



