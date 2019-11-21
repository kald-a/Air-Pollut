complete <- function(directory, id = 332){
  x <- list.files(directory, full.names = TRUE)
  y <- data.frame()
  for (i in id){
    z <- read.csv(x[i], header = TRUE)
    z <- na.omit(z)
    nobs <- nrow(z)
    y <- rbind(y, data.frame(i,nobs))
    
  }
  return(y)
}