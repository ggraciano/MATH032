# Gerardo Graciano
# 100244514
# Math 32
# Professor Yatskar

# Part II

# Simulation of at least one valve failing to open, such that:
# A boiler has five identical relief valves, whose operation of each other is
# independant. The probability that any particular valve will open on demand
# is .95.

# Function valve() simulates at least one valve failing to open. Thus, the
# probability that is expected from this simulation is .2262. Additionally,
# since this is the probability of at least one valve failing to open, it
# follows that:
valve <- function() {
v <- (runif(5) <= .05) #returns True if runif is less or equal to .05 probability that the valve is open
return(v) #returns the state of the three valves
}

# Now we must simulate the probability of at least one valve failing to
# open by conducting the experiment more than once.
# Repeats the experiment 10 times and stores the outcomes in the vector x
x <- replicate(10, valve())

# Probability of at least one valve failing to open out of the 10 trials
# where colSums(x) adds the values in each of the 10 trials. 
sum(colSums(x) >= 1)/10 #colSums(x) >= 1 is True if the number of working valves is more than one
# [1] 0.1

# Now we repeat the experiment several more times.
# 100 times
x <- replicate(100, value())
sum(colSums(x) >= 1)/100
# [1] 0.21

# 1000 times
x <- replicate(1000, value())
sum(colSums(x) >= 1)/1000
# [1] 0.211

# 10000 times
x <- replicate(10000, value())
sum(colSums(x) >= 1)/10000
# [1] 0.2271

# 100000 times
x <- replicate(100000, value())
sum(colSums(x) >= 1)/100000
# [1] 0.22617

# Conclusion: As we can see, the probability of at least one valve failing
# appears to be converging toward .2262. We have, thus, shown the emperical
# probability of at least one valve failing to open in a boiler with 5 valves.