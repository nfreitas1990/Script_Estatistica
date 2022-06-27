
# ESTATISTICA
# Junho 2022


# TESTE BIONOMIAL

# - Estatistica não-parametrica;
# - Utiliza distribuição binomial;
# - Utiliza o parametro de proporção para estatística teste;
# - Testa a proporção em uma amostra contra a proporção teórica para 
#   variáveis binárias;
# - A probabilidade de sucesso é constante para cada ensaio;
# - O resultado será completamente aleatório.
# - Existem somente dois possíveis resultados.
# - Todas as tentativas possuem a mesma probabilidade para um resultado em particular.
# - Existe uma probabilidade p de sucesso em cada tentativa.
# - o número de tentativas n é um valor fixo.



# Criterios para a escolha do teste: --------------------------------------
#   1. Tipo de Variável: Nominal - variáveis dicotômicas (apenas 2 categorias
#      possíveis);
#   2. Quantidade da Amostra: 1 amostra pequena (n<30)
#   3. Relação entre variáveis: independentes



# PossibilidadeS Hipoteses: -------------------------------------------------
#  O teste pode ser bilateral, unilateral a esquerda, unilateral a direita

# BILATERAL: Two sided test
# H0: P =60%
# H1: P != 60%

# UNILATERAL A ESQUERDA: Onesided lower-tail test
# H0: P =60%
# H1: P < 60%

# UNILATERAL A DIREITA: Onesided upper-tail test
# H0: P =60%
# H1: P > 60%


# Motivação: --------------------------------------------------------------
# Análise muito usada em questinários, onde a pessoa só pode responder duas 
# opções, exemplo Sim ou Não

# Mesmo uma variável contínua pode ser transformada em binomial. Por exemplo, 
# qual o número de pessoas na universidade com mais de 1.90 de altura. Embora 
# seja um variável continua, podemos colocar como "Acima de 1.90" / "Abaixo 1.90)



# Exemplo aplicação: ------------------------------------------------------

# Em uma pesquisa faz questionarios perguntando se uma pessoa é ou não a favor
# do aborto. De acordo com o conhecimento teórico do pesquisador, ele acha que
# a proporção na população que é a favor do aborto deve ser acima de 60%. Note
# que essa proporção é teórica, tirada do conhecimento ou pesquisas feitas pelo
# pesquisador.

# ***********************************
# Situação 1
# Tamanho Amostral=20
# Nº pessoas favoraveis ao aborto= 14


#  Hipotese 1 - Ho=60% H1!=60
library(stats)
binom.test(x = 14,
           n = 20,
           p = 0.6,
           alternative = "two.sided",
           conf.level = 0.95)


# Exact binomial test
# 
# data:  14 and 20
# number of successes = 14, number of trials = 20, p-value = 0.4947
# alternative hypothesis: true probability of success is not equal to 0.6

# 95 percent confidence interval:
# 0.4572108 0.8810684

#sample estimates:
#probability of success 
#            0.7 


# Resultado: p-valor > 0.05. Logo, não rejeita Ho. Embora tenha observado na
# amostra uma proporção de sucesso de 0.7. como o tamanho amostral é pequeno
# o teste foi conservador.
# O intervalo de confiança está mto amplo: 0.45 até 0.88. Então não rejeita Ho
# Mas estamos dizendo que a proporção verdadeira pode ir de 0.45 até 0.88.


# ***********************************
# Situação 2
# Tamanho Amostral=100
# Nº pessoas favoraveis ao aborto= 70

#  Hipotese 1 - Ho=60% H1!=60
library(stats)
binom.test(x = 70,
           n = 100,
           p = 0.6,
           alternative = "two.sided",
           conf.level = 0.95)

# Exact binomial test
# 
# data:  70 and 100
# number of successes = 70, number of trials = 100, p-value = 0.04154
# alternative hypothesis: true probability of success is not equal to 0.6

# 95 percent confidence interval:
#   0.6001853 0.7875936

# sample estimates:
#   probability of success 
#   0.7 

# Resultado: agora com a mesma proporção (0.7) do que na situação anterior
# mas neste caso o p-valor passa a rejeitar a hipótese nula, pois p-valor 0.04.
# Ao aumentar a amostra aumentamos a confiabilidade do teste. Então o teste nos 
# diz que estes 0.7 da amostra é bem diferente do 0.6 da hipotese nula.
# O intervalo de confianca agora é um pouco menor do que o anterior, mas ainda 
# assim varia de 0.6 até 0.78.


# ***********************************
# Situação 3
# Tamanho Amostral=1000
# Nº pessoas favoraveis ao aborto= 700

#  Hipotese 1 - Ho=60% H1!=60
library(stats)
binom.test(x = 700,
           n = 1000,
           p = 0.6,
           alternative = "two.sided",
           conf.level = 0.95)

# Exact binomial test
# 
# data:  700 and 1000
# number of successes = 700, number of trials = 1000, p-value = 6.038e-11
# alternative hypothesis: true probability of success is not equal to 0.6

# 95 percent confidence interval:
#   0.6705383 0.7282789
# sample estimates:
#   probability of success 
#   0.7 


# Resultado: agora o p-valor deu muito baixo. o teste tem muita certeza em 
# rejeitar Ho. Pq a amostra é grande, e ele consegue ver com certeza que o 0.7 
# amostral é diferente do 0.6 proposto em Ho. O intervalo de confiança agora
# também é muito menor entre 0.67 e 0.72.


# ***********************************
# Situação 4
# Tamanho Amostral=3000
# Nº pessoas favoraveis ao aborto= 2100
#  Hipotese 1 - Ho=60% H1!=60
library(stats)
binom.test(x = 2100,
           n = 3000,
           p = 0.6,
           alternative = "two.sided",
           conf.level = 0.95)

# Exact binomial test
# 
# data:  2100 and 3000
# number of successes = 2100, number of trials = 3000, p-value < 2.2e-16
# alternative hypothesis: true probability of success is not equal to 0.6
# 95 percent confidence interval:
#   0.6832457 0.7163634
# sample estimates:
#   probability of success 
#   0.7 

# Resultado: o pvalor fica ainda menor do que 0.05. e o intervalo de confianca
# também diminui bastante com o aumento da amostra.