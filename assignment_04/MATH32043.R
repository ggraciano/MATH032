# Gerardo Graciano
# 100244514
# Math 32
# Professor Yatskar

# Part IV

# Analyzing the data of the blood coagulation times of 24 animals who are fed
# fed four different diets.

# read.table(file.choose(), header = T, sep = ",") reads a file in table format,
that is, coagulation.csv, and creates a data frame from it that corresponds
# with the fields in the file and stores it in the vairable 'bdata'.
bdata <- read.table(file.choose(), header = T, sep = ",")

# boxplot(Time~Diet, data = bdata, main = "Diet vs Tiem", xlab = "Diet", ylab = "Time")
# creates a box and whiskers plot that compares the coagulation time for the
# four different diets in 'bdata'.
boxplot(Time~Diet, data = bdata, main = "Diet vs Time", xlab = "Diet", ylab = "Time")

# The diet that had the most impact on coagulation time was diet 2 because the
# range is relatively higher compared to the rest of the diets.

# Compared to diet 1, diet 3 does give a longer coagulation time.