library(vegan)
library(dplyr)
comm <- read.csv("data/raw/cestes/comm.csv")
dim(comm)
head(comm)[,1:6]
richness <- vegan::specnumber(comm)
