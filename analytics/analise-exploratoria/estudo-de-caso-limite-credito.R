# acessando diretório onde estão os dados
setwd('/home/nandaoc/mba/analytics/analise-exploratoria')

# carrega dados do excel
dados <- read_excel('exercicio.xlsx', sheet = 'BasedeDados1')

# exibe a tabela com dados
View(dados)

# dimensão dos dados - linhas e colunas
dim(dados)

# quantidade de linhas
nrow(dados)

# quantidade de colunas
ncol(dados)

# exibe nomes das colunas
names(dados)

# resumo dos dados
summary(dados)

# idade média de clientes
mean(dados$Idade)

# idade mínima
min(dados$Idade)

# idade máxima
max(dados$Idade)

# mediana das idades
median(dados$Idade)
