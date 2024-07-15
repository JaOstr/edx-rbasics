# question 8
library(dslabs)
data(murders)

which(murders$state == "Massachusetts")
match(c("Massachusetts"), murders$state)
c("Massachusetts") %in% murders$state
which(murders$state = "Massachusetts")
