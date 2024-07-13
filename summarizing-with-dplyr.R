library(tidyverse)
library(dslabs)
data(murders)

murders <- mutate(murders, rate = total / population * 10^5)

west_summary <- murders %>%
  filter(region == "West") %>%
  summarize(minimum = min(rate),
            median = median(rate),
            maximum = max(rate))
west_summary

us_murder_rate <- murders %>%
  summarize(rate = sum(total) / sum(population) * 10^5)
us_murder_rate


murders %>%
  filter(region == "West") %>%
  summarize(quantiles = quantile(rate, c(0, 0.5, 1)))

my_quantile <- function(rate) {
  r <- quantile(rate, c(0, 0.5, 1))
  data.frame(minimum = r[1], mean = r[2], maximum = r[3])
}
murders %>%
  filter(region == "West") %>%
  summarize(my_quantile(rate))


# use pull to get a numeric instead of a data.frame
total_rate <- murders %>%
  summarize(rate = sum(total) / sum(population) * 10^5) %>%
  pull(rate)
class(total_rate)
total_rate


# group then summarize
# group_by followed by summarize is one the most used 
# sequences in data analysis
murders %>%
  group_by(region) %>%
  summarize(median = median(rate))

# sort data.frames by columns: dplyr arrange
murders %>%
  arrange(rate) %>%
  head(20)
murders %>%
  arrange(population) %>%
  head(8)
murders %>%
  arrange(desc(population)) %>%
  head()
murders %>%
  arrange(region, rate) %>%
  head

# top_n
murders %>%
  top_n(10, rate)
murders %>%
  arrange(desc(rate)) %>%
  top_n(10)
