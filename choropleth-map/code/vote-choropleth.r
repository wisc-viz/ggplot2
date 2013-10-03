library(ggplot2)
library(RColorBrewer)
library(scales)

#Import state shapes and the election data
st = map_data('states')
data(votes.repub)

#Begin by creating the basic map:
map = ggpot(st) + aes(long, lat, group=group) + geom_polygon()

#Grab the 1960 column and make the names lowercase to match the shapes:
vote = votes.repub[,'1960']
names(vote) = tolower(names(tovote))

#Now link the vote data to the state shapes by matching names:
st$votes = vote[st$region]

#Add a color layer to the map:
map = map + aes(fill=votes)

#Adjust the appearance of the plot
map = map + scale_fill_gradient2(low=muted("blue"),
	mid="white", high="orange", midpoint=50,
	name='Republican\nshare')
map = map + theme(plot.title=element_text(face="bold"))
map + coord_map(project='globular') +
	ggtitle("Presidential election of 1960")