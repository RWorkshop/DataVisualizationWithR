library(GGally)
library(dplyr)

ChickWeight %>% 
  select(Time, weight) %>% 
  ggpairs

ChickWeight %>% 
  select(Time, weight, Diet) %>% 
  ggpairs

ChickWeight %>% 
  select(Time, weight, Diet) %>% 
  ggpairs(colour = "Diet")
