corr <- function(directory,threshold = 0){
  files <- list.files(directory, full.names=TRUE)
  
  correlation <- c()
  
  for (i in 1:length(files)){
    specdata <- specdata <- read.csv(files[i])
    specdata <- specdata[complete.cases(specdata),] ## takes all the complete records
    
    if (nrow(specdata) > threshold){
      correlation <- c(correlation,cor(specdata$sulfate,specdata$nitrate)) ##appends to the vector
    }
  }
  
  return(correlation)

}