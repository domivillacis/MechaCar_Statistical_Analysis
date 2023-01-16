# MechaCar Statistical Analysis

AutosRU's is a very successful car dealer that has released their newest prototype car, the MechaCar, which should be successful, but has sadly suffered from production issues, blocking the manufacturing team's progress.

Jeremy has been with the company for 10 years and because he has extensive product knowledge, he was chosen as the lead analyst for the data analytics team to perform statistical tests and find insights to help the manufacturing team.

For this analysis, Jeremy will use the R programming language.


## Linear Regression to Predict MPG

To identify which variables in the dataset predict the mpg of MechaCar prototypes, Jeremy performed multiple linear regression and will answer 3 important questions from his findings.

<img width="794" alt="Screenshot 2023-01-14 at 16 43 28" src="https://user-images.githubusercontent.com/112814924/212498453-10d46ea3-85ca-4517-aa26-8474f5ac309e.png">

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

As we can see in the image above, the mpg will always be equal to the intercept since the other variables will remain constant, which means equal to 0.

However, the variables that provided a non-random amount of variance are vehicle length (2.60e-12) and ground clearance (5.21e-08), as both p-values are small which means they are highly significant.


2. Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model is not considered 0 because when any of the variables (vehicle weight, vehicle length, AWD, etc.) increases by 1, the mpg value will change.


3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

To make this linear model more effective, there are more variables that need to be added to the analysis for the manufacturing team to improve the performance of the prototype car.

If variables such as motor capacity or power are taken into account in the analysis, the result will be more effective.

## Summary Statistics on Suspension Coils

Jeremy created the suspension coils Summary Statistics to show the continuous variable PSI across all manufacturing lots. The results contain the mean, median, variance, and standard deviation.

<img width="338" alt="Screenshot 2023-01-14 at 15 13 06" src="https://user-images.githubusercontent.com/112814924/212498464-e3e12721-ef44-419d-8fa7-9b32f8387fc7.png">

Looking at the overall results, the current manufacturing data does meet the design specifications, as it does not exceed 100 pounds per square inch.

However, if we review each lot individually, it can be seen that the variance result of lot 3 exceeds the specified value.

<img width="493" alt="Screenshot 2023-01-14 at 15 12 55" src="https://user-images.githubusercontent.com/112814924/212498470-20a9c772-4946-4488-b5bf-6570f1f3a91c.png">

## T-Tests on Suspension Coils

Finally, to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch, Jeremy has performed a t-test, in which the results are the following:

Alternative Hypothesis = PSI  is not equal to 1500

Null Hypothesis = PSI is equal to 1500

p-value = 0.06028 > 0.05% (criteria) therefore there is not enough evidence to reject the null hypothesis (PSI is equal to 1500).

mean = 1498.78

<img width="434" alt="Screenshot 2023-01-14 at 16 52 12" src="https://user-images.githubusercontent.com/112814924/212498730-11dfd277-7b30-4980-8f4c-509b7eb6ce51.png">

Three idividual t-tests were also performed per lot:

Lot 1: there is not enough evidence to reject the null hypothesis

mean = 1500

<img width="430" alt="Screenshot 2023-01-14 at 16 52 47" src="https://user-images.githubusercontent.com/112814924/212498740-8aa637f2-c4b2-4702-b18f-cd2633fe0cb8.png">

Lot 2: there is not enough evidence to reject the null hypothesis

mean= 1500.2

<img width="406" alt="Screenshot 2023-01-14 at 16 52 58" src="https://user-images.githubusercontent.com/112814924/212498745-9bac77d9-620b-4cc0-8186-80f5e02f8f27.png">

Lot 3: there is not enough evidence to reject the null hypothesis

mean = 1496.14

<img width="413" alt="Screenshot 2023-01-14 at 16 53 05" src="https://user-images.githubusercontent.com/112814924/212498753-176958a7-74e2-4483-8d51-fea533a5b60e.png">


## Study Design: MechaCar vs Competition

The study model run by Jeremy has been interesting, however I would like to propose a study design that would help MechaCar to be better than the competition.

Some of the variables I would add to the analysis are: horsepower, maintenance, safety, and cost. These variables will not only help the performance of the car, but will also allow the mpg to be maintained.


- What is the null hypothesis or alternative hypothesis?

The most importante variable, in my opinion, is the horsepower(hp), as that really determines the performance of a car. So my analysis will be like this:

Null hypothesis = HP is equal to 180

Alternative Hypothesis= HP is not equal to 180


- What statistical test would you use to test the hypothesis? And why?

I would calculate the car population data, in this case, Manufacturer Lot with the horsepower.

t.test(car population data $hp), mu=180)


- What data is needed to run the statistical test?

To run the statistical test, we'll first need to create a dataset with the vehicle ID, the number of cars to be manufactured per lot, and the horsepower of each car. Then we'll calculate the population data with the horsepower.

These data will allow us to demonstrate that the performance of the MechaCar is superior to that of our competition.


### Resources

Programming Language: R
