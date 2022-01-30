# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

The MechaCar dataset contains information on MPG testing across 50 prototype MechaCars. These cars were produced with various design specifications aimed at creating ideal vehicle performance. The data on these specifications includes 
vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. Using R, a linear model was performed to predict MPG of MechaCar prototypes across several variables from the MechaCar dataset. 

![Linear Regression to Predict MPG](https://user-images.githubusercontent.com/91712554/151708206-3318e111-b214-4cbf-99db-68b2dcaa5bb1.png)


Results: 
 * The variables that provide a non-random amount of variance to mpg values in the dataset are vehicle length and ground clearance. 
 * The slope of this linear model is not considered to be zero as there we a few variables that are statistically relevant (vehicle length and ground clearance). The three asterisks in the screen shot indicate a variable that is statistically significant and both have a Pr(>t) value of about 0. 
 * The linear model has an R-sqaured value of 0.7149. Therefore, it predicts mpg of MechaCar prototypes effectively about 72% of the time. 


## Summary Statistics on Suspension Coils

The Suspension Coil dataset contains the weights of multiple suspension coils from different production lots to determine if the manufacturing process is consistent. Using R, an analysis was done to find the mean, median, variance and standard deviation of the suspension coils across the different lots to help determine if the current manufacturing meets the standard of the variance not exceeding 1000 pounds per square inch. 

Below you can see the summary statistics table created to sow the suspension coil's PSI continuous variable for all manufacturing lots. 
![Total Summary](https://user-images.githubusercontent.com/91712554/151708218-b937efa0-08dd-418a-a0aa-2cbfec68b7fb.png)


The below summary statistic table shows the suspension coil's PSI metrics for each manufacturing lot. 
![Lot Summary](https://user-images.githubusercontent.com/91712554/151708221-67506924-90e4-4c87-aa8a-c0d33aa33900.png)

Results:
 * The variance across all manufacturing lots is 62.29, which meets the design specifications for MechaCar as it does not exceed 100 pounds per square inch. 
 * As can be see in the Lot Summary above, Lots one and two meet the design specifications as their respective variances fall within an acceptable range. However, Lot 3 does not meet the design specifications as its variance is 170.29. 


## T-Tests on Suspension Coils 
Using R, T-tests were performed to first determine if all manufacturing lots together are statistically different from the population mean of 1,500 pounds per square inch. Then the test was repeated across each lot individually. 

![Ttest all lots](https://user-images.githubusercontent.com/91712554/151708241-8373e2f5-1741-452a-af40-249c01250d75.png)
![Ttest individual Lots](https://user-images.githubusercontent.com/91712554/151708251-ecc69f04-2ce0-4c09-a574-33ecc0f1745f.png)

Results: 
 * All manufacturing lots together do not have a PSI that is statistically different from the mean population of 1,500 pounds per square inch. The p-value is greater than 0.05 (0.06) which indicates the null hypothesis should be maintained.
 * When looking at each lot individually, Lots one and two are not statistically different from the population mean as their respective p-values are 1 and 0.61. However, lot 3 has a p-value of 0.04, lower then 0.05, which indicates evidence to reject the null hypothesis. 

## Study Design: MechaCar vs Competition 
To continue the analysis of MechaCar, an analysis comparing fuel efficiency, in both the city and on the highway, can be performed to compare MechaCar to the performance of other manufacturers 

Metrics: 
 * Fuel efficiency (mpg) in the city and on the highway
 * Vehicle Manufacturer: Audi, Chevrolet, Dodge, Ford, Honda, Hyundai, Jeep, Land Rover, Nissan, Subaru, Toyota, Volkswagen, MechaCars

Hypothesis 
 * Null Hypothesis:  MechaCars' vehicles fuel efficiency will perform equally as well, or better, than those from other manufacturers. 
 * Alternative Hypothesis: MechaCars' vehicles fuel efficiency will not perform equally as well, or better, than those from other manufacturers. 

Statistical Test: 
 * ANOVA will validate the hypothesis and determine whether the differences are statistically significant

Data Needed: 
Data would be needed on fuel efficiency across each can manufacturer. Data would be needed on vehicle class (i.e. SUV, pickup, sedan, etc.) so vehicles could be compared to other vehicles in their same class. 
