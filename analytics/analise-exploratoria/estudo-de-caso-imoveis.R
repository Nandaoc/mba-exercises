# acessando diretório onde estão os dados
setwd('/home/nandaoc/mba/analytics/analise-exploratoria')

# instalando pacotes
install.packages('readxl')
library(readxl)

# carrega dados excel
dados <- read_excel('exercicio.xlsx', sheet = 'BasedeDados3')


# Faça a distribuição de frequências da variável idade
table(dados$Idade_imovel)


# Faça a distribuição de frequências da variável idade
table(dados$Regiao)

# Faça a distribuição de frequências conjunta entre as variáveis idade so imóvel e região. Você acredita que a idade do imóvel sofre influência da região?
table(dados$Idade_imovel, dados$Regiao)

# Qual o valor mínimo, máximo, mediana, Q1 e Q2 da variável distância ao metrô? Interprete os valores
summary(dados$Distancia_metro_Km)

# Qual o valor mínimo, máximo, mediana, Q1 e Q3 da variável do imóvel (R$ mil) por metro quadrado? Interprete os valores
summary(dados$Mil_reais_m2)

# Faça o gráfico de dispersão entre a distância ao metrô e o valor do imóvel (R$ mil) por metro quadrado. Você acredita que, em geral, quanto maior a distância do imóvel até o metrô, menor seu valor?
plot(dados$Distancia_metro_Km, dados$Mil_reais_m2)
