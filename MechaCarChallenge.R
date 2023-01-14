# Linear Regression to Predict MPG

library(tidyverse)
mecha_car <- read.csv(file = 'Resources/MechaCar_mpg.csv' ,check.names =F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car))

# Create Visualizations for the Trip Analysis

susp_coil <- read.csv(file='Resources/Suspension_Coil.csv', check.names = F,stringsAsFactors = F)
total_summary <- susp_coil %>%  summarize(Mean=mean(PSI), Median=median(PSI),Varience=var(PSI),SD=sd(PSI))
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Varience=var(PSI),SD=sd(PSI), .groups = 'keep')

# T-Tests on Suspension Coils

t.test((susp_coil$PSI), mu=1500)

lot_1 <- subset(susp_coil, Manufacturing_Lot == "Lot1")
lot_2 <- subset(susp_coil, Manufacturing_Lot == "Lot2")
lot_3 <- subset(susp_coil, Manufacturing_Lot == "Lot3")

t.test((lot_1$PSI), mu=1500)
t.test((lot_2$PSI), mu=1500)
t.test((lot_3$PSI), mu=1500)
