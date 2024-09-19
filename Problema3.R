#Codigo para problema 3
X<- c(-8,5,2,-8,9,5,2,-3,1,-1,4,-4,9,3,-9,7,0,-7,8,-4,1,7,-6,4,5,-9,-2,-8,5,-5)
sum(X)
X[15:20]
Y<-X[-c(21, 2, 26)]#quita las posiciones que le dices
sum(exp(X))-sum(exp(Y))
