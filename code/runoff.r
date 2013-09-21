library(RCurl)
url <- "https://raw.github.com/wisc-viz/ggplot2/master/data/runoff.csv"
runoff_raw <- getURL(url)
runoff <- read.csv(text=runoff_raw)

#Quick-and-dirty:
qplot(x=runoff$precip, y=runoff$sm, size=runoff$runoff)

#Facet by farm:
qplot(x=precip, y=sm, size=runoff, data=runoff, color=runoff) + 
    facet_wrap(~farm, ncol=3) + theme_bw() + theme(aspect.ratio = 1)