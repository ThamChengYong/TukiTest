readinteger <- function()
{ 
  n <- readline(prompt=paste('Choose song:','\n','1: Gao Bai Qi Qiu','\n','2: Bu Gai','\n'))
  
  n <- as.integer(n)
  if (is.na(n)){
    n <- readinteger()
  }
  if (n==1)
    browseURL('https://www.youtube.com/watch?v=bu7nU9Mhpyo', browser = getOption("browser"),
          encodeIfNeeded = FALSE)
  else if (n==2)
    browseURL('https://www.youtube.com/watch?v=_VxLOj3TB5k', browser = getOption("browser"),
              encodeIfNeeded = FALSE)
  cat('Any more songs?','\n')
}

readinteger()
