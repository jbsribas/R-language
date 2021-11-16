library(ISLR)
library(dbscan)
library(outliers)
library(stats)
library(dplyr)

data(Wage)
View(Wage)

outlier(Wage$wage, opposite = TRUE)

outlier(Wage$logwage, opposite = TRUE)

outlier(Wage$age), opposite = TRUE)


out

        
dbscan(
