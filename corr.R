corr <- function(directory, threshold = 0){
  # Directory creation
  directory <- list.files("C:/Users/annay/Documents/R/specdata/Data", full.names = TRUE)
  # Obtain the complete cases. 
  for (i in 1:332) {
    specdata <- read.csv(directory[i])
    nobs <- sum(complete.cases(specdata))
  }
  
}