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

