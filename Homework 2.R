#P1
x <- 5 + 8i
y <- -6 + 7i

u <- x + y
u
v <- x * y
v
w <- x / y
w
z <- exp(x)
z
r <- sqrt(y)
r
s <- x * y^2
s


#P2
(3 + 6i)*(-7 -9i)
(5 + 4i)/(5 - 4i)
3/2i


#P3
exp(-2.1)^3 + (3.47 * log(14)) + (287^(1/4))
(3.4^7) * (log(14)) + (287^(1/4))
cos((4.12 * pi)/6)^2
cos((4.12*pi/6)^2)


#P4
x <- 6
z <- x <10
z
z <- x == 10
z
z <- x >= 4
z
z <- x != 7
z


#5
z <- 6 > 3 + 8
z
z <- 6 + 3 > 8
z
z <- 4  > (2+9)
z
z <- (4 < 7) + 3
z
z <- 4 < 7 + 3
z
z <- (4 <7 )* 5
z
z <- 4 <(7 * 5)
z
z <- 2/5 >= 5
z


#6
A <- matrix(c(3, -5, 6, 15, 7, 9, 13, 5, -4, 10, 8, 4, 12, 2, 11, 1), 4)
A
v <- A[, 2]
v
w <- A[2,]
w


#P7
numb <- sort(rnorm(20, 10, 5))
numb
numb <- numb[-c(1, 2, length(numb) -1, length(numb))]
numb


#P8
temData <- read.table("temperatures.txt", header=T)
head(temData)

mean(temData$temperature)
mean(temData$rain)

max(temData$temperature)
max(temData$rain)

min(temData$temperature)
min(temData$rain)

sd(temData$temperature)
sd(temData$rain)

var(temData$temperature)
var(temData$rain)

range(temData$temperature)
range(temData$rain)


#P9
tapply(temData$temperature, temData$yr, mean)

which.min(tapply(temData$temperature, temData$yr, mean))

which.max(tapply(temData$temperature, temData$yr, mean))


#P10
his_num <- rnorm(100, 50,50)
hist(his_num)
his_num
which (abs(his_num - 10) == min(abs(his_num - 10)))
