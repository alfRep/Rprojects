P#1
plot(0:200, pi/4 - cumsum((-1)^(0:200)*(1/(1+2*(0:200)))), xlab = "n", ylab = "Pi/4 - sum S(n)")

P#2
mu <- 1152 #lbs
rho <- 84 #lbs


x   <- seq(800,1500, by= 1) 
y   <- dnorm(x,mean=mu, sd=rho)
plot(x,y, type="l", xlab ="Weight(lbs)", ylab ="", main = "Distribution", ylim=c(0,max(y)*1),xlim=c(min(x),max(x)))



#P4
temps <- read.table("Temperatures.txt",header=TRUE)
month <- factor(temps$month)
plot(month, temps$temperature, xlab= "Month", ylab= "High Temp")


