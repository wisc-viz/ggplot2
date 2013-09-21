runoff = read.csv("~/scratch/runoff.csv")

#Quick-and-dirty:
qplot(x=runoff$precip, y=runoff$sm, size=runoff$runoff)

#Facet by farm:
pdf(height=4, width=8)
qplot(x=precip, y=sm, size=runoff, data=runoff, color=runoff) + facet_wrap(~farm, ncol=3)+theme_bw()+theme(aspect.ratio = 1)