# Data Analysis in R Studio - Case Study

This project analyses Carolina Rice Company, a fictional business dedicated to the sustainable production and sale of rice, as it transitions from bulk sales to an industrialized packaging process. It focuses on evaluating the reliability of the new production system by studying the weight consistency of small-sized rice bags. Using a random sample of 29 bags, the analysis calculates the sample mean, standard deviation, and a 95% confidence interval for the population mean. The case highlights the importance of statistical methods in ensuring product quality and maintaining customer trust. Objectives include strengthening quality control, supporting operational efficiency, and driving sustainable growth through data-driven decision-making.

--------

## Carolina Rice Company - Sustainably Farmed Rice: Background

Carolina Rice Company is a (fictional) company dedicated to the production and sale of sustainably farmed rice. The company used to sell rice in bulk, but recently the owners decided to industrialize the production process, which led to the opening of a packaging plant. To ensure the quality of the production process, they have hired you to conduct a study on the reliability of this process.

They want to estimate the average weight of the small-sized rice bags they produce. You take a random sample of 29 bags and obtain the following weights in kilograms:

weights = [5.2, 4.9, 5.5, 5.0, 5.8, 5.3, 5.1, 5.6, 4.7, 5.4, 5.0, 5.7, 5.2, 5.1, 5.3, 5.0, 5.6, 5.2, 5.4, 5.5, 5.7, 5.1, 5.8, 5.0, 5.3, 5.6, 4.9, 5.5, 5.2]

________________

## Left-tailed critical value for t-distribution
![graph](https://github.com/valerijarudjko/data-analysis-rstudio/blob/main/Left-tailed%20critical%20value%20for%20t-distribution.png)
- The curve represents the distribution of possible means x̄ assuming that H₀ is true (μ = μ₀ = 5.3 kg).
- The light-shaded left region is the critical area for a significance level of α = 0.05, serving as the "strictness threshold": if our x̄ falls here, we reject H₀ (accepting a 5% risk of a false positive).
- The dotted vertical line on the left indicates the critical limit (the boundary of the α area).
- The shaded region up to the observed x̄ is the p-value (the area of the tail to the left of x̄).
- If this area is ≤ α, we reject H₀; otherwise,we don't. 
________________

## To do:
1. Question

- Calculate a 95% confidence interval for the mean weight of all the rice bags produced in the factory.
- Calculate the sample mean.
- Calculate the standard deviation.
- Calculate the confidence interval.

2. Question 

- Suppose that Carolina Rice Company claims that the average weight of their large-sized rice bags is 1.5 kilograms. However, a group of consumers is skeptical and believes the average weight is lower. To test their hypothesis, they take a random sample of 50 rice bags and find an average weight of 1.48 kilograms with a standard deviation of 0.1 kilograms. They want to determine if there is sufficient evidence to reject the company's claim.
- Formulate the null (H0) and alternative (H1) hypotheses for a significance level of 5% (α = 0.05).
- Calculate the test statistic t.
- Consult a t-distribution table or statistical software to find the critical t-value for a significance level of 0.05 with 49 degrees of freedom (n - 1 = 50 - 1 = 49). For a significance level of 5%, the critical value is approximately -1.676. What conclusion can you draw?

---------
