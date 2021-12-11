
## ggsurv
## Kaplan Meier Plots
library(GGally)
library(ggplot2)
library(survival)
data(lung)
head(lung)
sf.lung <- survfit(Surv(time,status)~1,data=lung)
sf.sex <- survfit(Surv(time,status)~sex,data=lung)
sf.kid <- survfit(Surv(time,status)~disease,data=kidney)
sf.lung
sf.kid
sf.sex
