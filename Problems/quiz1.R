hw1<-hw1_data



ozonetab<-hw1$Ozone
ozonetab

logicalNA<-is.na(ozonetab)
logicalNA

ozonetab_clean<-ozonetab[logicalNA=="FALSE"]
ozonetab_clean
mean(ozonetab_clean)

quest18<-subset(hw1,hw1$Ozone>31 & hw1$Temp>90)
quest18
mean(quest18$Solar.R)

quest19<-subset(hw1,hw1$Month==6)
mean(quest19$Temp)

quest20<-subset(hw1,hw1$Month==5)
quest20
ozonetab1<-quest20$Ozone
ozonetab1
logicalNA1<-is.na(ozonetab1)
logicalNA1

ozonetab_clean1<-ozonetab1[logicalNA1=="FALSE"]
ozonetab_clean1
max(ozonetab_clean1)