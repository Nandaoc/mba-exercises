# Análise Exploratória

## Estudo de caso: Limite de Crédito

[Script R](https://github.com/Nandaoc/mba-exercises/blob/main/analytics/analise-exploratoria/estudo-de-caso-limite-credito.R)

1. Qual a idade média dos clientes presentes no banco de dados? 
  - A média de idade é de 60 anos.
2. Qual o valor mínimo, máximo, mediana, Q1 e Q3 da variável idade? Interprete os valores.

  |    | Valor |
  |---------|----|
  | Mediana | 66 |
  | Mínimo  | 30 |
  | Máximo  | 94 |
  | Q1      | 47 |
  | Q3      | 70 |
  -
    A partir desses dados, podemos dizer que 25% das pessoas clientes têm entre 30 e 17 anos de idade, enquanto 55% possuem         entre 47 e 70 anos e 25% têm idade entre 70 e 94 anos.

3. Existem clientes com idades discrepantes? Analise o `boxplot`.
  - Não há valores de idades discrepantes (outlier), o `boxplot` não apresenta nenhum valor que ultrapasse seu limite superior ou   inferior.

4. Existem clientes que possuem rendimento total discrepante em relação aos demais? Analise o boxplot.
  - Sim, há clientes com rendimento total acima do limite superior, como podemos observar pelo `boxplot`.

5. A partir de qual valor o rendimento é considerado discrepante?
  - O valor passa a ser considerado discrepante quando ultrapassa o limite superior ou inferior que pode assumir.
  - No caso do rendimento total, o limite ultrapassado é o superior. 
  - Podemos calcular o limite superior a partir da fórmula a seguir:
    ```
      limite_superior = Q1 + 1.5 * IIQ
    ```
    onde o Q1 é o primeiro quartil, 1.5 é uma constante e o IIQ é o Intervalo Interquartil, obtido pelo cálculo: `Q1 - Q3`.
  - Assim, o valor do rendimento total passa a ser considerado discrepante quando assume valores maiores que 12375.

6. A variável rendimento total pode ser considerada simétrica?
  - Como podemos observar pelo histograma, o rendimento total não pode ser considerado simétrico, pois há uma assimetria à       direita. Seu coeficiente de assimetria, ou distorção, é de 3.8.

7. Existem clientes que possuem salário discrepante em relação aos demais clientes? Analise o boxplot.
  - Sim, há clientes com salário total acima do limite superior, como podemos observar pelo `boxplot`.

8. A partir de qual valor o salário é considerado discrepante?
  - O valor do salário para a ser considerado discrepante quando assume valores maiores que 16482.5.

9. A variável salário pode ser considerada simétrica?
  - Como podemos observar pelo histograma, o salário não pode ser considerado uma variável simétrica, pois possui uma             assimetria à direita. Seu coeficiente de assimetria, ou distorção, é de 3.12.

10. Existem clientes que possuem limite de cheque especial discrepante em relação aos demais clientes? Analise o boxplot.
  - Sim, há clientes com limite de cheque especial acima do limite superior, como podemos observar pelo `boxplot`.

11. A partir de qual valor o limite de cheque especial é considerado discrepante?
  - O valor do limite de cheque especial é considerado discrepante a partir de 12857.

12. A variável limite de cheque especial pode ser considerada simétrica?
  - Como podemos observar pelo histograma, o limite de cheque especial não pode ser considerado uma variável simétrica, pois     possui uma assimetria à direita. Seu coeficiente de assimetria, ou distorção, é de 2.79.


## Estudo de caso: Telecom

[Script R](https://github.com/Nandaoc/mba-exercises/blob/main/analytics/analise-exploratoria/estudo-de-caso-telecom.R)

1. Quantos clientes a base de dados possui? 
  - A base de dados possui 10000 clientes.

2. Quantos são mulheres? E de forma relativa, quantos são mulheres?
  - Há 4543 mulheres, que representam 45.43% do total de clientes.

3. Quais são os valores da média, mediana, mínimo, máximo e quartis do tempo de relacionamento?

  |      | Valor |
  |---------|-----|
  | Mediana | 5000 |
  | Mínimo  | 0000 |
  | Máximo  | 10000 |
  | Q1      | 3000 |
  | Q3      | 7000 |
  
4. Com base na distribuição de frequências do tempo de relacionamento, qual a proporção de clientes que ainda não completaram 1 ano de relacionamento?
  - Ainda não completaram 1 ano de relacionamento 4.13% das pessoas.

5. Qual a proporção de clientes que possuem 10 anos de relacionamento?
  - 4.9% das pessoas possuem 10 anos de relacionamento.

6. Qual o % de clientes que têm 1 produto? E 2 produtos? Utilize a variável Num_de_Produtos.
  - 50.84% das pessoas têm 1 produto e 45.9 possuem 2 produtos.

7. Qual o total de clientes que já cancelaram os produtos? E que não cancelaram? 
  - 7963 das pessoas já cancelaram e 2037 não cancelaram.

8. Qual a frequência relativa de cada categoria? Considere 1 para o cliente que cancelou e 0 para o cliente que não cancelou.
  - A frequência relativa de quem já cancelou é de 79.63% e de quem não cancelou é de 20.37.


## Estudo de caso: Imóveis

[Script R](https://github.com/Nandaoc/mba-exercises/blob/main/analytics/analise-exploratoria/estudo-de-caso-imoveis.R)

1. Faça a distribuição de frequências da variável idade.
  
  | Faixa de Idade | Valor |
  |---------|-----|
  | Até 10 anos | 109 |
  | 10 a 25 anos | 187 |
  | Acima de 25 anos | 117 |

b) Faça a distribuição de frequências da variável região.
c) Faça a distribuição de frequências conjunta entre as variáveis idade do imóvel e região. Você
acredita que a idade do imóvel sofre influência da região? Qual região se destaca por ter imóveis
mais novos (até 10 anos)?
d) Qual o valor do mínimo, máximo, mediana, Q1 e Q3 da variável distância ao metrô? Interprete os
valores.
e) Qual o valor do mínimo, máximo, mediana, Q1 e Q3 da variável valor do imóvel (R$ mil) por m2?
Interprete os valores.
f) Faça o gráfico de dispersão entre a distância ao metrô e o valor do imóvel (R$ mil) por m2. Você
acredita que, em geral, quanto maior a distância do imóvel até o metrô, menor o seu valor?
