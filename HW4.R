#P1
plot(0:200, pi/4 - cumsum((-1)^(0:200)*(1/(1+2*(0:200)))), xlab = "n", ylab = "Pi/4 - sum S(n)")

#P2
mu <- 1152 #lbs
rho <- 84 #lbs
lb <-1250
ub <-1450

x   <- seq(-4,4,length=50)*rho + mu
y   <- dnorm(x,mu,rho)


#a
ub <-1450; lb <-1250
i <- x >= lb & x <= ub
plot(x,y, type="l", xlab ="Weight(lbs)", ylab ="", main = "Distribution")
polygon(c(lb,x[i],ub),c(0,y[i],0),col="red")


#b
ub <- 1200; lb <- 0
i <- x >= lb & x <= ub
plot(x,y, type="l", xlab ="Weight(lbs)", ylab ="", main = "Distribution")
polygon(c(lb,x[i],ub),c(0,y[i],0),col="blue")


#c
ub <- 1100; lb <- 1000
i <- x >= lb & x <= ub
plot(x,y, type="l", xlab ="Weight(lbs)", ylab ="", main = "Distribution")
polygon(c(lb,x[i],ub),c(0,y[i],0),col="green")


#P3
temps <- read.table("Temperatures.txt",header=TRUE)
month <- factor(temps$month)
plot(month, temps$temperature, xlab= "Month", ylab= "High Temp")


#P4
i= 0.1:0.9
subt = paste ("P = ", i)

barplot(dbinom(x = 0:8, size = 8, prob = 0.7), main= "Probability of Success", 
        sub= subt[1], xlab="Trials", ylab= "Probability", names.arg= 0:8,  ylim=c(0, 0.30))



