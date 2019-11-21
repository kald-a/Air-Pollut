pollutantmean <- function(directory, pollutant, id = 1:332){
  x <- list.files(directory, full.names = TRUE)
  y <- data.frame()
  
  for (i in id){
    z <- read.csv(x[i], header = TRUE)
    y <- rbind(y,z)
  }
  return(mean(y[,pollutant], na.rm = TRUE))
}