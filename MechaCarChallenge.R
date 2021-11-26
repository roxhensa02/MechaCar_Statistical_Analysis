
#Delivery 1


library(dplyr)

MechaCar_mpg <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , data=MechaCar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , data=MechaCar_mpg))


#Delivery 2

Suspension_Coil <- read.csv('Suspension_Coil.csv',stringsAsFactors = F)

total_summary <- Suspension_Coil %>% summarize(Mean =mean(PSI),Median =median(PSI),Variance=var(PSI), SD =sd(PSI),.groups = 'keep')

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean =mean(PSI),Median =median(PSI),Variance=var(PSI), SD =sd(PSI),.groups = 'keep')
                                          

#Delivery 3

t.test(Suspension_Coil$PSI,mu=1500)

?t.test()

lot1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)






