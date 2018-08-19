# Gerardo Graciano
# 100244514
# Math 32
# Professor Yatskar

# Part II

# Sketching the graph of the joint probability density function of exercise 9.12,
# f(x,y)=(1/10)(3x^2+8xy) for 0<=x<=1 and 0<=y<=2, and f(x,y)=0 otherwise, to
# determine whether P(2X<Y) is larger or smaller than 1/2.

# seq(0,1,0.01) collects the points that extend from 0 to 1 with an increment of
# 0.01 and stores them in a vector 'x', which serves as the domain for the
# x-component of the function.
x <- seq(0,1,0.01)

# seq(0,2,0.01) collects the points that extend from 0 to 2 with an increment of
# 0.01 and stores them in a vector 'y', which serves as the domain for the
# y-component of the function.
y <- seq(0,2,0.01)

# function(x,y){1/10*(3*x*x+8*x*y)} stores the formula of the joint density
# fucntion, found inside the curly barces, into a vector 'surf'.
surf <- function(x,y){1/10*(3*x*x+8*x*y)}

# outer(x,y,surf) calculates the values of the density function of the mesh
# of points that was collected in vectors 'x' and 'y'.
z <- outer(x,y,surf)

# persp(x,y,z, theta = 30, phi = 30, ticktype = "detailed") sketches a three-
# dimensional graph of the density function over the mesh of points that was
# collected in vectors 'x' and 'y'. Note that 'theta = 30' and 'phi = 30'
# defines the viewing angles of the graph.
persp(x,y,z, theta = 30, phi = 30, ticktype = "detailed")

# Setting 'theta = 30' and 'phi = 0' is better suited for this problem as it
# provides the best viewing angles for determining whether P(2X<Y) is larger
# or smaller than 1/2.
persp(x,y,z, theta = 30, phi = 30, ticktype = "detailed")

# Conclusion: Judging from the graph of the joint density function, P(2X<Y)
# appears to be smaller than 1/2.