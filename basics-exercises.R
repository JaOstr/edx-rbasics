# 1/45
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

# 2/45
# Now use the same formula to compute the sum of the integers
# from 1 through 1000.
my_sum(1000)
sum(1:1000)

# 3/45
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

# 12/45
# Use the function c to create a vector
# with the average high temperatures in January for
# Beijing, Lagos, Paris, Rio de Janeiro, San Juan, and Toronto, which are 
# 35, 88, 42, 84, 81, and 30 degrees Fahrenheit. Call the object temp.
temp <- c(35, 88, 42, 84, 81, 30)
temp

# 13/45
# Now create a vector with the city names and call the object city.
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city

# 14/45
# Use the names function and the objects defined
# in the previous exercises to associate the temperature data
# with its corresponding city.
names(temp) <- city
temp

# 15/45
# Use the [ and : operators to access the temperature
# of the first three cities on the list.
temp[1:3]
              
# 16/45
# Use the [ operator to access the temperature of Paris and San Juan.
temp[c("Paris", "San Juan")]

# 17/45
# Use the : operator to create a sequence of numbers
17:45

# 18/45
# Create a vector containing all the positive odd numbers
# smaller than 100.
pos_odd <- seq(1,100, 2)
pos_odd
                            
# 19/45
# Create a vector of numbers that starts at 6,
# does not pass 55, and adds numbers in increments of 4/7:
# 6, 6 + 4/7, 6 + 8/7, and so on. How many numbers does the list have?
# Hint: use seq and length.
v <- seq(6, 55, 4/7)
v
length(v)
                            
# 20/45 
# What is the class of the following object a <- seq(1, 10, 0.5)?
a <- seq(1, 10, 0.5)
class(a)
# numeric
                              
# 21/45
# What is the class of the following object a <- seq(1, 10)?
a <- seq(1, 10)
class(a)
# integer

# 22/45
# The class of class(a<-1) is numeric, not integer.
# R defaults to numeric and to force an integer,
# you need to add the letter L. Confirm that the class of 1L is integer.
class(a <- -1)
a
a <- 1L
class(a)
a <- 1:2
class(a)

# 23/45
# Define the following vector: x <- c("1", "3", "5")
# and coerce it to get integers.
x <- c("1", "3", "5")
class(x)
x <- as.integer(x)
class(x)

# 24/45 
# For exercises 24-31 we will use the US murders dataset.
# Make sure you load it prior to starting.
# Use the $ operator to access the population size data
# and store it as the object pop.
# Then use the sort function to redefine pop so that it is sorted.
# Finally, use the [ operator to report the smallest population size.
library(dslabs)
data(murders)
pop <- murders$population
head(pop, 20)
pop <- sort(pop)
head(pop, 20)
pop[1]

# 25/45
# Now instead of the smallest population size,
# find the index of the entry with the smallest population size.
# Hint: use order instead of sort.
pop <- order(murders$population)
pop[1]
pop
murders$population[51]

# 26/45
# We can actually perform the same operation as in the previous exercise
# using the function which.min. Write one line of code that does this.
which.min(murders$population)
# 51

# 27/45
# Now we know how small the smallest state is
# and we know which row represents it.
# Which state is it?
# Define a variable states to be the state names
# from the murders data frame.
# Report the name of the state with the smallest population.
states <- murders$state
states[which.min(murders$population)]
# Wyoming
murders$state[51]

# 28/45
# You can create a data frame using the data.frame function.
# Here is a quick example:
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)
# Use the rank function to determine the population rank
# of each state from smallest population size to biggest.
# Save these ranks in an object called ranks,
# then create a data frame with the state name and its rank.
# Call the data frame my_df.
ranks <- rank(murders$population)
ranks
my_df <- data.frame(name = murders$state, rank = ranks)

# 29/45
# Repeat the previous exercise, but this time order my_df
# so that the states are ordered from least populous to most populous.
# Hint: create an object ind that stores the indexes
# needed to order the population values.
# Then use the bracket operator [ to re-order each column
# in the data frame.
ind <- order(murders$population)
my_df <- data.frame(name = murders$state[ind],
                    population = murders$population[ind])

