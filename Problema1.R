#Codigo para problema 1
mis_dades <- mtcars
#tengo que ejecutar linea por linea

mis_dades [,1]#para la primera columna de mis datos
mis_dades$qsec #veo la columna que se llama qsec
sort(mis_dades$qsec) #ordena de menos a mayor la columna qsec

cut(mis_dades$qsec, breaks = 4)
#cortamos la columna qsec en 4 intervalos 


qsec_intervalos <- cut(mis_dades$qsec, breaks = 4) 
qsec_intervalos
ni<-table(qsec_intervalos)#se ve cuantos coches hay en cada intervalo, cuanto se repite

hist(mis_dades$qsec, breaks = 3) #grafica en barras la estadistica, cantidad de barras(breaks)
mean(mis_dades$qsec)#calcula la mediana/mitjana de los datos~(es la suma entre la cantidad)
#la media es el numero del medio 

sort(mis_dades$drat)
median(mis_dades$drat)#coge el numero del medio, misma cantidad de datos a un lado y al otro

#el primer cuartil es el numero del medio de la primera mitad
quantile(mis_dades$drat, 0.25) #el 0.25 es para ver el primer cuartil, sino vere los 4 cuartiles

quantile(mis_dades$mpg, 0.18)#quantiles es como cortar con tigeras

sum(table(qsec_intervalos))
fi<-ni/sum(ni)#cojo las reps de los intervalos y los divido entre la sum, que me da la frecuencia
pie(fi)
fi
Ni<-cumsum(ni)#cumsum hace la frecuancia total acumulada, va sumando las frecuencias
Fi<-cumsum(fi)
cbind(ni, fi, Ni, Fi)

#HASTA AHORA ERAN MEDIDAD DE CENTRALIDAD, AHORA MEDIDAS DE DISPERSION
q.75<-quantile(mis_dades$cyl, 0.75)
q.25<-quantile(mis_dades$cyl, 0.25)
q.75-q.25
IQR(mis_dades$cyl)
boxplot(mis_dades$cyl)

sd(mis_dades$cyl)#dispersion al rededor de la mediana 
var(mis_dades$qsec)#varianza, el cuadrado de la variacion estandar



