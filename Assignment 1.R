# install.packages("datasets")
library(datasets)

USArrests

dat <- USArrests
head(dat)
names(dat)
summary(dat)

dat$state <- tolower(rownames(USArrests))
list(dat)
# histogram of Murder
hist(dat$Murder, main="Histogram of Murder", xlab="Murder Rate", ylab="Frequency")
#Summary of Murder
summary(dat$Murder)


#histogram of Assault
hist(dat$Assault, main="Histogram of Assault", xlab="Assault Rate", ylab="Frequency")
#Summary of Assault
summary(dat$Assault)

#Histogram of Rape
hist(dat$Rape, main="Histogram of Rape", xlab="Rape Rate", ylab="Frequency")
#Summary of Rape
summary(dat$Rape)

par(mfrow=c(3,1))
hist(dat$Murder, main="Histogram of Murder", xlab="Murder Rate", ylab="Frequency")
hist(dat$Assault, main="Histogram of Assault", xlab="Assault Rate", ylab="Frequency")
hist(dat$Rape, main="Histogram of Rape", xlab="Rape Rate", ylab="Frequency")

?par

library('maps') 
library('ggplot2') 

ggplot(dat, aes(map_id=state, fill=Murder)) + 
  geom_map(map=map_data("state")) + 
  expand_limits(x=map_data("state")$long, y=map_data("state")$lat)

  
