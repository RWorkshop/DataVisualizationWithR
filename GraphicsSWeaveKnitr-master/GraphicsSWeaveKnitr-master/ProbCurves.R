
#Plotting the probability density function and the cumulative distribution 
#function of the standard normal distribution.

z=seq(-3,3,by=0.01)
par(mfrow=c(2, 1))
plot(z,dnorm(z),type='l',col="red",lwd=4)
plot(z,pnorm(z),type='l',col="red",lwd=4)
