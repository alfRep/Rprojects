#P1
f <- scan("blowfly.txt", skip = 1)
length(f)
length(unique(f))


#P2
accumalate <- function(initialAmt){
  x <- initialAmt
  count <- 0
  while (x <= 1000000){
    x <- x * 1.06 + 10000
    count <- count + 1
  }
  
  return(count)
}

y <- accumalate(10000)
print(y)


#P3
f <- read.table("worldfloras.txt", header = TRUE)
f$Country[grep("^.{3}c", as.character(f$Country))]

#P4
calculateArea <- function(radius, volume = 10){
  
  area <- pi * radius * sqrt(radius^2 + (9 * volume^2)/(pi^2 * radius^4))
  return(area)
}
d <- calculateArea(0.1, 10)
print(d)

rads <- seq(0.1, 10, by=0.1)

ar <- sapply(rads, calculateArea)
print(ar)
plot(rads, ar)
rads[which.min(ar)]


#P5
facts <- function(number){
     if (number == 0) return(1)
     
     return(number * facts(number - 1))
}

facts(10)



#P6
cell_H <- read.table("cells.txt")
mv_H <- read.table("multivariate.txt")
sapply(cell_H, class)
sapply(mv_H, class)


cell <- read.table("cells.txt", header = TRUE, col.names = c("Cell ID", "isSmoker", "Age Group", "Gender", "Weight Range"))
mv <- read.table("multivariate.txt", header = TRUE, col.names = c("Temperature", "Industry ID", "Population", "Wind", "Rain", "Rainy Days"))

sapply(cell, class)
sapply(mv, class)

write.table(cell, "CellOutput.txt", quote = FALSE, row.names = FALSE)
write.table(mv, "MultivariateOutput.txt", quote = FALSE, row.names = FALSE)

save(cell, file = "CellOutput.dat")
save(mv, file = "MultivariateOutput.dat")
