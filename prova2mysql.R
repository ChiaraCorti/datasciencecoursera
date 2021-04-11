ucscDb <- dbConnect(MySQL(), user="genome", host="genome-euro-mysql.soe.ucsc.edu")
result <- dbGetQuery(ucscDb, "show databases;"); dbDisconnect(ucscDb)
result
hg19 <- dbConnect(MySQL(), user="genome", db="hg19", host="genome-euro-mysql.soe.ucsc.edu")
allTables <- dbListTables(hg19)
length(allTables)
library(RMySQL)