##

geocode("1600 pennsylvania avenue, washington dc")
geocode("the white house")
geocode(c("baylor university", "salvation army waco"))

LimerickPlaces <- c(
"Arthur's Quay, Limerick",
"Curragower Bar, Clancy Strand, Limerick",
"The Stormy Teacup, Fox's Bow, Limerick",
"The Belltable, 69 O'Connell Street, Limerick"

)

DF <- geocode(LimerickPlaces)

# DF$lon <- c(-8.6262277, -8.627818, -8.623765, -8.6305475)
# DF$lat <- c(52.6653735, 52.668581, 52.66226, 52.6595683)


##############################
(map <- get_map(maptype = "roadmap"))
(map <- get_map(source = "osm"))
(map <- get_map(source = "stamen", maptype = "watercolor"))
map <- get_map(location = "texas", zoom = 6, source = "stamen")

##############################

ggmap(map, fullpage = TRUE)

