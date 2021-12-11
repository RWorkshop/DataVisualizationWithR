# Plot Characters
# Coloured Lines, vertical and horizontla lines

#######################################################################

# Bland-Altman Plots
 # In medical statistics the Bland-Altman plot is a graphical method to compare two clinical measurement techniques. 
 # In this graphical method the case-wise differences between the two techniques are plotted against the case-wise 
 # averages of the two techniques.
X = c(490, 397, 512, 401, 470, 611, 415, 431, 638,  429, 420, 633, 275, 492, 165, 372, 421)

Y = c(512, 430, 520, 428, 500, 600, 364, 380, 658,  445, 432, 626, 260, 477, 259, 350, 451)

#Case-wise Differences
D = X-Y
#Case-wise Averages
A = (X+Y)/2

plot(A,D,pch=16,col= "red")

####################

# Adding the Limits of Agreement to the Bland- Altman Plot


LowLim = mean(D) - (1.96 * sd(D))
UpLim = mean(D) + (1.96 *sd(D))

abline(h=mean(D),col="blue")
abline(h=UpLim, col="green")
abline(h=LowLim,col="green")

########################################################################
