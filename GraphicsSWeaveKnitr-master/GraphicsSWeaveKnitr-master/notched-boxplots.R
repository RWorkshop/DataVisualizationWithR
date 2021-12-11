hsb2 <- read.table('http://www.ats.ucla.edu/stat/r/modules/hsb2.csv', header=T, sep=",")
attach(hsb2)

boxplot(write ~ sesf, xlab="write by ses", 
        boxwex=.2, notch = TRUE, 
        col = "darkblue")
        
###################################################
        
# by two factors
boxplot(write ~ female + ses, 
        xlab="write by female and ses", 
        boxwex=.2)
 
 
