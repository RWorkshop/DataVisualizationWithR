set.seed(34903490)
x = rnorm(50)
y = 0.5*x^2 + 2*x + rnorm(length(x))
frm = data.frame(x=x,y=y,yC=y>=as.numeric(quantile(y,probs=0.8)))
frm$absY <- abs(frm$y)
frm$posY = frm$y > 0


###########################

# Scatterplots
# Scatterplot with smoothing line through points. 
# Reports the square of the correlation between x and y (R-squared) and its significance.

ScatterHist(frm, "x", "y", title="Example Fit")



ScatterHist(frm, "x", "y", smoothmethod="lm", 
                     title="Example Linear Fit", annot_size=2)



ScatterHist(frm, "x", "y", smoothmethod="identity", 
                     title="Example Relation Plot", annot_size=2)



set.seed(34903490)
fmScatterHistC = data.frame(x=rnorm(50),y=rnorm(50))
fmScatterHistC$cat <- fmScatterHistC$x+fmScatterHistC$y>0
WVPlots::ScatterHistC(fmScatterHistC, "x", "y", "cat", title="Example Conditional Distribution")



set.seed(34903490)
frmScatterHistN = data.frame(x=rnorm(50),y=rnorm(50))
frmScatterHistN$z <- frmScatterHistN$x+frmScatterHistN$y
WVPlots::ScatterHistN(frmScatterHistN, "x", "y", "z", title="Example Joint Distribution")
