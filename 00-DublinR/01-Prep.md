Hi Folks

I just noticed a bug re: ggplot2.

Until the new version of ggplot2 is out, which is soon, you need to do the following

## 1. Install a NEW version of R version 3.4.4

This link should work: https://ftp.heanet.ie/mirrors/cran.r-project.org/bin/windows/base/old/ 

Hi Folks

I just noticed a bug re: ggplot2.

Until the new version of ggplot2 is out, which is soon, you need to do the following

## 1. Install a NEW version of R version 3.4.4

This link should work: https://ftp.heanet.ie/mirrors/cran.r-project.org/bin/windows/base/old/

If it doesn't, here are the steps.

* go to "https://www.r-project.org/"
* At the top of the page, where it says "To download R, please choose your preferred CRAN mirror." - click the link and select Ireland
* You should see options to download R for various operating systems.  Click on your choice.
* Click on "base" subdirectory
* Click on "Previous Releases" of R for Windows (down at the bottom)
* Select version 3.4.4

#### WARNING: DO NOT INSTALL ggplot2 Yet!! 

## 2. Install the devtools library

Run the following code:

<pre><code>  
install.packages("devtools")
library(devtools)
</code></pre>

#### WARNING: DO NOT INSTALL ggplot2 Yet!!

## 3. Install the development version of ggplot2

Run the following code:

<pre><code>
install_github('tidyverse/ggplot2')
library(ggplot2)
</code></pre>

## 4. To check everything went ok, run the following code

This is the components of the next release of ggplot2. It will be released to CRAN soon.
<pre><code>
ls("package:ggplot2")
</code></pre>

If the following output includes ``geom_sf``, then the installation was successful.

<pre><code>
ls("package:ggplot2")[130:135]
</code></pre>

## 5. Now you can install other R packages that we are going to have a look at

<pre><code>

install.packages("GGally")
install.packages("WVPlot")
install.packages("ggmap")

</code></pre>

