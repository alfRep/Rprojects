#Problem 1
x <- c(100:109)
y <- c(34, 28, 45, 67, 89, 93, 24, 49, 11, 7)
x + y


#Problem 2
a <- 1.12; b <- 2.34; c <- 0.72; d <- 0.81; f <- 19.83
x <- 1 + (a/b) + (c/f^2)
x

s <- (b-a)/(d-c)
s

r <- 1/((1/a) + (1/b) + (1/c) + (1/d))
r

y <- a*b *(1/c)*(f^2/2)
y


#Problem 3
require(xlsx)
HWData <- read.xlsx("HW01-Prob3Data.xlsx", sheetName = "autompg", header = TRUE)
head(HWData)

