# acessando diretório onde estão os dados
setwd('/home/nandaoc/mba/analytics/analise-exploratoria')

# instalando pacotes
install.packages('readxl')
library(readxl)

# carrega dados excel
dados <- read_excel('exercicio.xlsx', sheet = 'BasedeDados2')

# Quantos clientes a base de dados possui?
nrow(dados)

# Quantos são mulheres?
table(dados$Sexo)

# De forma relativa, quantos são mulheres? 
prop.table(table(dados$Sexo))

# Quais são os valores da média, mediana, mínimo, máximo e quartis do tempo de relacionamento em anos?
summary(dados$Tempo_Relacionamento_Anos)

# Com base na distribuição de frequências do tempo de relacionamento, qual a proporção de clientes que ainda não completaram um ano de relaiconamento? 
# Qual a proporção de clientes que possuem 10 anos de relacionamento?
prop.table(table(dados$Tempo_Relacionamento_Anos))

# Qual o percentual de clientes que tem 1 produto? e 2 produtos? Utilize a variável Num_deProdutos
prop.table(table(dados$Num_de_Produtos))

# Qual o total de clientes que já cancelaram os produtos? E que não cancelaram?
table(dados$Cancelou)

# Qual a frequência relativa de cada categoria? Considere 1 para o cliente que cancelou e 0 para o cliente que não cancelou?
prop.table(table(dados$Cancelou))
