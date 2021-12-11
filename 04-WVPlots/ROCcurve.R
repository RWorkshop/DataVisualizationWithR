## ROC Plots

## Set Up Data

set.seed(34903490)
y = abs(rnorm(20)) + 0.1
x = abs(y + 0.5*rnorm(20))

#########################################

frm = data.frame(model=x, value=y)

frm$costs=1
frm$costs[1]=5
frm$rate = with(frm, value/costs)

frm$isValuable = (frm$value >= as.numeric(quantile(frm$value, probs=0.8)))

#########################################

ROCPlot(frm, "model", "isValuable", TRUE, title="Example ROC plot")

#########################################

set.seed(34903490)
x1 = rnorm(50)
x2 = rnorm(length(x1))
y = 0.2*x2^2 + 0.5*x2 + x1 + rnorm(length(x1))
frmP = data.frame(x1=x1,x2=x2,yC=y>=as.numeric(quantile(y,probs=0.8)))

# WVPlots::ROCPlot(frmP, "x1", "yC", TRUE, title="Example ROC plot")
# WVPlots::ROCPlot(frmP, "x2", "yC", TRUE, title="Example ROC plot")

ROCPlotPair(frmP, "x1", "x2", "yC", TRUE, title="Example ROC pair plot")

#########################################

## Precision-Recall Plot

PRPlot(frm, "model", "isValuable", TRUE, title="Example Precision-Recall plot")
