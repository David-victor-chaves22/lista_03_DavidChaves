# Questao 01: link: https://github.com/David-victor-chaves22/lista_03_DavidChaves.git

# questao 02:

x <- c(2:10)
y <- c(2:20)
# X e um objeto que varia de 2 a 10;
# Y e um objeto que varia de 2 a 20;

z<- x+y
sum(z)
# z e um objeto cujo seu valor representa a soma dos objetos x e y;

cpf_David_chaves <- 11354134443
# cpf_David_chaves é um objeto contendo o nÃºmero de meu cpf;

z*cpf_David_chaves
# A operacao acima representa a multiplicaÃ§Ã£o do objeto z pelo objeto cpf.
## 45416537772  68124806658  90833075544 113541344430 136249613316 158957882202 181666151088 204374419974 227082688860 147603747759 170312016645 193020285531 215728554417 238436823303 261145092189 283853361075 306561629961 329269898847 249790957746


# QuestÃ£o 03:

data("mtcars")
? mtcars
? data
# com o comando data("mtcars") e possivel abrir a base de dado mtcars e utilizala
# com ? mtcars e possivel conhecer a base, sua descrição, uso e formato o que ela que existem 32 Observacoes com 11 variaveis numericas

View(mtcars)
# com o comando View(mtcars) é possivel visualizar a base

class(mtcars$mpg)
class(mtcars$cyl)
class(mtcars$disp)
class(mtcars$hp)
class(mtcars$drat)
class(mtcars$wt)
class(mtcars$qsec)
class(mtcars$vs)
class(mtcars$am)
class(mtcars$gear)
class(mtcars$carb)
# o comando class(mtcars$variavel) confirma as informações de ? mtcars, todas variaveis sao numericas

? dim
dim(mtcars)
## [1] 32 11
# a base mtcars possui 32 observações com 11 variavaies numericas, tal resultado poderia ser sido obtido com os comandos nrow(mtcars) e ncol(mtcars)

mtcars[3 ]
# imprime a terceira coluna da base;

mtcars[2, ]
# imprime a segunda linha da base, o sinal de vigula indica linha

mtcars[4,2]
## [1] 6
# o quarto elemento de "cly" (coluna 02) e seis, o número de cilindros do Hornet 4 Drive 


summary(mtcars)
? summary
# Com o comando summary(mtcars) e possivel conhecer como se comportam as variaveis da base de acordo com descricao estatistica basica, sendo elas:

##    mpg             cyl             disp             hp             drat      
## Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0   Min.   :2.760  
## 1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5   1st Qu.:3.080  
## Median :19.20   Median :6.000   Median :196.3   Median :123.0   Median :3.695  
## Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7   Mean   :3.597  
## 3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0   3rd Qu.:3.920  
## Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0   Max.   :4.930  
##     wt             qsec             vs               am              gear      
## Min.   :1.513   Min.   :14.50   Min.   :0.0000   Min.   :0.0000   Min.   :3.000  
## 1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:3.000  
## Median :3.325   Median :17.71   Median :0.0000   Median :0.0000   Median :4.000  
## Mean   :3.217   Mean   :17.85   Mean   :0.4375   Mean   :0.4062   Mean   :3.688  
## 3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:4.000  
## Max.   :5.424   Max.   :22.90   Max.   :1.0000   Max.   :1.0000   Max.   :5.000  
##    carb      
## Min.   :1.000  
## 1st Qu.:2.000  
## Median :2.000  
## Mean   :2.812  
## 3rd Qu.:4.000  
## Max.   :8.000

# questao 04:


install.packages("ffbase", dependencies = TRUE)

require(ffbase)
? require
# o comando require(ffbase) faz que a base de dados ffbase seja carregada.

library(readr)
# library(readr) da acesso a uma nova pasta de comandos

setwd("C:/Users/David/Desktop/Mestrado/2019_1/analise_de_dados/dados_encontro_1_ufpe/dados_encontro_1_ufpe")
# setwd é o comando pra selecionar a pasta

TURMAS <- read_delim("TURMAS.CSV", "|", escape_double = FALSE, trim_ws = TRUE)

View(TURMAS)

class(TURMAS)

turmas_pe <- subset(TURMAS, CO_UF == "26")
? subset
# com o comando subset é possivel acessar subconjuntos da base de acordo com a condição elencada,
# Nesse caso e acessado o subconjunto das tumas de pernambuco.


save(turmas_pe, file = "turmas_pe.RData")
# Salvar a base em formato .RData.

# questao 05

setwd("C:/Users/David/Desktop/Mestrado/2019_1/analise_de_dados/dados_encontro_1_ufpe/dados_encontro_1_ufpe")
require(ffbase)
library(readr)

dim(turmas_pe)
## [1] 102996     88
#

mean(turmas_pe$NU_MATRICULAS)
## [1] 23.07089


# questao 06:

setwd("C:/Users/David/Desktop/Mestrado/2019_1/analise_de_dados/dados_encontro_1_ufpe/dados_encontro_1_ufpe")
require(ffbase)
library(readr)

docentes_ne <- read.csv2.ffdf(file = "DOCENTES_NORDESTE.csv" , sep = "|" , first.rows=100000)

dim(docentes_ne)
# [1] 2930354     132 #

# Salvar como data.frame#
docentes_ne <- as.data.frame(docentes_ne)

#Observação da descrição da variável de raça#

table(docentes_ne$TP_COR_RACA)


docentes_pe <- subset(docentes_ne, CO_UF == "26")

docentes_pe <- as.data.frame(docentes_pe)

table(docentes_pe$TP_COR_RACA)

prop.table(table(docentes_pe$TP_COR_RACA))*100

# 44.%

# 3.5% dos lunos não se declararam pretos
# 27, 7 dos alunos não se declarara, pardos
