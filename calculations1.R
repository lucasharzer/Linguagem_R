# Funções Matemáticas

# f(x) = 5ln(x)
# no intervalo de 0 a 100

# definindo os valores de x
x1 <- seq(0, 100, by=0.1)
y1 <- 5*log(x1)
plot(x1, y1, type="l", col=2)
## alternativamente
y = function(x) 5*log(x)
y1 = y(x1)
plot(x1, y1, type="l", col=2,lwd=2,
	panel.first = grid())
## alternativamente
plot(function(x) 5*log(x), 0, 10)

# f(x) = 1/√50*π elevado a -1/50(x-100) elevado a 2
# no intervalo de 80 a 120

# definindo os valores de x
x2 <- seq(80, 120, l=101)
y2 <- (1/sqrt(50*pi))*exp(-0.02*(x2-100)ˆ2)
plot(x2, y2, type="l")
## alternativamente
y=function(x) (1/sqrt(50*pi))*
exp(-0.02*(x-100)ˆ2)
y2=y(x2)
plot(x2, y2, type="l", col=2,lwd=2,
panel.first = grid())

# expand.grid => Combinação de valores 1, 2, 3 e 4
x<-seq(1,4,by=1); x
y<-seq(1,4,by=1); y
expand.grid(x=x,y=y)

# outer => produto de dois vetores
x<-seq(1,5,by=1); x
y<-seq(1,5,by=1); y
f1 <- function(x, y) xˆ2+yˆ2
z <- outer(x, y, f1)
z

# persp => constrói uma superfície
persp(x, y, z, theta = 30, phi = 30,
	col = "lightblue")
persp(x, y, z, theta = 20, phi = 30,
	col = "lightblue",
	ticktype="detailed",nticks=5)


# f(x, y) = √x^2 + y^2
# no intervalo de -1 até 1
x<-seq(-1, 1, l=50); x
y<-seq(-1, 1, l=50); y
f1 <- function(x, y) sqrt(x2+y2)
z <- outer(x, y, f1)
## superficie
persp(x, y, z, theta = 30,
	phi = 30,
	col = "lightgreen",
	ticktype="detailed",
	nticks=5)

# Gráfico de contorno
## contornos
image(x, x, z,
	xlab = "x", ylab = "y",
	col=terrain.colors(10))
contour(x, x, z, col = "black",
	add = TRUE, nlev=10)

## contornos
image(x, x, z,
	xlab = "x", ylab = "y")
contour(x, x, z, col = "black",
add = TRUE, nlev=10)

# Visualização tridimensional
x<-seq(-1,1,l=100)
y<-seq(-1,1,l=100)
f1 <- function(x, y) sqrt(xˆ2+yˆ2)
z <- outer(x, y, f1)
library(plotly)
plot_ly(x=x,y=y,z=z, type="surface")

x<-seq(-5,5,l=100)
y<-seq(-5,5,l=100)
f1 <- function(x, y)
cos(x)*cos(y)*exp((-sqrt(xˆ2+yˆ2))/4)
z <- outer(x, y, f1)
library(plotly)
plot_ly(x=x,y=y,z=z, type="surface")

# Exemplos
x1 <- seq(0,50, l=100)
y1 <- 1 - (1/x1) * sin(x1)
plot(x1, y1, type="l",
	col=2,lwd=2)

x <- seq(-3,3,length=100)
y <- x
f<-function(x,y){
	1/(2*pi*sqrt(s1*s2*(1-rhoˆ2)))*
		exp(-1/(2*(1-rhoˆ2))*
			((x-m1)ˆ2/s1+
				(y-m2)ˆ2/s2-
				 2*rho*((x-m1)*(y-m2))/(sqrt(s1)*sqrt(s2))))
}
#definindo os parâmetros
m1 <- 0
m2 <- 0
s1 <- 1
s2 <- 1
rho <- 0
z <- outer(x,y,f) # calcula f(x,y)
## superficie e contornos por conta do aluno
