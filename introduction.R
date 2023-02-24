# Imprimir
print("Olá Mundo")

# Variável
x <- 4 # x = 4
print(x)

# Concatenação
print(paste("x vale", x))

# Array
y <- c(3, 5, 7, 92, 56)
print(y)
# - Adicionar
append(y, 8)
# Ordenar
sort(y)
sort(y, decreasing=TRUE)

# Partes do array
# - A primeira posição
print(y[1])
# - A quarta posição
print(y[4])
# - A segunda até a terceira posição
print(y[2:3])
# - Todas exceto a primeira
print(y[-1])

# O menor e o maior valor do array
rx <- range(y)
print(rx)

# Comprimento do array
comprimento <- length(y)
print(comprimento)

# Sequência
sequencia <- seq(from=1, to=25, by=0.5)
print(sequencia)

# Repetição
# - Repetir x, 8 vezes
repeticao1 <- rep(x, times=8)
print(repeticao1)
# - Repetir cada elemento de y, 8 vezes
repeticao2 <- rep(y, each=8)
print(repeticao2)

# Operações
a <- 5
b <- 2
# - Soma
print(a+b)
# - Subtração
print(a-b)
# - Multiplicação
print(a*b)
# - Divisão
print(a/b)
# - Potenciação
print(a^b)
# - Resto da divisão
print(5%%2)

# Lista
lista = list(
    nome="Bob",
    idade=6,
    raça="desconhecida"
)

# - Acesso a elementos da lista
print(lista)
print(lista[2])
print(lista[1:2])
# - Acesso ao valor do elemento
print(lista[[2]])
print(lista$raça)

# Criar Funções
pessoa = function(nome, idade){
    msg <- paste("Nome:", nome, "- Idade:", idade)
    return (msg)
}

print(pessoa("Lucas", 20))

# Algumas funções úteis
# - Soma
sum(y)
# - Mediana
median(y)
# - Média
mean(y)

# Perguntar
numero <- readline(prompt="Informe um número: ")
numero <- as.integer(numero)

print(paste("O número informado foi", numero))

