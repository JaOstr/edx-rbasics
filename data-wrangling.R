library(dplyr)
library(dslabs)
options(digits = 3)

data(murders)

murders |>
  mutate(rate = total / population * 100000) |>
  select(state, region, rate) |>
  filter(rate <= 0.71)

murders <- murders |> mutate(rate = total / population * 100000)

s <- murders |>
  filter(region == "West") |>
  summarize(
    min = min(rate),
    mean = mean(rate),
    max = max(rate))

