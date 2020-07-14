pollutantmean <- function(directory, pollutant, id = 1:332) {
  # Single data frame for all files
  directory <- list.files("C:/Users/annay/Documents/R/specdata/Data", full.names = TRUE)
  specdata <- data.frame()
  for (i in id) {
    specdata <- rbind(specdata, read.csv(directory[i]))
  }
  # Subset the data into pollutant and ID
  pollutant <- c("sulfate" = specdata$sulfate, "nitrate" = specdata$nitrate) 
  ID == specdata$ID
  mean(pollutant, ID, trim = 0, na.rm = TRUE)
}
