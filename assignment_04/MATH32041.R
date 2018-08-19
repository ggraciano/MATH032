# Gerardo Graciano
# 100244514
# Math 32
# Professor Yatskar

# Part II

# Analyzing the data of the launch temperatures of the Challenger space shuttle
# during take-offs in degrees Fahrenheit.

# scan(file.choose()) allows you to import the data of your choosing, challenger.csv
# in this case, and stores it in a variable 'challeger'.
challenger <- scan(file.choose())

# summary(challenger0 provides discriptive statistics, such as the min. and max.
# values, lower and upper quartiles, and mean and median of the given data,
# 'challenger'.
sumamry(challenger)
#   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
#  31.00   66.75   70.00   67.96   75.00   81.00

# (a) sample median = 70.00, lower quartile = 66.75, upper quartile = 75.00

# boxplot(challenger), as its name implies, simply creates a boxplot from the
# given data, 'challenger'.
boxplot(challenger)

# (b) Refer to first page.

# (c) The value 31 is an outlier, which, in this case, means that the launch
# temperature of the Challenger space shuttle on January 28, 1986, was not
# ideal.