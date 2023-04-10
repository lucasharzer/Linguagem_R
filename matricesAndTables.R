# Matriz
matriz = matrix(
    c(
        5, 4.5, 7,5.2, 6.1,
        2.1, 6.5, 8, 7, 6.7,
        8.6, 7, 9.1, 8.7, 9.3
    ),
    byrow=TRUE,
    nrow=3,
    ncol=5
)
# Nomear linhas e colunas
rownames(matriz) = c("linha 1", "linha 2", "linha 3")
colnames(matriz) = c("coluna 1", "coluna 2", "coluna 3", "coluna 4", "coluna 5")
# Média da Matriz
NLinhas = dim(matriz)[1]
NColunas = dim(matriz)[2]
soma = 0

for(i in 1:NLinhas){
	for(j in 1:NColunas){
		soma = soma + matriz[i, j]
	}
}

media = soma/(NLinhas*NColunas)

# Tabela
nome = c("Lisa", "Godofredo", "João", "Joana", "Alba")
curso = c("superior", "superior", "fundamental", "médio", "médio")
idade = c(34, 43, 21, 37, 25)
salario = c(1100, 1450, 450, 960, 600)
anos = c(5, 8, 3, 8, 2)
sexo = c("F", "M", "M", "F", "F")

tabela = data.frame(
    nome, curso, idade, 
    salario, anos, sexo,
	stringsAsFactors=FALSE
)
# Subdividindo a tabela
tabela$nome
tabela$anos
subset(
    tabela, idade>=30, select=c(nome, curso, salario)
)
subset(
    tabela, sexo=="F" & anos>2, select=nome:salario
)
subset(
    tabela, select=-nome
)
# Aplicar função
apply(matriz, 1, mean)
tapply(salario, sexo, mean)