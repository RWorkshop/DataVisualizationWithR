plotly with R
=======================

Plotly's R graphing library makes interactive, publication-quality graphs online.
<pre><code> 

library(plotly)

Sys.setenv("plotly_username"="XXXXXXXXXXX")
Sys.setenv("plotly_api_key"="YYYYYYYYYYY")

library(plotly)
p <- plot_ly(midwest, x = ~percollege, color = ~state, type = "box")

api_create(p, filename = "midwest-boxplots", sharing = "public")

</code></pre>
