library(dslabs)
library(dplyr)

# dplyr - mutate
str(murders)
murders <- mutate(murders, rate = total/population*100000)``
str(murders)
head(murders)

# dplyr - filter
filter(murders, rate <= 0.71)

# dplyr - select
new_table <- select(murders, state, region, rate)
head(new_table)
filter(new_table, rate <= .71)


# with pipes
murders %>%
  select(state, region, rate ) %>%
  filter(rate <= 0.71)

# with the new pipe operator
murders |>
  select(state, region, rate) |>
  filter(rate <= 0.71)
