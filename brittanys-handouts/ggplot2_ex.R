# Introduction to ggplot2

library("ggplot2")

?Orange
# x-y plot
qplot(circumference, age, data = Orange)

#boxplot
qplot(Tree, circumference, data = Orange, geom = "boxplot")
# Note that ggplot automatically orders the boxes based on increasing median

#histogram
qplot(circumference, data = Orange, geom = "histogram", binwidth = 20)
qplot(circumference, data = Orange, geom = "histogram", breaks = c(0, 50, 75,90, 100,130, 150))

#bar chart
qplot(Tree, data = Orange, geom = "bar", weight = circumference)
 
#Using color and shape options

#Use different colors
qplot(age, circumference, data = Orange, color = Tree)

#Use different colors and shapes
qplot(age, circumference, data = Orange, color = Tree, shape = Tree)

# Use different sizes
qplot(age, circumference, data = Orange, color = Tree, size = Tree)

#Increase point size
qplot(age, circumference, data = Orange, color = Tree, shape = Tree, size = I(3))

# Plot lines
qplot(age, circumference, data = Orange, color = Tree, shape = Tree, geom = "line")

# Plot points and lines
qplot(age, circumference, data = Orange, color = Tree, shape = Tree, geom = c("point", "line"))

qplot(age, circumference, data = Orange, color = Tree, shape = Tree, geom = c("point", "line"), linetype = variable)


# Facetting
qplot(age, circumference, data = Orange, facets = Tree~., color = Tree, geom = "line")

qplot(Sepal.Length, Sepal.Width, data = iris, facets = Species~., color = Species)

qplot(Sepal.Length, Sepal.Width, data = iris, facets = .~Species, color = Species)

qplot(wt, mpg, data = mtcars, facets = cyl~am, shape = factor(am), color = as.factor(cyl))

# Change legend labels
qplot(wt, mpg, data = mtcars, facets = cyl~am, shape = factor(am), color = as.factor(cyl)) + labs(shape = "Transmission", color = "Cylinders")


# To remove legend
qplot(Sepal.Length, Sepal.Width, data = iris, facets = Species~., color = Species) + theme(legend.position = "none")

# Cool things you can't do with usual plot functions
qplot(Sepal.Length, data = iris, geom = "histogram", fill = Species)

# Semi-transparent points

# Demo using diamonds data set
# Built into ggplot2
# WARNING: Don't just type ``diamonds''

dim(diamonds)
names(diamonds)
head(diamonds)

sm.diamonds = diamonds[sample(1:dim(diamonds)[1], 2000),]

# Examples from Wickham book
qplot(carat, price, data = sm.diamonds)

# Functions of variables
qplot(carat, log(price), data = sm.diamonds)
qplot(carat + 1, price, data = sm.diamonds)

# Transparency of points
qplot(carat, price, data = diamonds)
qplot(carat, price, data = diamonds, alpha = I(1/10))

# Jitter
qplot(color, price, data = diamonds, geom = "jitter")
qplot(color, price, data = diamonds, geom = "boxplot")




# Building a plot, layer by layer
# Assign a plot to a variable name

p = ggplot(sm.diamonds, aes(x = carat, y = price))
summary(p)
p + layer(geom = "point")
p + geom_point()
p + geom_point(aes(color = cut))


# mtcars example
p = ggplot(mtcars, aes(factor(cyl), mpg))
p + geom_boxplot()
# Flip coordinates
p + geom_boxplot() + coord_flip()

# Boxplot of multiple factors
p + geom_boxplot(aes(fill = factor(am)))
p + geom_boxplot(aes(fill = factor(am))) + coord_flip()
p + geom_boxplot(aes(fill = factor(am))) + coord_flip() + theme_bw()


