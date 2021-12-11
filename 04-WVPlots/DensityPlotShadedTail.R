
set.seed(52523)

d = data.frame(meas=rnorm(1000))
f = data.frame(meas=rnorm(1000))

threshold = -1.5

######################################################


ShadedDensity(d, "meas", threshold, 
                       title="Example shaded density plot, left tail")


#####################################################

