# Condição If/Else
n <- 20

if (n < 20){
    print("O número é menor que 20")
}else if (n == 20){
    print("O número é igual")
}else{
    print("O número é maior que 20")
}

m = c(3, 5, 8, 1)

# Repetição For
for (i in m){
    print(i)
}

for (j in seq(1, 6))
    print(j)

# Repetição While
n1 = 0
n2 = 8
while(n1 <= n2){
    print(n1)
    n1 <- n1 + 2
}