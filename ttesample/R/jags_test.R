# install.packages("rstan", repos = c("https://mc-stan.org/r-packages/", getOption("repos")))
# library(rstan)

# https://www.jihongzhang.org/post/manual-learn-jags-in-rins/

library(R2jags)
n.sim <- 100; set.seed(123)
x1 <- rnorm(n.sim, mean = 5, sd = 2)
x2 <- rbinom(n.sim, size = 1, prob = 0.3)
e <- rnorm(n.sim, mean = 0, sd = 1)

b1 <- 1.2
b2 <- -3.1
a <- 1.5
y <- b1*x1 + b2*x2 + e

sim.dat <- data.frame(y, x1, x2)


