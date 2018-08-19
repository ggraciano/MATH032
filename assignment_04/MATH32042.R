# Gerardo Graciano
# 100244514
# Math 32
# Professor Yatskar

# Part III

# Analyzing the data of different professions.

# read.table(file.choose(), header = T, sep = ",") reads a file in table format,
# that is, Duncan.csv, and creates a data frame from it that corresponds with
# the fields in the file and stores it in the vairable 'mydata'.
mydata <- read.table(file.choose(), header = T, sep = ",")

# mean(mydata$income) calculates the mean of the set of numbers under the
# heading 'income' for 'mydata'.
mean(mydata$income)
# [1] 41.86667

# sd(mydata$income) calculates the standard diviation of the set of numbers
# under the heading 'income' for 'mydata'.
sd(mydata$income)
# [1] 24.43507

# (a) mean = 41.86667, standard deviation = 24.43507

# hist(mydata$income, main = "Histogram of Income", xlab = "Income", col = "blue", breaks = 5, freq = FALSE)
# plots a normalized histogram, that is, that the sum of the areas of the bins
# equal to one, with 5 bins in blue.
hist(mydata$income, main = "Histogram of Income", xlab = "Income", col = "blue", breaks = 5, freq = FALSE)

# seq(0, 100, length = 50) generates a sequence from 0 to 100 and that has a
# length of 50 and stores it in the variable 'xf'.
xf <- seq(0, 100, length = 50)

# dnorm(xf, mean(mydata$income), sd(mydata$income)) generates the probability
# density function for the normal distribution of the incomea nd stores it in
# the variable 'yf'.
yf <- dnorm(xf, mean(mydata$income), sd(mydata$income))

# lines(xf, yf, col = "red", lwd = "2") plots the graph of the probability
# density funciton for the normal distribution of the income.
lines(xf, yf, col = "red", lwd = "2")

# (b) The histogram does not agree with the normal probability density fucntion.

# par(new = TRUE) make sit possible to plot two graphs at the same time.
par(new = TRUE)

# hist(mydata$income, main = "Histogram of Income", xlab = "Income", col = "green", breaks = 10, freq = FALSE)
# plots a normalized histogram, that is, that the sum of the areas of the bins
# equal to one, with 10 bins in green.
hist(mydata$income, main = "Histogram of Income", xlab = "Income", col = "green", breaks = 10, freq = FALSE)

# (c) The agreement gets better.

# plot(mydata$education, mydata$prestige) generetates a a scatter plot of
# education vs prestige.
plot(mydata$education, mydata$prestige)

# plot(mydata$income, mydata$prestige) generetates a a scatter plot of income
# vs prestige.
plot(mydata$income, mydata$prestige)

# plot(mydata$education, mydata$income) generetates a a scatter plot of
# education vs income.
plot(mydata$education, mydata$income)

# (d) For the most part, the scatter plots appear to ahve a postive correlation,
# 	which is to be expected because of the fields being compared.
