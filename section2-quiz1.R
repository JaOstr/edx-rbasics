library(dslabs)
data(heights)
options(digits = 3)

# question 1
average <- mean(heights$height)
average
ind <- heights$height > average
sum(ind)
# 532

# question 2
library(dplyr)
heights |>
  filter(sex == "Female", height > average)
# 31 (the last row's number)

# question 3
sum(heights$sex == "Female") / count(heights)
# 0.227

# question 4a
min_height <- min(heights$height)
min_height
# question 4b
match(min_height, heights$height)
# 1032
heights[1032,]
# question 4c
heights$sex[1032]

# question 5a
max_height <- max(heights$height)
max_height
as.integer(max_height)

# question 5b
x <- 50:82

# question 5c
sum(!(50:82 %in% heights$height))

# question 6
heights2 <- heights |>
  mutate(ht_cm = height * 2.54)
# 6a
heights2[18,]
# 6b
mean(heights2$ht_cm)

# question 7
library(data.table)
heights2 <- setDT(heights2)
heights3 <- heights2 |>
  filter(sex == "Female")
mean(heights3$ht_cm)
# 165


