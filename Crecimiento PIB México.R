############################## TAREA 3 ######################################

install.packages("foreign")
require(foreign)

install.packages("fpp")
require(fpp)

PIBMex <- read.csv("C://Users//FLORES//Desktop//PIB M�xico.csv", sep = ";", dec = ",")

PIB <- ts(PIBMex, frequency = 1, start = 1961)

plot(PIB, main = "Crecimiento anual del PIB M�xico de 1961 a 2015",
     xlab = "A�o", ylab = "Crecimiento Porcentual", col = "darkblue", lwd = 3)

####################### Periodo 2000 - 2015 ######################################

PIBM <- window(PIB, start = 2000, end = 2015)

plot(PIBM, main = "Crecimiento anual del PIB M�xico de 2000 a 2015",
     xlab = "A�o", ylab = "Crecimiento Porcentual", col = "darkgrey", lwd = 3)

#help(segments)
segments(2001, -5 , 2001, 5 ,  col = "orange", lty = 4, lwd = 3)
segments(2009, -5, 2009, 5 ,  col = "red", lty = 4, lwd = 3)
segments(2013, -5, 2013, 5 ,  col = "darkcyan", lty = 4, lwd = 3)




#pib <- decompose(PIBM)
#NoEstacionalidadPIB <- PIBM$seasonal
#NoTendenciaPIB <- PIBM$trend
#plot(NoEstacionalidadPIB)
#plot(NoTendenciaPIB)



