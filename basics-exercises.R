# 1
# What is the sum of the first 100 positive integers?
# The formula for the sum of integers 1 through n is n*(n+1)/2
# Define n = 100 and then use R to compute 
# the sum of 1 through 100 using the formula. What is the sum?
n <- 100
my_sum <- function(n) {
  n * (n + 1) / 2
}
my_sum(n)
sum(1: n)

# 2
# Now use the same formula to compute the sum of the integers
# from 1 through 1000.
my_sum(1000)
sum(1:1000)

# 3
# Look at the result of typing the following code into R:
n <- 1000
x <- seq(1, n)
sum(x)
# Based on the result, what do you think the functions seq and sum do?
# You can use help.
#     sum creates a list of numbers and seq adds them up.
# X   seq creates a list of numbers and sum adds them up.
#     seq creates a random list and sum computes the sum of 1 through 1,000.
#     sum always returns the same number.


# 4
# In math and programming, we say that we evaluate a function
# when we replace the argument with a given value.
# So if we type sqrt(4), we evaluate the sqrt function.
# In R, you can evaluate a function inside another function.
# The evaluations happen from the inside out.
# Use one line of code to compute the log, in base 10,
# of the square root of 100.
log10(sqrt(100))

# 5
# Which of the following will always return the numeric
# value stored in x?
# You can try out examples and use the help system if you want.
#      log(10^x)
#      log10(x^10)
#   X  log(exp(x))
#      exp(log(x, base = 2))

# 6
# Make sure the US murders dataset is loaded.
# Use the function str to examine the structure of the murders object.
# Which of the following best describes the variables represented
# in this data frame?
  
#        The 51 states.
#        The murder rates for all 50 states and DC.
#   X    The state name, the abbreviation of the state name, 
#             the state’s region, and the state’s population
#             and total number of murders for 2010.
#        str shows no relevant information.


# 7
# What are the column names used by the data frame for these
# five variables?
names(murders)
# state, abb, region, population, total

# 8
# Use the accessor $ to extract the state abbreviations
# and assign them to the object a.
# What is the class of this object?
a <- murders$abb
a
class(a)
# character

# 9
# Now use the square brackets to extract the state abbreviations
# and assign them to the object b.
# Use the identical function to determine if a and b are the same.
?identical
b <- murders["abb"]
b
class(b)
identical(a, b)
# the are not - murders["abb] returns a data.frame murders$abb - a vector
murders[c("abb", "rate")]

# 10
# We saw that the region column stores a factor.
# You can corroborate this by typing:
class(murders$region)
# With one line of code, use the functions levels
# and length to determine the number of regions defined by this dataset.
length(levels(murders$region))
# answer: 4

# 11
# The function table takes a vector and returns the frequency
# of each element.
# You can quickly see how many states are in each region
# by applying this function.
# Use this function in one line of code to create a table
# of number of states per region.
table(murders$region)

