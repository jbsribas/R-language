library(dplyr)
#contagem absoluta

iris <- iris

iris %>% group_by(Species)%>%
  tally()

# ou
abso <- table(iris$Species)
cbind("freq" = abso)

#soma da frequencia
cbind("freq" = addmargins(abso))

# frequencia relativa
cbind("frel" = prop.table(abso))

#soma da frequencia relativa
cbind("fr" = addmargins(prop.table(abso)))


par(mfrow = c(1, 2))
barplot(abso, ylab = "Frequência absoluta")
barplot(prop.table(abso), ylab = "Frequência relativa",
        ylim = c(0, .6))
par(mfrow = c(1,1))

pie(abso)


