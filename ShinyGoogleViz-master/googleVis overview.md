Outline
==============================
Introduction
Motivation
Google Chart Tools
googleVis package
- Philosophy and concept
- Creating interactive charts
- Getting googleVis charts into web sites
- Creating interactive web apps with R and googleVis
- Using googleVis with RStudio
- Using googleVis with knitr
- Creating interactive presentations with googleVis
 -Session in groups with laptops to work through examples
 
<pre><code> 
 #Motion chart example
suppressPackageStartupMessages(library(googleVis))
plot(gvisMotionChart(Fruits, "Fruit", "Year", options = list(width = 600, height = 400)))
</code></pre>
