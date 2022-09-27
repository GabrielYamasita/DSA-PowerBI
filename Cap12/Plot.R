setwd("C:/Users/Gabri/Documents/PowerBI/DSA/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Carrega o ggplot2
library(ggplot2)

# Cria o gráfico
?qplot
qplot(Valor, Custo, data = vendas)
