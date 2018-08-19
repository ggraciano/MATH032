# Gerardo Graciano
# 100244514
# Math 32
# Professor Yatskar

# Part II

# Analyzing data that was extracted from the 1974 Motor Trend US Magazine, which
# comprises fuel consumption and 10 aspects of automobile design and performance
# for 32 automobiles.

# mtcars dispalys the data that was extracted from the 1974 Motor Trend US
# Magazine.
mtcars

# (a) I believe that the weight of a car and its mpg are inversely proportional,
# 	that is, the more weight a car has, the lower the mpg will be and vice
# 	versa.

# plot(mpg ~ wt, data = mtcars, main = "MPG vs WT: GG") creates a scatter plot
# that compares the weigth of a car and its mpg.
plot(mpg ~ wt, data = mtcars, main = "MPG vs WT: GG")

# (b) The scatter plot does confirm my expectation because as the weigth of a
# 	car increases, its mpg decreases

# lm.r = lm(mpg ~ wt, data = mtcars) produces the line fit parameters for the
# data, mtcars, with respect to a cars weight and its mpg.
lm.r = lm(mpg ~ wt, data = mtcars)

# (c) lm.r dispalys the parameters obtained.

# abline(lm.r) superimposes the liner fit on top of the scatter plot.
abline(lm.r)

# (d) abline(lm.r)

# (e) ------------------------------------------------------------------------

# (f) The car is consistent with the fit.2001 GMC Sonoma SLS, 3.040, 22.0.