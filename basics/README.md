#### Faceted scatterplot
Here's a graphic we collectively produced in ggplot2 that incorporates this week's topics. The code to produce the plot is in the code directory:

![a plot demonstrating ggplot2, faceting, dot sizing, colors, and the bw theme](https://raw.github.com/wisc-viz/ggplot2/master/basics/img/runoff.png)

##### Topics from this week:
 - Using `qplot` to make a quick scatterplot
 - Faceting with `facet_wrap`
 - The bw theme to remove the grayscale background and make an image better suited for plotting
 - Setting the aspect ratio for each facet with `theme(aspect.ratio=1)`
 - Controlling dot size (`size` argument of `qplot`)
 - Controlling dot color (`color` argument of `qplot`)

##### Links
 - [ggplot2 documentation](http://docs.ggplot2.org)
 - Inegrating ggplot2 with D3 [via R-bloggers](http://www.r-bloggers.com/ggplot2-meet-d3/)
 - Both [lattice](http://lmdvr.r-forge.r-project.org/figures/figures.html) and [ggplot2](http://ggplot2.org/book/) use the [grid](https://www.stat.auckland.ac.nz/~paul/grid/grid.html) graphics system on the backend for drawing. The [gridSVG](http://sjp.co.nz/projects/gridsvg) package can turn any R graphic drawn in grid into an SVG document. SVG is really handy for interactive graphics because each element of the image is drawn with a text command that can be altered interactively.
 - [This blog post](http://timelyportfolio.blogspot.com/2013/08/gridsvganother-glue-for-r-to-svg.html) discusses making images in ggplot2, exporting them to SVG with gridSVG, and then making the SVG interactive for the Web with D3.