pollutantmean <- function(directory, pollutant, id = 1:332){
   
  files <- list.files(directory, full.names=TRUE)
  
  specdata <- data.frame()
  for( i in id){
    specdata <- rbind(specdata,read.csv(files[i]))
  }
    
  specdata_pol <- specdata[,pollutant]
  mean(specdata_pol, na.rm=TRUE)
}