# Deliverable 1

library(dplyr)

car_tb <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_tb)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_tb)
)

# Deliverable 2

sus_tb <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- sus_tb %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

lot_summary <- sus_tb %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Deliverable 3

t.test(sus_tb$PSI, mu=1500)

t.test(subset(sus_tb$PSI, sus_tb$Manufacturing_Lot == "Lot1"), mu=1500)

t.test(subset(sus_tb$PSI, sus_tb$Manufacturing_Lot == "Lot2"), mu=1500)

t.test(subset(sus_tb$PSI, sus_tb$Manufacturing_Lot == "Lot3"), mu=1500)
