Hi folks,
I plan to show off a bit on shapefiles (map files essentially), and how to use them for presenting info.

These shapefiles were taken from this website:  http://www.diva-gis.org/gdata

### Code Segments
<pre><code>
# 1. R package "sf" - Simple Features 
install.packages("sf")
library(sf)

# 2. Download the Irish Counties Map File

download.file("http://biogeo.ucdavis.edu/data/diva/adm/IRL_adm.zip",
              destfile = "counties.zip")

# Unzip it. Check your work directory to check it is ok
unzip("counties.zip")

# 3. Read the data into R
counties <- sf::read_sf("IRL_adm1.shp")

# 4. Lets have a look at what we got.
head(counties)
class(counties)

# 5. Lets do the same for USA Data 
download.file("http://biogeo.ucdavis.edu/data/diva/adm/USA_adm.zip", 
               destfile = "USAmap.zip")
unzip("USAmap.zip")               

</code></pre>

