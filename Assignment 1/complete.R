complete <- function(directory, id = 1:332){
  files <- list.files(directory, full.names=TRUE)
  
  specdata <- data.frame()
  completeIds <- data.frame(id=id)
  completeNobs <- data.frame()
  
  for( i in id){
    specdata <- read.csv(files[i])
      
    datasubset <- is.na(specdata)
      
    num <- sum(datasubset[,"sulfate"] == FALSE & datasubset[,"nitrate"] == FALSE )
    completeNobs <- rbind(completeNobs,num)

      
  }
    
  colnames(completeNobs) <- "nobs"
    
  final <- cbind(completeIds,completeNobs)
  final 
}