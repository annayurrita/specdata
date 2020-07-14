complete <- function(directory, id = 1:332) {
  # Set the directory. 
  directory <- list.files("C:/Users/annay/Documents/R/specdata/Data", full.names = TRUE)
  # Obtain the complete cases. 
  for (i in id) {
    specdata <- read.csv(directory[i])
    nobs <- sum(complete.cases(specdata))
    }
  ID <- c(1:332)
  comp.df <- data.frame()
  comp.df <- cbind(ID, nobs)
  comp.df
}