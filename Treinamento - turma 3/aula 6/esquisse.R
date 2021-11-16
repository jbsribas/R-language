library(esquisse)
library(ggplot2)
library(ISLR)

esquisser()

data("iris")

library(ggplot2)

barrasV<- ggplot(iris) +
        aes(x = Species, fill = Species) +
        geom_bar(position = "dodge") +
        scale_fill_brewer(palette = "YlOrRd", 
        direction = 1) +
        labs(x = "Especies", y = "Quantidade", title = "Grafico de barras", fill = "Especie") +
        coord_flip() +
        theme_minimal()

#######################


barras<- ggplot(iris) +
  aes(x = Species, fill = Species) +
  geom_bar() +
  scale_fill_brewer(palette = "YlOrRd", 
                    direction = 3) +
  labs(x = "Especies", y = "Quantidade", title = "Grafico de barras", fill = "Especie") +
  theme_minimal()

quadrado <- ggplot(iris) +
            aes(x = Sepal.Length, y = Sepal.Width, colour = Species) +
            geom_point(shape = "square filled", 
            size = 1.5) +
            scale_color_manual(values = c(setosa = "#FF99CC",
                                          versicolor = "#FD8D3C", virginica = "#800026")) +
            labs(title = "Grafico de dispersão") +
            theme_bw()

barras2 <- ggplot(Credit) +
           aes(x = Ethnicity, fill = Married) +
            geom_bar() +
            scale_fill_manual(values = c(No = "#FFFFCC", 
            Yes = "#800026")) +
            theme_minimal()

boxplot<- ggplot(Credit) +
          aes(x = "", y = Income, fill = Gender) +
          geom_boxplot(shape = "circle") +
          scale_fill_manual(values = c(` Male` = "#FFFFCC", 
          Female = "#800026")) +
          theme_minimal()

linhas <- ggplot(Credit) +
          aes(x = Income, y = Age, colour = Ethnicity) +
          geom_line(size = 0.5) +
          scale_color_manual(values = c(`African American` = "#FCFBFD", 
          Asian = "#9E9AC8", Caucasian = "#3F007D")) +
          theme_dark() +
          facet_wrap(vars(Ethnicity))



browser<- ggplot(Credit) +
 aes(x = Income, y = Age, colour = Gender) +
 geom_point(shape = "circle", size = 1.5) +
 geom_smooth(span = 0.75) +
 scale_color_hue(direction = 1) +
 scale_x_continuous(trans = "log10") +
 scale_y_continuous(trans = "log10") +
 theme_minimal()

library(ggplot2)

ggplot(pokemon.csv) +
 aes(x = Attack, y = Defence, colour = Total) +
 geom_point(shape = "asterisk", size = 2.5) +
 scale_color_distiller(palette = "PuRd", direction = 1) +
 labs(title = "Pokemon") +
 theme_dark()


esquisser(viewer = "pane")


