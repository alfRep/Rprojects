#P1
#a
t <- 5500
b <- log(1/2)/-5500
b

ran = seq(0, 60000, 500)
plot(ran, exp(-b*(ran)))

#b
t <- log(0.9)/-b
t

#P2
A <- matrix(c(4, 6, 7, -2, 8, 9, 1, -5, 10), nrow= 3)
B <- matrix(c(6, 7, -8, 9, 5, 2, -4, 3, 1), nrow= 3)
C <- matrix(c(-4, 10, 3, -5, 6, -9, 2, 1, 8), nrow= 3)


A*(B+C) == A*B + A*C
(A*B)*C == A*(B*C)

#P3
quad <- function(n1, n2, n3, n4){
  x1 <- n1[1];  y1 <- n1[2]
  x2 <- n2[1];  y2 <- n2[2]
  x3 <- n3[1];  y3 <- n3[2]
  x4 <- n4[1];  y4 <- n4[2]
  
  matrx <- matrix(c(x1^3, x1^2, x1, 1, x2^3, x2^2, x2, 1, x3^3, x3^2, x3, 1, x4^3, x4^2, x4, 1), byrow = TRUE, nrow= 4)
  vect = matrix(c(y1, y2, y3, y4), nrow= 4)

  solve(matrx, vect)
  
}

quad(c(-2, -20), c(-0, 4), c(2, 68), c(4, 508))


#P4
x <- runif(1000)
b <- 18 
a <- 2
y <- (b-a) * x + a
 hist(y)
 mean(y)
 min(y)
 max(y)
 
 #P5
 nd <- rnorm(1000, 20, 4)
 mean(nd)
 sd(nd)
 hist(nd, xlab = "random numbers", main= "Histogram of random numbers")
 
 
 #P6
 meanx <- 8; sdx <-sqrt(2)
 meany <- 15; sdy <- sqrt(4)
 apprx <- rnorm(10000, meanx, sdx)
 mean(apprx); sd(apprx)
 
 appry <- rnorm(10000, meany, sdy)
 mean(appry); sd(appry)
 
 adjust <- rnorm(100, 1, 1)
 #cal for x
 exactx <- (adjust-mean(adjust))/sd(adjust)
 desiredx <- meanx + exactx * sdx
 mean(desiredx)
 sd(desiredx)
 #cal for y
 exacty <- (adjust-mean(adjust))/sd(adjust)
 desiredy <- meany + exactx * sdy
 mean(desiredy)
 sd(desiredy)
 
 mean(sum(meanx, meany)) == sum(mean(desiredx), mean(desiredy))
 sum(sdx^2, sdy^2) == sum(sd(desiredx)^2, sd(desiredy)^2)
 

