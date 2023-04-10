# Valores 
x <- c(1, 5, 10, 15, 20, 25, 30, 35)
y <- c(8, 16, 14, 21, 38, 25, 43, 39)

# Gráficos
plot(x, y)
plot(
    x, y,
    col="blue", pch=1, type="p",
    cex=1.0, lty=1, xlim=c(0, 45),
    ylim=c(0, 50), xlab="variável x",
    ylab="variável y", main="Título"
)
# Plotando 4 gráficos
par(mfrow=c(2, 2)) # linha, coluna
plot(x, y, type="p", pch=1)
plot(x, y, type="p", pch=3)
plot(x, y, type="p", pch=5)
plot(x, y, type="p", pch=25)

par(mfrow=c(2, 2))
plot(x, y, type="p")
plot(x, y, type="l")
plot(x, y, type="b")
plot(x, y, type="o")
par(mfrow=c(1,1))
# Tamanho do caracter
par(mfrow=c(2, 2))
plot(x, y, type="p", cex=1)
plot(x, y, type="p", cex=3)
plot(x, y, type="p", cex=5)
plot(x, y, type="p", cex=10)
par(mfrow=c(1,1))
# Tipo de linha
par(mfrow=c(2,2))
plot(x,y, type="l", lty=0)
plot(x,y, type="l", lty=2)
plot(x,y, type="l", lty=3)
plot(x,y, type="l", lty=10)
par(mfrow=c(1,1))
# Espessura da linha
par(mfrow=c(2,2))
plot(x, y, type="l", lwd=1)
plot(x, y, type="l", lwd=2)
plot(x, y, type="l", lwd=3)
plot(x, y, type="l", lwd=5)
par(mfrow=c(1,1))
# Cor
par(mfrow=c(2,2))
plot(x,y, type="p", col="black")
plot(x,y, type="p", col="blue")
plot(x,y, type="p", col="yellow")
plot(x,y, type="p", col="red")
par(mfrow=c(1,1))
# para ver as primeiras 20 cores
r_color <- colors()
head(r_color, 20)

par(mfrow=c(4,4))
for (i in c(1:16))
	plot(
        x, y, ylab="", xlab="",
        type="p", lwd=3,
        main=paste("col=", as.character(i)),
        col=i
    )
# Legenda
par(mfrow=c(1,1))
x # do conjunto de dados anterior
y1 = log(x)
y2 = sqrt(x)

plot(x, y1, ylim = c(0,8), ylab="y")
points(x, y2, col="red")
legend(
    "top",
    legend = c("logarítmo", "raiz quadrada"),
    pch = c(1,1), col = c(1,2), lty = 0,
    bty="n"
)
# Fonte
par(mfrow=c(1,1))
plot(
    x, y, main = "Título",
    xlab = "eixo x", ylab = "eixo y",
    font.axis = 2,
    font.lab = 3,
    font.main = 4
)
# Cores do texto
plot(
    y, x, main = "Título",
    xlab = "eixo x", ylab = "eixo y",
	col = "green",
	col.axis = "blue",
	col.lab = "red",
	col.main = "yellow",
	fg = "gray"
) # Cor das linhas do eixo
# Estilo dos rótulos dos eixos
par(mfrow=c(2,2))
plot(x, y, las = 0)
plot(x, y, las = 1)
plot(x, y, las = 2)
plot(x, y, las = 3)
par(mfrow=c(1,1))
# Limites dos eixos
par(mfrow=c(2,1))
plot(x, y) # Original
plot(
    x, y, xlim = c(10, 35),
    ylim = c(0, 40)
)
par(mfrow=c(1,1)) 
# Estilo da caixa do gráfico
par(mfrow=c(4,2))
plot(x, y, pch = 15, cex = 2.1)
plot(x, y, pch = 15, cex = 2.1, bty = "o")
plot(x, y, pch = 15, cex = 2.1, bty = "l")
plot(x, y, pch = 15, cex = 2.1, bty = "7")
plot(x, y, pch = 15, cex = 2.1, bty = "c")
plot(x, y, pch = 15, cex = 2.1, bty = "u")
plot(x, y, pch = 15, cex = 2.1, bty = "]")
plot(x, y, pch = 15, cex = 2.1, bty = "n")
par(mfrow=c(1,1))
# Grade
plot(x, y, panel.first=grid())
plot(x, y, panel.first=grid(lwd=2, lty=3))
plot(x, y, panel.first=grid(ny=5,col="red"))
plot(x, y, panel.first=grid(nx=5,col="red"))
# Salvar Gráficos
setwd("C:\\Users\\Lucas\\Documents\\GitHub\\R\\files")
# - PDF
pdf(
    file="grafico.pdf"
)
plot(x, y)
dev.off()
# - JPEG
jpeg(
    file = "gráfico.jpeg", width = 5,
    height = 5, units = "in", res = 300
)
plot(x,y)
dev.off()
# - PNG
png(
    file = "gráfico.png", width = 6,
    height = 6, units = "in", res = 300
)
plot(x,y)
dev.off()