# 30/45
# The na_example vector represents a series of counts.
# You can quickly examine the object using:
str(na_example)
#>  int [1:1000] 2 1 3 2 1 3 1 4 3 2 ...
# However, when we compute the average with the function mean,
# we obtain an NA:
mean(na_example)
#> [1] NA
# The is.na function returns a logical vector that tells us
# which entries are NA.
# Assign this logical vector to an object called ind and determine
# how many NAs does na_example have.
ind <- is.na(na_example)
sum(ind)
# 145

# 31/45
# Now compute the average again, but only for the entries
# that are not NA. Hint: remember the ! operator,
# which turns FALSE into TRUE and vice versa.
sum(sort(na_example)) / sum(!ind) # sort removes NAs by default :)
sum(na_example, na.rm = TRUE) / sum(!ind)
mean(na_example, na.rm = TRUE)

# 32/45
# In exercises 28 we created the temp data frame:
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)
# Remake the data frame using the code above,
# but add a line that converts the temperature
# from Fahrenheit to Celsius. The conversion is c = 5/9 * (f - 32)
city_temps_celsius <- data.frame(name = city, temperature = 5/9 * (temp - 32))

# 33/45
# What is the following sum 1 + 1/1^2 + 1/2^2 + 1/3^2 + ... + 1/100^2
# Hint: thanks to Euler, we know it should be close to PI^2/6
sum(1/(1:100)^2)
pi^2/6

# 34/45
# Compute the per 100,000 murder rate for each state
# and store it in the object murder_rate.
# Then compute the average murder rate for the US
# using the function mean. What is the average?
data(murders)
murder_rate <- murders$total / murders$population * 100000
fake_average <- mean(murder_rate)
# 2.779125
# real mean:
sum(murders$total) / sum(murders$population) * 100000
# 3.034555
  
# 35/45
# For remaining exercises 35-42, start by loading the library and data.
library(dslabs)
data(murders)
# Compute the per 100,000 murder rate for each state
# and store it in an object called murder_rate.
murder_rate <- murders$total / murders$population * 10^5
# Then use logical operators to create a logical vector
# named low that tells us which entries of murder_rate are lower than 1.
low <- murder_rate < 1

# 36/45
# Now use the results from the previous exercise and the function
# which to determine the indices of murder_rate
# associated with values lower than 1.
which(low)

# 37/45
# Use the results from the previous exercise to report
# the names of the states with murder rates lower than 1.
murders$state[which(low)]

# 38/45
# Now extend the code from the exercise to report the states
# in the Northeast with murder rates lower than 1.
# Hint: use the previously defined logical vector low and
# the logical operator &.
murders$state[which(low & murders$region == "Northeast")]

# 39/45
# In a previous exercise we computed the murder rate for each state
# and the average of these numbers.
# How many states are below the average?
sum(murder_rate < fake_average)
# 27

# 40/45
# Use the match function to identify the states with abbreviations
# AK, MI, and IA.
# Hint: start by defining an index of the entries of murders$abb
# that match the three abbreviations, then use the [ operator
# to extract the states.
ind <- match(c("AK", "MI", "IA"), murders$abb)
murders$state[ind]

# 41
# Use the %in% operator to create a logical vector that answers
# the question: which of the following are actual abbreviations:
# MA, ME, MI, MO, MU?

# 42
# Extend the code you used in exercise 7 to report the one entry
# that is not an actual abbreviation.
# Hint: use the ! operator, which turns FALSE into TRUE and vice versa,
# then which to obtain an index.

# 43
# We made a plot of total murders versus population and noted
# a strong relationship. Not surprisingly,
# states with larger populations had more murders.
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)
# Keep in mind that many states have populations below 5 million
# and are bunched up.
# We may gain further insights from making this plot in the log scale.
# Transform the variables using the log10 transformation
# and then plot them.

# 44
# Create a histogram of the state populations.

# 45                                                                                                                                                                                                         
# Generate boxplots of the state populations by region.
