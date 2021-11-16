#install.packages("ggplot2")
#install.packages("gapminder)
library(ggplot2)
library(gapminder)

ggplot(iris, 
       aes(Sepal.Length, 
           Sepal.Width, 
           colour= Species))+
geom_point()

iris$Species

#grafico de barras


ggplot(iris,
       aes(Species, 
           #colour = Species, 
           fill = factor(Species)))+
# mudar a cor num grafico de barras 
  #uiliza o fill
  # se for fixa ou aleatória
  #coloca dentro do proprio 
  #geom_bar
  #se for vinculado aos dados
  #mapeados coloca dentro
  #aes, se a coluna não for numerica
  #utilize a conversão factor
  # tipo de grafico
geom_bar()+ 
#para colcoar titulo e editar eixos
labs(title= " Iris", 
     y = "Qtde",
     x = "Especies")


# grafico de barras horizontais

data(diamonds)
View(diamonds)

ggplot(diamonds, 
       aes(depth, price,
           fill= factor(cut)))+
geom_col(position = "dodge")+
coord_flip()+ # mudar de posição
labs(title="Diamantes",
    x = "não sei",
    y = "preço ")


#graficos de linha
data(economics_long)
View(economics_long)

ggplot(economics_long, 
       aes(date,value))+
  geom_line()
data(gapminder)
View(gapminder)


gag <- aggregate(lifeExp ~ continent +year, data = gapminder)
ggplot(gapminder,
       aes(x =year,
           y = lifeExp,
           color = continent))+
  geom_line()+
  labs(title="Expectativa de vida por continente",
         x = "Ano", y = "anos de vida", 
         color="Continente")

x <- seq(0:50)
y <- cos(x)
z <- sin(x)
w <- tan(x) 

trig <- data.frame(x,y,w,z)

ggplot(trig, aes(x,y))+
  geom_line(color = "violet")+
  geom_point(color = "violet",
             shape="diamond")+
  labs(title="Trigonometria")+
  theme_classic()

#x funcao valor
#1  sin     1
#.. cos   -1
#.. tan     0
texto <- c("cosseno")
df1 <- data.frame(x,"func" = y,texto)
texto <- c("seno")
df2 <- data.frame(x,"func" = z,texto)
texto <- c("tangente")
df3 <- data.frame(x,"func" = w,texto)
dados <- bind_rows(df1,df2)

ggplot(dados, aes(x,func, 
                  colour = factor(texto)))+
  geom_line()+
  labs(title ="trigonometria",
       colour = "Texto")



