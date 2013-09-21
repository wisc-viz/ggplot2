library(RCurl)
url <- "https://raw.github.com/wisc-viz/ggplot2/master/basics/data/runoff.csv"
runoff_raw <- getURL(url)
runoff <- read.csv(text=runoff_raw)

#Facet by farm:
png("../img/runoff.png", width=9, height=6, units='in')
qplot(x=precip, y=sm, size=runoff, data=runoff, color=runoff) + 
    facet_wrap(~farm, ncol=3) + theme_bw() + theme(aspect.ratio = 1)
dev.off()