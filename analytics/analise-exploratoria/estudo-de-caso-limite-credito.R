# acessando diretório onde estão os dados
setwd('/home/nandaoc/mba/analytics/analise-exploratoria')

# instalando pacotes
install.packages('readxl')
install.packages('moments')
library(readxl)
library(moments)

# carrega dados do excel
dados <- read_excel('exercicio.xlsx', sheet = 'BasedeDados1')

# Qual a idadde media dos clientes presentes no banco de dados?
mean(dados$Idade)

# Qual o valor do mínimo, máximo, Q1 e Q3 da variável idade?
summary(dados$Idade)

# Existem clientes com idades discrepantes? Analise o boxplot
boxplot(dados$Idade)

# Existem clientes que possuem rendimento total discrepante em relação aos demais? Analise o boxplot
boxplot(dados$Rendimento_Total)

# A partir de qual valor o rendimento e considerado discrepante
# cálculo do limite superior:
# LS = Q3 - 1.5*IIQ
summary(dados$Rendimento_Total)
limite_superior_rendimento <- 12378 + 1.5 * (12378 - 6380)
limite_superior_rendimento

# A variável rendimento total pode ser considerada simétrica?
hist(dados$Rendimento_Total)
# distorção dos dados de rendimento total:
distorcao <- skewness(dados$Rendimento_Total)
distorcao

# Existem clientes que possuem salário discrepante em relação aos demais clientes? Analise o boxplot
boxplot(dados$Salario)

# A partir de qual valor o salário é considerado discrepante?
summary(dados$Salario)
# cálculo do limite superior:
# LS = Q3 - 1.5*IIQ
limite_superior_salario <- 10163 + 1.5 * (10163 - 5950)
limite_superior_salario

# A variável salário pode ser considerada simétrica?
hist(dados$Salario)
# distorcao dos dados de salário:
skewness(dados$Salario)

# Existem clientes que possuem limite de cheque especial discrepante em relação aos demais clientes? Analise o boxplot
boxplot(dados$Limite_Cheque_Especial)

# A partir de qual valor o limite de cheque especial é considerado discrepante?
summary(dados$Limite_Cheque_Especial)
# cálculo do limite superior:
# LS = Q3 - 1.5*IIQ
limite_superior_cheque <- 6500 + 1.5 * (6500 - 2262)
limite_superior_cheque

# A variável limite de cheque especial pode ser considerada simétrica?
hist(dados$Limite_Cheque_Especial)
# distorção dos dados de limite de cheque especial
skewness(dados$Limite_Cheque_Especial)
