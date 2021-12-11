# Legend Example
# Add a legend to a plot
attach(mtcars)

#create a boxplot
boxplot(mpg~cyl, main="Milage by Car Weight",
   yaxt="n", xlab="Milage", horizontal=TRUE,
   col=terrain.colors(3))

#add legend
legend("topright", inset=.05, title="Number of Cylinders",
   c("4","6","8"), fill=terrain.colors(3), horiz=TRUE)
