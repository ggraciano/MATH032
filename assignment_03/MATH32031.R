# Gerardo Graciano
# 100244514
# Math 32
# Professor Yatskar

# Part I

# Sketching the graph of the joint probability density function of exercise 9.10,
# f(x,y)=(12/5)xy(1+y) for 0<=x<=1 and 0<=y<=1, and f(x,y)=0 otherwise, to
# determine whether P(X+Y<1) is larger or smaller than 1/2.

# seq(0,1,0.01) collects the points that extend from 0 to 1 with an increment of
# 0.01 and stores them in a vector 'x', which serves as the domain for the
# x-component of the function.
x <- seq(0,1,0.01)

# Since the domain for the y-component is the same as the domain for the
# x-component, we can set a vector 'y' to have the same characteristics as
# vector 'x'.
y <- x

# function(x,y){12/5*x*y*(1+y)} stores the formula of the joint density fucntion,
# found inside the curly barces, into a vector 'surf'.
surf <- function(x,y){12/5*x*y*(1+y)}

# outer(x,y,surf) calculates the values of the density function of the mesh
# of points that was collected in vectors 'x' and 'y'.
z <- outer(x,y,surf)

# persp(x,y,z, theta = 30, phi = 30, ticktype = "detailed") sketches a three-
# dimensional graph of the density function over the mesh of points that was
# collected in vectors 'x' and 'y'. Note that 'theta = 30' and 'phi = 30'
# defines the viewing angles of the graph.
persp(x,y,z, theta = 30, phi = 30, ticktype = "detailed")

# Conclusion: Judging from the graph of the joint density function, P(X+Y<1)
# appears to be smaller than 1/2.