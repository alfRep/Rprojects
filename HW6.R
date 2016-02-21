data <- read.csv("P1-6RawData.csv", header = TRUE)

x <- data$X
y <- data$Y
par(mfrow= c(1,2))
plot(x,y)

result <- lm(y~x)
result

abline(result, col="red")
y1 <- result[[1]][2]*x + result[[1]][1]
plot(x, y1, type="l", col="blue")
J1 <- sum((y1-y)^2)
J1
mul <- mean(y)
mul
S1 <- sum((y-mul)^2)
S1
rSquare <- 1 -(J1/S1)
rSquare



data <- read.csv("P7-9RawData.csv", header = TRUE)

y <- data$Revenue
x1 <- data$NewVisits
x2 <- data$PagesPerSession
x3 <- data$AvgSessionDuration

result <- lm(y~x1 + x2 + x3)
result

y1 <- result[[1]][2]*x1 + result[[1]][3]*x2 + result[[1]][4]*x3 + result[[1]][1]
J1 <- sum((y1-y)^2)
J1
mul <- mean(y)
mul
S1 <- sum((y-mul)^2)
S1
rSquare <- 1 -(J1/S1)
rSquare
