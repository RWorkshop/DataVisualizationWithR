http://biogeo.ucdavis.edu/data/diva/adm/USA_adm.zip


<pre><code>



# 1. Lets try get some maps

ggmap(get_map("limerick,ireland",zoom=14))

ggmap(get_map("limerick,ireland",zoom=16))

ggmap(get_map(c(52.662871, -8.626943),zoom=16))

ggmap(get_map(c( -8.626943,52.662871),zoom=16))


# 2. Geocoding with ggmap

geocode("Limerick, Ireland")

 # Truthfully - this API can be a bit of a pain.


# 3. Set up a small dataframe of locations in Limerick


limerick <- data.frame(rbind(c(52.662289, -8.623756),
c(52.661726, -8.623305),
c(52.662816, -8.622212),
c(52.663686, -8.622206),
c(52.662871, -8.626943))) 
names(limerick) <- c("lat","lon")

 # Careful with order of "lat" and "lon" - sometimes positions switch.


limerick <- limerick %>% select(lon,lat)

# 4. Lets make a map


ggmap(get_map(c( -8.626943,52.662871),zoom=16)) +  
  geom_point(data = limerick,pch=18,col="red",size=2)

</code></pre>
