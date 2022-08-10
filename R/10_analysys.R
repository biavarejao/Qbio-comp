library(dplyr)

comm <- read.csv("data/raw/cestes/comm.csv")
dim(comm)
s<-colSums(comm) %>% sort(decreasing = T)
length(s)
for (i in 2:97) {
  for (j in 2:57) {
    if (comm[i,j]!=0){
      comm[i,j]<-1
    }
  }
}
s<-colSums(comm) %>% sort(decreasing = T)
s<-comm[,2:57]
max.col(s, ties.method="first")
colnames(s)
??
max
