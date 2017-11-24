readinteger <- function()
{ 
  n <- readline(prompt=paste('Choose song:','\n','1: Gao Bai Qi Qiu','\n','2: Bu Gai','\n','3: Other songs','\n','0: Exit','\n'))
  
  n <- as.integer(n)
  if (is.na(n)){
    n <- readinteger()
  }
  while(TRUE) {
  if (n==0) return("Stopped")
  else if (n==1)
    browseURL('https://www.youtube.com/watch?v=bu7nU9Mhpyo', browser = getOption("browser"),
          encodeIfNeeded = FALSE)
  else if (n==2)
    browseURL('https://www.youtube.com/watch?v=_VxLOj3TB5k', browser = getOption("browser"),
              encodeIfNeeded = FALSE)

  n <- readline(prompt=paste('Song name?','\n'))
  if (n==0) return("Stopped") else
  n = gsub(" ","+",n)
  thepage = readLines(paste('https://www.youtube.com/results?search_query=',n,sep=""))
  lockupcontent = thepage[grep('yt-lockup-content',thepage)[1]]
  goodlines1 = gregexpr('/watch',lockupcontent)[[1]][1]
  goodlines2 = gregexpr(' class=\"yt-uix-tile-link',lockupcontent)[[1]][1]
  goodlines2 = as.integer(goodlines2) - 2
  string = substring(lockupcontent,goodlines1,goodlines2)
  browseURL(paste('https://www.youtube.com',string,sep=''), browser = getOption("browser"),
            encodeIfNeeded = FALSE)
}}



readinteger()

#                            _   _              BBBB
#                          /      \            BB(•)BB
#                         |        |            BBBB
#                          \ (^^) /            .. | ...
#                            |  |              ''.v\c.'`
#                                                  |
