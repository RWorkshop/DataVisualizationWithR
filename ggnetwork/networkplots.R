install.packages("networkD3")
install.packages("igraph")
install.packages("rCharts")
install.packages("ggplot2")


library(networkD3)
library(igraph)
library(rCharts)
library(MASS)
library(ggplot2)

data <- read_graph('astro-ph.gml', 'gml')

#########################################################################

library(igraph)
library(networkD3)
indices <- sample(1:16706, 16706-750)
d2 <- delete.vertices(data, indices)
df <- get.data.frame(d2, 'both')
df$edges$from <- df$vertices$label[df$edges$from]
df$edges$to <- df$vertices$label[df$edges$to]

simpleNetwork(df$edges, zoom=TRUE)

#########################################################################

degs <- degree(data, loops = FALSE)


# Only shows degs > 0
degs <- degs[degs > 0]
# Bin data
h <- hist(degs, breaks=logseq(1, max(degs), length.out=100), plot=FALSE)
d <- data.frame(x=h$breaks[-length(h$breaks)], y=h$counts)
d <- d[d$y > 0 & d$x > 0, ]
l1 <- rlm(log10(y) ~ log10(x), d[d$x < 50, ])
l2 <- rlm(log10(y) ~ log10(x), d[d$x > 50, ])

d$pred1 <- 10^predict(l1, d)
d$pred2 <- 10^predict(l2, d)

ggplot(data=d) +
  geom_point(aes(x=x, y=y), size=4, alpha=1) +
  geom_line(aes(x=x, y=pred1, color='Fit for k < 30'), lty='dashed') +
  geom_line(aes(x=x, y=pred2, color='Fit for k > 30'), lty='dashed') +
  xlab("Degrees (k)") +
  ylab("Number of authors") +
  scale_x_log10(limits=c(1, 150)) +
  scale_y_log10(limits=c(1, 1e4)) +
  scale_color_discrete(guide=guide_legend(title=element_blank()))
