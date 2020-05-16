
# Mini Projeto: Descobrindo o perfil de voto no seu estado

## Definição

# Usando dados do STE a partir do pacote `electionsBR` iremos responder as seguintes perguntas sobre candidatos a deputados do seu estado:
#
# - Qual a distribuição de idade entre os candidatos
#
# - Qual a proporção entre sexos dos candidatos?
#
# - Qual é o grau de instrução dos candidatos
#
# - Qual é a proporção de cor entre os candidatos

## Base de dados

# A base de dados vem do pacote `electionsBR`, na qual teremos que baixar e carregar no R

#install.packages("electionsBR")
#library(electionsBR)

# Agora você irá definir o estado que você quer analisar.
# Para isso, bastar colocar na varivel Estado no chunck abaixo a sigla (Em maiúsculo do mesmo)

# Exemplo para o Rio de Janeiro

Estado <- "RJ"

# Exemplo para Bahia

Estado <- "BA"


# Feito isso, agora você irá definir o Ano da eleição a ser analisado.
# Lembrando que eleições de deputados ocorrem de 4 em 4 anos e o último ano foi em 2018.

# Exemplo

Ano <- 2018


# Definido o Ano e o Estado, agora iremos fazer o download respectivo dos dados.
# Para isso usaremos a função `candidate_fed()`. Iremos gravar os dados na variavel df_candidatos

#df_candidatos <- candidate_fed(year = Ano,uf = Estado)


# Para que você não precisa baixar toda vez a mesma base de dados,
# iremos grava-la em um arquivo txt

#write.csv(df_candidatos,"df_candidatos.csv")

# Quando quiser importar os dados é só usar a função read.csv("df_candidatos.csv")

#df_candidatos <- read.csv("df_candidatos.csv")


## Visualizando a base de dados

# Vocês podem visualizar a base de dados usando aquelas funções que aprendemos na aula 1

# Primeiras linhas
head(df_candidatos)

# Nome das colunas
names(df_candidatos)

# Estrutura do data frame
str(df_candidatos)

# N° colunas
ncol(df_candidatos)

# N° Linhas
nrow(df_candidatos)

# Respondendo as perguntas
# Primeiro iremos carregar um pacote essencial
library(tidyverse)

### Qual a distribuição de idade entre os candidatos

# Coluna de interesse: IDADE_DATA_POSSE
#
# Normalmente quando queremos ver a distribuição dos dados, usamos um desses tipos de gráficos:
#
# O Histograma, que mede a frequencia das classes dos nossos dados, ou seja a idade deles.
#
# O Box-Plot, que mede os percentis da nossa distribuição.
#
# Você pode escolher um dos dois para visualizar a distribuição dos dados.
#
# Plano:
#
# 1. Se você não sabe como é um histograma ou box plot, de um google
# 2. Defina os eixos do gráfico (camada 1). Dica: O histograma só pede o eixo X
# 3. Procure saber qual a função do ggplot2 gera um hist ou boxplot de acordo com oq você escolheu (camada 2)
# 4. Coloque os aesthesics no seu gráfico (opcional)
# 5. Grave esse gráfico na variável g1


## Escreva o código aqui ##











## Fim do código ##

### Qual a proporção entre sexos dos candidatos?

# Colunas de Interesse: DESCRICAO_SEXO
#
# No exercício anterior, você não realizou nenhuma tarefa de manipulação de dados no data frame.
# Porém agora você terá que realizar um agrupamento dos dados para obter a proporção entre masculino e feminino.
#
# Plano
#
# 1. Use a função count() para realizar a contagem entre os sexos
# 2. Use a função mutate para criar uma coluna que calculará a porcentagem entre masculino e feminino.
# Quebre um pouco a cabeça para pensar nessa formula, use o google.
# 3. Defina os eixos do seu gráfico (Camada 1)
# 4. Defina o formato do seu gráfico (Camada 2)
# 5. Coloque os aesthesics (Opcional)
# 6. Grave o gráfico na variavel g2

## Escreva o código aqui ##











## Fim do código ##


### Qual é o grau de instrução dos candidatos

# Coluna de Interesse: DESCRICAO_GRAU_INSTRUCAO
#
# Exercicio muito semelhante ao último
#
# Plano
#
# 1. Use a função count() para realizar a contagem entre os graus
# 2. Use a função mutate para criar uma coluna que calculará a porcentagem
# 3. Defina os eixos do seu gráfico (Camada 1).
# Aqui vai uma dica, quando você for definir o eixo x, use a função reorder(nome do eixo x, nome do eixo y).
# Ela irá ordenar o seu gráfico. Ex: ggplot(aes(x = reorder(nome_eixo_x,nome_eixo_y),y = nome_eixo_y))
# 4. Defina o formato do seu gráfico (Camada 2)
# 5. Vire os eixos do seu gráfico usando a função coord_flip
# 6. Use aesthesics (opcional)
# 7. Grave o gráfico na variavel g3



## Escreva o código aqui ##













## Fim do código ##



### Qual é a proporção de cor entre os candidatos

# Coluna de Interesse: DESCRICAO_COR_RACA
#
# 1. Use a função count() para realizar a contagem entre as cores
# 2. Use a função mutate para criar uma coluna que calculará a porcentagem entre cores.
# 3. Defina os eixos do seu gráfico (Camada 1).
# 4. Defina o formato do seu gráfico (Camada 2)
# 5. Use aesthesics (opcional)
# 6. Grave o gráfico na variavel g4


## Escreva o código aqui ##












## Fim do código ##


## Final
# instale o pacote abaixo

#install.packages("flexdashboard")
#install.packages("plotly")


