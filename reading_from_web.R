#How to read pages from the web
#Example, Google Scholar

install.packages("XML")
library(XML)
install.packages("RCurl")
library(RCurl)
con = url("https://scholar.google.it/citations?user=Q8YGizEAAAAJ&hl=en")
htmlCode = readLines(con)
close(con)
htmlCode

url<-"https://scholar.google.it/citations?user=Q8YGizEAAAAJ&hl=en"

# 1 extra line of code
curl_data <- getURL(url)
html <- htmlTreeParse(curl_data, useInternalNodes = T)

xpathSApply(html, "//title", xmlValue)

# "Chiara Corti - Google Scholar Citations"

xpathSApply(html, "//a[@class='gsc_a_ac gs_ibl']", xmlValue)

#   [1] "24" "13" "11" "8"  "7"  "6"  "5"  "3"  ""   ""   ""   ""   ""   ""   ""   ""   ""   ""  
#   [19] ""   ""  