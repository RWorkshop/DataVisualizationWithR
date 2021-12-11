library(ggForce)
library(ggplot2)

# Contextual zoom

# Zooming in ggplot2 has always been done in one of two ways: By limiting the positional scale or by 
# limiting the coordinate system. 
# In the former actual data values are removed leading to a potential 
# change in derived calculations (e.g. a fitted line had different parameters) while the later behaves
# more as you would expect. ggforce provides a third option in the form of a new facetting 
# function: facet_zoom(). 

ggplot(iris, aes(Petal.Length, Petal.Width, colour = Species)) +
    geom_point() +
    facet_zoom(x = Species == "versicolor")
