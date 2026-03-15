NA

c(1,2,"a")

c(1,2,NA)

library(foreach)

foreach(i = c(1, 2, NA)) %do% { if (is.na(i)) { print("found") } }

