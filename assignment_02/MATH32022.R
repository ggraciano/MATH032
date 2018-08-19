# Gerardo Graciano
# 100244514
# Math 32
# Professor Yatskar

# Part II

# Simulation of an experiment with a uniform distribution U(a,b), where 'a' is
# 0 and 'b' is 100, that is to say, f(x)=U(0,100).

# runif(n,a,b) will generate 'n' amount of realizations of a U(0,100)
# distribution and store its values in a vector 'x'. For starters, set 'n' equal
# to 1000, thus, generating 1000 realizations.
x <- c(runif(1000,0,100)

# mean(x) will calculate the mean, or the average, of the values stored in 'x',
# that is to say, the 1000 realizations created in the previous step, and store
# this value in a vector 'y'.
y <- c(mean(x))

# print(y) will display the value 'y', that is to say, the mean of 'x'.
print(y)
# [1] 51.23305

# Repeat the experiment with a larger sample size, that is, set 'n' equal to:
# 10000
x <- c(runif(10000,0,100)
y <- c(mean(x))
print(y)
# [1] 49.63063

# 50000
x <- c(runif(50000,0,100)
y <- c(mean(x))
print(y)
# [1] 50.07976

# 100000
x <- c(runif(100000,0,100)
y <- c(mean(x))
print(y)
# [1] 49.98046

# The theoretical expectation, E[X], of f(x)=U(0,100) is the integral from 'a'
# to 'b', so from 0 to 100, of xf(x), which is 50.

# Conclusion: As we can see, the values appear to be converging to 50 as the
# sample size increases, which matches that of the theoretical expectation,
# E[X]. This is to be expected because E[X] is essentailly the mean of a
# random variable X. In this case, the E[X] that we calculated was for a
# continuous random variable X, which the the command runif(n,a,b) simulates,
# but in the form of a discrete set of values, 'n'. Thus, the E[X] that
# mean(runif(n,a,b)) calculates is for this discrete random variable X.