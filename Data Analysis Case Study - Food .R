# Data Analysis - Carolina Rice Company Case Study


# Question1:

# importing the data
# for Question1 we don't need an extra libraries

weights <- c(5.2, 4.9, 5.5, 5.0, 5.8, 5.3, 5.1,
                 5.6, 4.7, 5.4,5.0, 5.7, 5.2, 5.1, 
                 5.3, 5.0, 5.6, 5.2, 5.4, 5.5, 5.7,
                 5.1, 5.8, 5.0, 5.3, 5.6, 4.9, 5.5, 5.2)

# t.test() will automatically perform the sample mean and 95% confidence interval(ci)
result <- t.test(weights, conf.level = 0.95)

result                      # overall t.test data

# Results of the t.test shows that: 
# -----------
# data:  weights
# t = 96.828, df = 28, p-value < 2.2e-16
# alternative hypothesis: true mean is not equal to 0
# 95 percent confidence interval:
# 5.184502 5.408601
# sample estimates:
#  mean of x 
# 5.296552 
# -----------
# the $ operator lets us pick out one piece of information from a list or data frame
result$conf.int              # t.test result in number = 5.184502 5.408601 or 5.185kg 5.409kg
round(result$conf.int, 3)

result$estimate              # sample mean = 5.296552 or 5.297kg
round(result$estimate, 3)

sd_value <- sd(weights)
sd(weights)                  # the sample standard deviation = 0.2945732 or 0.295kg
round(sd_value, 3)

# ------------------------------------------------
# Final results:
# mean value = 5.297kg
# sd value = 0.295kg
# ci value = 5.185kg, 5.409kg

# Result interpretation: We are 95% confident that the true mean average
# weight of all small bags of rice produced by Carolina Rice Company 
# is between 5.185 kg and 5.409 kg. The sample mean is 5.297 kg with a 
# standard deviation of 0.295 kg, indicating a fairly consistent packaging process.
# ------------------------------------------------



# Question 2:

# for Question 2 we need to install the BSDA library

install.packages("BSDA")
library(BSDA)


# -----------
# The known summary statistics from the scenario's problem:
# n = sample size
# sample_m = sample mean (kg)
# sd = samples standart deviation
# pop_m0 = company's claimed population mean (kg)
# alpha = significance level
# -----------
n <- 50
sample_m <- 1.48
sample_sd <- 0.10
pop_m0 <- 1.50
alpha <- 0.05

# Hypotheses:
# h1: mu = pop_m0         - company's claim
# h2: mu < pop_m1         - consumers suspect underfilling

# perfoming on sample left tailed t summary test:
tsum.test(mean.x = sample_m,
                     s.x = sample_sd,
                     n.x = n,
                     mu = pop_m0,
                     alternative = "less",
                     conf.level = 1 - alpha)

# Results of the summary t.test shows that: 
# -----------
# One-sample t-Test
# data:  Summarized x
# t = -1.4142, df = 49, p-value = 0.08181
# alternative hypothesis: true mean is less than 1.5
# 95 percent confidence interval:
#  NA 1.50371
#  sample estimates:
#  mean of x 
# 1.48 
# quantile of the t-distribution = -1.677
# -----------
p_value = 0.08181
round(p_value, 3)

# critical t-value for left-tailed test at α = 0.05, df = n - 1:
qt_val <- qt(alpha, df = n - 1)           # -1.676551
round(qt_val,3)

# Conclusion:
# The calculated test statistic (t = -1.414) is greater than the critical value (t_crit = -1.676).
# The p-value (0.082) is larger than α = 0.05.
# Therefore, in the scenario’s t statistic is not extreme, so h0 is not rejected. 
# Interpretation: there is not enough evidence to conclude that the average weight of
# large rice bags is less than 1.5 kg. The observed difference (1.48 vs 1.50) can be
# explained by normal sampling variation.