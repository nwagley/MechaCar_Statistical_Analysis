
# MechaCar_Statistical_Analysis

This project is asking us to help Jeremy and the data analytics team do a couple of the tasks as instructed some of them can be described as Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes,Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots, Run t-tests to determine if the manufacturing lots are statistically different from the mean population, Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG
In this activity we used multiple regression to predict the mpg of MechaCar prototypes which a number of variables such as car length, weight, spoiler angle etc.

<img width="626" alt="Screen Shot 2021-06-13 at 2 47 19 PM" src="https://user-images.githubusercontent.com/79885849/121819731-edd98080-cc4b-11eb-8145-2605d6833236.png">

From our regression analysis we can tell that:

Vehicle length, ground clearance are provide non-random amount of variance in the dataset which means these variables are significant in terms of their impact on mpg. There are other significant factors which have not been included in the model which is evidenced by the fact that the intercept is also significant.
The p-value of this linear model is 5.35e-11, which is smaller than the assumed significance level of 0.05%. Therefore,it can be stated that there is sufficient evidence to reject our null hypothesis, which means that the slope of this linear model is not zero.
The Multiple R squared value is 0.7149 which means the model can predict mpg with an accruacy of 71%. This shows the model is an effective model.

## Summary Statistics on Suspension Coils

<img width="342" alt="Total_Summary" src="https://user-images.githubusercontent.com/79885849/121819773-35f8a300-cc4c-11eb-8c02-9a06fa9fd236.png">

<img width="503" alt="lot_Summary" src="https://user-images.githubusercontent.com/79885849/121819775-35f8a300-cc4c-11eb-95f7-c0a807fce179.png">

from the summery data, we can see that the mean and medians are very close which suggests that the data does not have any skewness and the data is normally distributed.
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. As per the above statistics, the variance is about 62 pounds per inch which is below the specified value. However one of the lots have a variance of over 170. Therefore, the current manufacturing data meets this design specification for all manufacturing lots in total but not each lot individually.
T-Tests on Suspension Coils
For this section, we ran T-tests for the overall manufacturing data and also T-tests for individual lots. The purpose of the test was to compare the population mean of 1500 with the same means to determine if they were statistically different from the population. The results of the T-tests are provided below:

Overall production: 

<img width="330" alt="T_test" src="https://user-images.githubusercontent.com/79885849/121819794-545e9e80-cc4c-11eb-8113-4defc21afacd.png">

The data is considered to have normal distribution so we do not have sufficient evidence to reject the null hypothesis. Therefore we can say that the mean is not statistically different from the population mean of 1500.
When looking at the individual lot data, we can see that Lot 3 has a p value (0.04168) lower than our significance level of 5%. Therefore we can say that Lot 3 has a sample mean which is statistically different from the population.
MechaCars Design Study
The metrics which I believe would be of interest to a consumer are the fuel efficiency and cost of ownership

The user would want to determine whether the cost of MechaCars is less than or equal to that of other manufacturers. To compare the cost of various manufacturers we need to perform ANOVA test in which we need to have mainly cost and fuel efficiency data of all the concerned manufacturers. For this the null hypotheses will be that the means of costs of all groups are equal. And the alternate hypotheses is that at least one of the means is different from all other groups.
