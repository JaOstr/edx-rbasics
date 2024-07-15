library(dslabs)
data(heights)

library(dplyr)
library(data.table)

# question 1
fem <- ifelse(heights$sex == "Female", 1, 2)
head(fem)
sum(fem)
# 1862

# question 2
heights_over_72 <- ifelse(heights$height > 72, heights$height, 0)
head(heights_over_72)
# 9.653

# question 3
inches_to_ft <- function(inches) {
  inches / 12
}
inches_to_ft(144)
# 12
sum(ifelse(inches_to_ft(heights$height) < 5, 1, 0))
# 20

# question 4
