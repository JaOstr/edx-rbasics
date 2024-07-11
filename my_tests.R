library(dslabs)

data(murders)

class(murders)
str(murders)
summary(murders)
class(murders$population)
length(murders$population)

class(murders$region)
levels(murders$region)


# Quizzes

# Quiz 1
quadratic <- function(a, b, c) {
  delta <- b^2 - 4*a*c
  x1 <- (-b - sqrt(delta)) / (2*a)
  x2 <- (-b + sqrt(delta)) / (2*a)
  c(x1, x2)
}
quadratic(1, 1, -1)
quadratic(2, -1, -4) # 1st question

log(1024, base = 4)  # 2nd

data(movielens)
str(movielens) # 3a-3d, 4

# Quiz 2
# 1, 2
x <- c(2, 43, 27, 96, 18)
order(x)
rank(x)
sort(x)
min(x)
which.min(x)
max(x)
which.max(x)
# 3
name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)
time_hr <- time / 60
distance / time_hr

# 6,7,8
data(olive)
head(olive)
str(olive)
?olive
plot(olive$palmitoleic, olive$palmitic)
hist(olive$eicosenoic)
boxplot(palmitic ~ region, data = olive)



# add columnt to dataset
murders$rate <- with(murders, total / population * 100000)


mm <- matrix(1:9, 3, 3)
image(mm)
