install.packages("knitr")
library(knitr)
knitr::opts_chunk$set(echo = TRUE)
install.packages("knitr")
install.packages("lattice")
install.packages("UsingR")
install.packages("psych")

#������ �о����
dat<-read.csv(file ="archieve/50Startups.csv",header=T)
head(dat)
view(dat)
attach(dat)
names(dat)
subset <- cbind(dat$R.D.Spend, dat$Administration, dat$Marketing.Spend, dat$State, dat$Profit)
pairs.panels(subset)
##�����鿡 ���ؼ� �� ����
model2<-lm(Profit ~ ., data=dat)
summary(model2)

#- p-value ���� ���ؼ� ������ ����  State ����
multi_model <- lm(Profit ~ R.D.Spend + Administration + Marketing.Spend, data = dat)
summary(multi_model)

#- p-value ���� ���ؼ� ������ ����  Administration ����
multi_model <- lm(Profit ~ R.D.Spend  + Marketing.Spend, data = dat)
summary(multi_model)

#- p-value ���� ���ؼ� ������ ������  Marketing.Spend ����
#multi_model <- lm(Profit ~ R.D.Spend, data = dat)
#summary(multi_model)
# �𵨿� ���� ��Ȯ���� �������Ƿ� ���� �Ⱒ

