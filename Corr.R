corr <- function(directory, threshold = 0) {
  files_full <- list.files(directory, full.names = TRUE)
  dat <- vector(mode = "numeric", length = 0)
  id <- 1:332
  for (i in id) {
    moni_i <- read.csv(files_full[i], header = TRUE)
    mono_i <- na.omit(moni_i)
    mona_i <- nrow(mono_i)
    if (mona_i>threshold){
      dat <- c(dat, cor(mono_i$sulfate, mono_i$nitrate))
    }
  }
  
  dat
}