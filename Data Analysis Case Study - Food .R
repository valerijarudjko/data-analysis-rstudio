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

