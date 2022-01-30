library(dplyr)

#Deliverable One 
mechaCar_df <- read.csv('Resources/MechaCar_mpg.csv', stringsAsFactors = F) # read in data

?lm()
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_df) # perform linear regression

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_df)) # summarize linear regression

#-------------------------------------------------------------------------

#Deliverable Two 
suspensionCoil_df <- read.csv('Resources/Suspension_Coil.csv', stringsAsFactors = F) # read in data

# create total summary df and get mean, med, variance. sd of PSI 
total_summary <- suspensionCoil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# create lot summary, group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.
lot_summary <- suspensionCoil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#--------------------------------------------------------------------------

#Deliverable Three
# use a t.test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspensionCoil_df$PSI, mu=1500)

#Lot 1 
t.test(subset(suspensionCoil_df, Manufacturing_Lot == 'Lot1')$PSI, mu = 1500)

#Lot 2 
t.test(subset(suspensionCoil_df, Manufacturing_Lot == 'Lot2')$PSI, mu = 1500)

#Lot 3 
t.test(subset(suspensionCoil_df, Manufacturing_Lot == 'Lot3')$PSI, mu = 1500)
