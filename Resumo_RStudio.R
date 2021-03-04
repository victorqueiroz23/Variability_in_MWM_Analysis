# >>> RESUMO DE RSTUDIO <<< 

#Função de printar: print()
string_exemplo <- "Alou, meu consagrado" 
string_exemplo_2 <- 'Aspas simples também valem!'
print(string_exemplo)
print(string_exemplo_2)

#Tipos de dados em RStudio
class("Isso é um texto") #Não chamamos aqui de String!
class(5.55555)
class(TRUE)

#Operadores Matemáticos
1 + 1 
2 - 1
3 * 3
4 / 2
10 %% 3 #resto
5 ^ 2 #exponenciação
#RStudio segue as ordens de operação parecida com Python

#Operadores Racionais ("lógicos")
4 > 2
5 < 2
5 >= 2
10 <= 12
3 == 3
5 != 3

#Operadores Lógicos
x > 2 & y == "condição" #condição AND
x > 2 | y == "condição"  #condição OR
!(y == "condição") #condição NOT, ou seja, tudo menos essa condição

#Bibliotecas em RStudio
library(tools) #Abre uma bibloteca do sistema (ou já baixada) com suas funcionalidades
install.packages(ggplot2) #Instala uma biblioteca que não está no sistema por deafult
library(ggplot2) #A biblioteca PRECISA ser aberta depois de instalada para ser utilizada
help(package="ggplot2")

#Vetores - conjunto de valores de mesmo tipo (em R) ou uma coluna em datasets
# >>> OBS: indexação dos valores tem sintaxe parecida com lista em Python (mas sem começar por "0", e sem valor excludente)
animais <- c("cachorro", "gato", "coelho", "cavalo", NA)
peso_animais_em_kg <- c(10, 2, 1.5, NA)
animais[1:3]
peso_animais_em_kg >= 5 #Procura os valores dentro do vetor qem que essa condição é verdadeira (devolve valor lógico!)
animais == 'cachorro'
length(animais) #Tamanho do vetor (quantos valores existem dentro dele)
peso_animais_em_kg[is.na(peso_animais_em_kg)] <- 400 #Procura qual valor é NA 
peso_animais_em_kg
animais[is.na(animais)] #Sem atribuição de novo valor
mean(peso_animais_em_kg) #Mostra a média
sort(peso_animais_em_kg) #Organiza os valores (ordem crescente)!
sort(animais) #Organiza os valores por tamanho de texto (ordem decrescente)!
animais <- animais[-5] #Deleta valor com índice determinado
dataframe_animais <- data.frame(animais, peso_animais_em_kg) #MUITO IMPORTANTE!
dataframe_animais

#Dataframes (e abrindo/escrevendo arquivo .CSV)
setwd("/Users/Isabel/Desktop") #Salva o código no diretório especificado (onde está o arquivo)
arquivo <- "anymaze_results_MWM.csv"
arquivo_aberto <- read.csv(arquivo)
probe_test <- arquivo_aberto[arquivo_aberto$Stage == "5",] #A vírgula aqui, sem definir os números de colunas, faz com que ele pegue todas 
probe_test_5rows_5cols = probe_test[1:5, 1:5]
write.csv(probe_test, file = "/Users/Isabel/Desktop/anymaze_results_probetest.csv", row.names = FALSE)
probe_test_5rows_5cols$nova_coluna <- NA #Cria nova coluna! 
probe_test_5rows_5cols
probe_test_5rows_5cols <- probe_test_5rows_5cols[,-6] #Deleta a coluna com índice determinado!
probe_test_5rows_5cols <- probe_test_5rows_5cols[-5,] #Deleta a linha com índice determinado!
probe_test_5rows_5cols
str(arquivo_aberto) #"Structure", MUITO IMPORTANTE!
str(probe_test_5rows_5cols)

#Estrutura de Controle Condicional - if/else
# >>>SINTAXE: 
if(condição) {
    comando_1
}else{
    comando_2
}
#Também pode ser escrito como:
if(condição){...}else{...} #mas pulando linha ajuda!

#Estrutura de Repetição Definida - for
# >>>SINTAXE: 
for (condição) {
  comando
}
