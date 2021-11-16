library(ggplot2)
library(plotly)
library(gapminder)
library(dplyr)
library(stats)
shiny

data("gapminder")
dim(gapminder)
head(gapminder,3)

gapmax <- subset(gapminder, year == max(year))
dim(gapmax)
g1 <- ggplot(gapmax, 
        aes(gdpPercap,lifeExp ,
           color = continent,
           shape = continent))+
  geom_point()+
  scale_x_log10()+
  scale_color_discrete("Continente")+
  scale_shape_discrete("Continente")+
  labs(title = "Relação entre renda per capita e expctativa de vida",
       x = "renda per capita (log10)",
       y = "expectariva de vida")
ggplotly(g1)


## ajuste nos dados 
# 
gap4 <- aggregate(lifeExp ~ continent + year, 
                  data =gapminder, 
                  FUN = mean)

linha <- ggplot(gap4, aes(year,lifeExp, 
                 color = continent ))+
          geom_line()+
          labs(title = "Evolução da expectativa de vida por continente",
                x = "Ano",
                y = "anos de vida",
                color = "Continente")

ggplotly(linha)


linha2 <- ggplot(gap4, aes(year,lifeExp, 
                          color = continent ))+
  geom_line()+ 
  geom_point(aes(shape=continent))+
  labs(title = "Evolução da expectativa de vida por continente",
       x = "Ano",
       y = "anos de vida",
       color = "Continente")

ggplotly(linha2)


