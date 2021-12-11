library(ggfortify)

autoplot(AirPassengers)

autoplot(AirPassengers, ts.colour = 'blue')

p <- autoplot(AirPassengers)
class(p)


# add title and labels
p + ggtitle('AirPassengers') + xlab('Year') + ylab('Passengers')

# these common options are supported as keywords 
autoplot(AirPassengers, title = 'AirPassengers', xlab = 'Year', ylab = 'Passengers')


set.seed(1)
p <- autoplot(kmeans(iris[-5], 3), data = iris)
# plot as it is
p


# change colour mapping
p + scale_colour_brewer()

#################################

df <- fortify(kmeans(iris[-5], 3), data = iris)
head(df)


ggplot(df, aes(x= cluster, fill = cluster)) + geom_bar()


################################

res <- lm(Volume ~ Girth, data = trees)  
mp <- autoplot(res, ncol = 4)
mp


class(mp)

mp + theme_bw()


mp +
  (ggplot(trees, aes(Girth, Volume)) + geom_point()) +
  (ggplot(trees, aes(Girth, Height)) + geom_point())
