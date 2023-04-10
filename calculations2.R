# Estatística
setwd("C:\\Users\\Lucas\\Documents\\GitHub\\R\\files")

dados = read.table("Tab.txt", h=TRUE)
var = dados[,6]; var

# Calcular o n
n = length(var); n

# Tabular os valores da variável
tvar = table(var); tvar # Frequência absoluta

# Frequência relativa
fr = tvar/n; fr

# Frequência Percentual
fp = fr*100; fp

# Criando gráfico de pizza
pie(tvar) # Versao padrão do R
pie(tvar, col=rainbow(6),
    labels=c("BAIXA", "MÉDIA", "ALTA"),
    main="Dados de renda")
## para colocar as porcentagens no grafico
varv <- paste(c("BAIXA", "MÉDIA", "ALTA"), "\n", (tvar/n)*100,"%", sep=" ")
pie(tvar, col=c(2,3,4), labels=varv, main="Dados de renda")

# Gráfico de pizza 3D
install.packages("plotrix")
library(plotrix)
?pie3D # pedindo ajuda
pie3D(tvar,labels = rendav, explode=0.1, theta=pi/4, start=10,
	main="Gráfico de setores da renda ")
# Gráfico de barras
barplot(tvar, col=rainbow(4), ylab="Frequências absolutas",
	names=c("BAIXA", "MÉDIA", "ALTA"))


# Com os dados carregados do exemplo 1
falta = dados[,7]; falta
n=length(falta); n
# Frequências
faltat = table(falta); faltat # Freq. absoluta
fr = faltat/n; fr # Freq. relativa
fp = fr*100; fp # Freq. percentual

# Gráficos
pie(faltat, col=rainbow(6), main="Faltas")
barplot(faltat, col="grey", ylab="Frequências absolutas",
	horiz=TRUE, xlab="Número de Faltas")
# gréfico de linhas
plot(faltat, type = "h")


# Com os dados do exemplo 1 carregado
# Número de classes
head(dados)
var = dados[,5]; var
n = length(var) # Número de observações
k = round(sqrt(n)); k # Número de classes
# Amplitude da classe
varmin = min(var); varmin
varmax = max(var); varmax
c = (varmax-varmin)/(k-1); c
# Limites das classes
LI1 = varmin - c/2; LI1
LSk = varmax + c/2; LSk
LimClass = seq(LI1, LSk, c); LimClass

# Histograma
hist(var) #versão padrão do R
# Histograma com frequências de acordo com as classes construídas
hist(var, breaks=LimClass, col=rainbow(8))
# Histograma com frequências de acordo com as classes construídas,
# no de classes e eixos ajustados
h = hist(var, breaks=LimClass, main="Histograma das alturas",
		xlab="Altura (metros)", ylim=c(0,15),
		ylab="Frequências absolutas",
		col="lightgreen",axes=FALSE)
# Ajustando eixo horizontal
axis(1,at=LimClass,pos=-0.5)
# Ajustando eixo vertical
axis(2,at=seq(0,30,by=1))
# Polígono de frequência
points(h$mids,h$counts,type="l",lwd=2)

# Ponto médio da classes
h$mids
# Frequências simples
fa = h$counts; fa # Frequência absoluta
fr = fa/n; fr # Frequência relativa
fp = fr*100; fp # Frequência Percentual
# Frequências acumuladas
Fa = c(0, cumsum(fa)); Fa # freq. acumulada absoluta
Fr = Fa/n; Fr # Freq. acumulada relativa
Fp = Fr*100; Fp # Freq. acumulada pecentual
# Média da altura (dados agrupados)
xbar = sum(fr*h$mids)
xbar

# Gráfico de ogiva (frequência absoluta acumulada)
Fa # objeto Fa criado anteriormente
plot(LimClass,Fa,
	ylab="Frequência absoluta", xlab="Altura (metros)",
	axes=F, panel.first = grid(), lwd=2, col="red", cex.lab=1.2)
	points(LimClass,Fa,type="b",
	pch=16, col="red", panel.first=grid())

axis(1,at=round(LimClass,3),pos=-0.05, cex.axis=1)
axis(2,at=seq(0,40,by=5), cex.axis=1.2, las=2)
# Gréfico de ogiva (frequência relativa acumulada)
Fr # objeto Fr criado anteriormente
plot(LimClass, Fr, type="b",
	ylab="Frequência relativa", xlab="Altura (metros)",
	axes=F, panel.first=grid(), lwd=2, col="red", cex.lab=1.2)
points(LimClass, Fr, type="b",
	pch=16, col="red", panel.first=grid())
axis(1,at=round(LimClass,3),pos=-0.05, cex.axis=1)
axis(2,at=seq(0,1,by=0.1), cex.axis=1.2, las=2)

# Medidas descritivas para os dados de altura
median(var) # Mediana
mean(var) # Média
A = max(var)- min(var); A # Amplitude
# Variância
Varh = sum((var-hbarra)^2)/(n-1); Varh
# ou simplesmente
?var
var(var)
# Desvio padrão
DPh = sqrt(Varh); DPh
# ou simplesmente
sd(var)
