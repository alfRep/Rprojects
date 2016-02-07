#P1
plot(0:200, pi/4 - cumsum((-1)^(0:200)*(1/(1+2*(0:200)))), xlab = "n", ylab = "Pi/4 - sum S(n)")

#P2
mu <- 1152 #lbs
rho <- 84 #lbs

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
i= seq(0.1, 0.9, by= 0.1)
subt = paste ("P = ", i)

par(mfrow=c(3,3))
barplot(dbinom(x = 0:8, size = 8, prob = i[1]), main= "Probability of Success", 
        sub= subt[1], xlab="Trials", ylab= "Probability", names.arg= 0:8, ylim=c(0, 0.50))
barplot(dbinom(x = 0:8, size = 8, prob = i[2]), main= "Probability of Success", 
        sub= subt[2], xlab="Trials", ylab= "Probability", names.arg= 0:8,  ylim=c(0, 0.50))
barplot(dbinom(x = 0:8, size = 8, prob = i[3]), main= "Probability of Success", 
        sub= subt[3], xlab="Trials", ylab= "Probability", names.arg= 0:8,  ylim=c(0, 0.50))
barplot(dbinom(x = 0:8, size = 8, prob = i[4]), main= "Probability of Success", 
        sub= subt[4], xlab="Trials", ylab= "Probability", names.arg= 0:8,  ylim=c(0, 0.50))
barplot(dbinom(x = 0:8, size = 8, prob = i[5]), main= "Probability of Success", 
        sub= subt[5], xlab="Trials", ylab= "Probability", names.arg= 0:8,  ylim=c(0, 0.50))
barplot(dbinom(x = 0:8, size = 8, prob = i[6]), main= "Probability of Success", 
        sub= subt[6], xlab="Trials", ylab= "Probability", names.arg= 0:8,  ylim=c(0, 0.50))
barplot(dbinom(x = 0:8, size = 8, prob = i[7]), main= "Probability of Success", 
        sub= subt[7], xlab="Trials", ylab= "Probability", names.arg= 0:8,  ylim=c(0, 0.50))
barplot(dbinom(x = 0:8, size = 8, prob = i[8]), main= "Probability of Success", 
        sub= subt[8], xlab="Trials", ylab= "Probability", names.arg= 0:8,  ylim=c(0, 0.50))
barplot(dbinom(x = 0:8, size = 8, prob = i[9]), main= "Probability of Success", 
        sub= subt[9], xlab="Trials", ylab= "Probability", names.arg= 0:8,  ylim=c(0, 0.50))



