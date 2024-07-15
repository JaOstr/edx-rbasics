install.packages("data.table")
library(data.table)

#vignette("datatable-intro")
library(tidyverse)
library(dslabs)
data(murders)

murders <- setDT(murders)
class(murders)


# SELECT
# dplyr
murders |>
  select(state, region) |>
  head()

# data.table
murders[, c("state", "region")] |> head()
# data.table, .() notation (tells data.table that we're talking about fields)
murders[, .(state, region)] |> head()

# MUTATE
# dplyr
murders_dplyr <- mutate(murders, rate = total / population * 10^5)
# data.table
murders[, rate := total / population * 10^5]


# y is referring to x and := changes by reference
x <- data.table(a = 1)
y <- x

x[,a := 2]
y

y[,a := 1]
x

# use copy to make an actual copy
x <- data.table(a = 1)
y <- copy(x)
x[,a := 2]

#dplyr
filter(murders, rate <= 0.7)
#data.table
murders[rate <= 0.7]

# dplyr - filter, select
murders |>
  filter(rate <= 0.7) |>
  select(rate, state)
  
# data.table - filter and select in one go
murders[rate <= 0.7, .(rate, state)]


# summarizing with data.table
data(heights)
heights <- setDT(heights)
class(heights)

summary_dplyr <- heights |>
  summarize(average = mean(height), standard_deviation = sd(height))
summary_dt <- heights[, .(average = mean(height), standard_deviation = sd(height))]

# filter & summarize
summary2 <- heights[sex == "Female",
                    .(average = mean(height), std_dev = sd(height))]

# summarize by groups
heights[, .(average = mean(height), std_dev = sd(height)), by = sex]


# ordering
murders[order(population)] |> head()
murders[order(population, decreasing = TRUE)] |> head()
murders[order(region, rate)]

# tibbles
data(gapminder)
gapminder
as_tibble(gapminder)
data(murders)
class(murders[,1])
class(as_tibble(murders)[,1])

# as you see, data.frame's column selection returns vectors
# but tibble's selection returns tibbles
# to get a vector from a tibble, use accessors
mur = as_tibble(murders)
class(mur)
class(mur[,1])
class(mur$state)

# by the way, here's how to select 1st column of a data.frame
murders[,1]
# and the first row
murders[1,]

