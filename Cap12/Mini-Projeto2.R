# Mini-Projeto 2 

# Limpeza e Transformação de Dados com Power Query e Linguagem R

# Definindo a pasta de trabalho


# Instala os pacotes
install.packages("dplyr")
install.packages("data.table")
install.packages("ggplot2")

# Carrega os pacotes
library(dplyr)
library(data.table)
library(ggplot2)

# Carrega os dados
# Fonte de dados: https://archive.ics.uci.edu/ml/datasets/iris
dados_iris <- iris
View(dados_iris)

# Tarefa 1 - Sumarizar os dados com as médias de cada coluna de um dataset.
medias_iris <- summarize(group_by(dados_iris, Species),
                        media_sepal_length = mean(Sepal.Length),
                        media_sepal_width = mean(Sepal.Width),
                        media_petal_length = mean(Petal.Length),
                        media_petal_width = mean(Petal.Width))

View(medias_iris)

# Power Query
library(dplyr)

medias_iris <- summarize(group_by(dataset, Species),
                         media_sepal_length = mean(Sepal.Length),
                         media_sepal_width = mean(Sepal.Width),
                         media_petal_length = mean(Petal.Length),
                         media_petal_width = mean(Petal.Width))


# Tarefa 2 - Extrair o valor inteiro de uma das colunas decimais.
dados_iris_id <- dados_iris
View(dados_iris_id)
dados_iris_id <- setDT(dados_iris_id, keep.rownames = TRUE)[]
setnames(dados_iris_id, 1, "id")
dados_iris_id$id <- as.integer(dados_iris_id$id)
View(dados_iris_id)

# Power Query
library(data.table)
dados_iris_id <- data.table(dataset)
dados_iris_id$Sepal.Length <- as.integer(dados_iris_id$Sepal.Length)


# Tarefa 3 - Construir um gráfico mostrando a relação de duas variáveis numéricas para as 3 categorias de uma variável
library(ggplot2)
ggplot(data = dados_iris, aes(x = Petal.Width, y = Petal.Length)) +
  geom_point(aes(color = Species), size = 3) +
  ggtitle("Largura e Comprimento das Pétalas") +
  labs(x = "Largura da Pétala",
       y = "Comprimento da Pétala") +
  theme_bw() +
  theme(title = element_text(size = 15, color = "turquoise4"))

# Cores disponíveis na Linguagem R
colors()
