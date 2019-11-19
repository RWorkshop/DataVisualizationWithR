library(ggvis)
require(ggplot2)
require(dplyr)

p <- ggvis(mtcars, x = ~wt, y = ~mpg)
mode(p)
class(p)
ggvis(mtcars, props(x = ~wt, y = ~mpg)) + mark_point()