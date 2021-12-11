## Gain Curves

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

## Basic curve: each item “costs” the same. 
## The wizard sorts by true value, the x axis sorts by the model, and 
## plots the fraction of the total population.

GainCurvePlot(frm, "model", "value", title="Example Continuous Gain Curve")



# make a function to calculate the label for the annotated point
labelfun = function(gx, gy) {
  pctx = gx*100
  pcty = gy*100
  
  paste("The top ", pctx, "% most valuable points by the model\n",
        "are ", pcty, "% of total actual value", sep='')
}

#########################################

GainCurvePlotWithNotation(frm, "model", "value", 

#########################################

GainCurvePlotC(frm, "model", "costs", "value", title="Example Continuous Gain CurveC")
                                   title="Example Gain Curve with annotation", 
                          gainx=gainx,labelfun=labelfun) 
