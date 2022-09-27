#Estatística Básica

#Parte 4 - Exercícios

#Definindo a pasta de trabalho
#Substitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/Gabri/Documents/PowerBI/DSA/Cap12")
getwd()

#Carregando o dataset
notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

#1 - Resumo dos dados
head(notas)
tail(notas)
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

#2 - Média da turma
mean(notas$TurmaA)
mean(notas$TurmaB)

#3 - Variabilidade
sd(notas$TurmaA)
sd(notas$TurmaB)

#4 - Coeficiente de variação
cv_TurmaA <- ( sd(notas$TurmaA) / mean(notas$TurmaA) ) * 100
cv_TurmaB <- ( sd(notas$TurmaB) / mean(notas$TurmaB) ) * 100

print(cv_TurmaA)
print(cv_TurmaB)

#5 - Moda
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

#Obtendo a Moda da Turma A
resultado_TurmaA <- moda(notas$TurmaA)
print(resultado_TurmaA)

#Obtendo a Moda da Turma B
resultado_TurmaB <- moda(notas$TurmaB)
print(resultado_TurmaB)

