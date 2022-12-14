#Estat?stica B?sica

#Parte 1 - Medidas de Posi??o

#Definindo a pasta de trabalho
#Substitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/Gabri/Documents/PowerBI/DSA/Cap12")
getwd()

#Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

#Resumo do dataset

View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

#M?dia
?mean
mean(vendas$Valor)
mean(vendas$Custo)

#M?dia Ponderada
?weighted.mean
weighted.mean(vendas$Valor, w = vendas$Custo)

#Mediana
?median
median(vendas$Valor)
median(vendas$Custo)

#Moda
#Criando uma fun??o
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

#Obtendo a Moda
resultado <- moda(vendas$Valor)
print(resultado)


#Criando gr?fico de M?dia de Valor por Estado com ggplot2
install.packages("ggplot2")
library(ggplot2)

#Cria o gr?fico
ggplot(vendas) +
  stat_summary(aes(x = Estado,
                   y = Valor),
               fun = mean,
               geom = "bar",
               fill = "lightgreen",
               col = "grey50") +
  labs(title = "M?dia de Valor por Estado")

