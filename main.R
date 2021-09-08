#!/usr/bin/env Rscript
#Load libs
library(tuneR)
library(seewave)

#Read waves
a <- readWave("1.wav",from=1,to=5,units =c("seconds"))
b <- readWave("2.wav",from=1,to=5,units =c("seconds"))

#Turn wave objects into frequency spectrums
Wave1 <- spec(a,at=0.5,plot=FALSE)
Wave2 <- spec(b,at=0.5,plot=FALSE)

#Compare the similarity between the 2 spectrums

#Similarity index in %
simspec(Wave1,Wave2,plot=TRUE)

#Manhattan distance between the 2 spectrums
diffspec(Wave1,Wave2,plot=TRUE)

#Maximal correlatio between the 2 spectrums & the corresponding freq. shift
corspec(Wave1,Wave2,plot=TRUE)



