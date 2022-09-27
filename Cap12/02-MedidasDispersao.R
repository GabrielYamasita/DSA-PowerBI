#Estatística Básica

#Parte - 2 Medidas de Dispersão

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

#Variância
var(vendas$Valor)

#Desvio Padrão
sd(vendas$Valor)
