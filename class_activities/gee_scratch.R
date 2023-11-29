library(gee)


m <- 10
n_i <- 10
n <- m*n_i
groups <- rep(1:m, each=n_i)
sigma_u <- 0.5
sigma_e <- 0.5

u <- rnorm(m, sd=sigma_u)
x1 <- rnorm(n)
x2 <- rnorm(m)[groups]
y <- 1 + u[groups] + 0*x1 + 1*x2 + rnorm(n, sd=sigma_e)

m1 <- gee(y ~ x1 + x2, id = groups, corstr = "exchangeable")

m1$working.correlation

resids <- y - m1$fitted.values
sum(resids^2)/(m*n_i - 3)

c_mat <- matrix(0, n_i, n_i)
for(i in 1:m){
  c_mat <- c_mat + resids[((i - 1)*n_i + 1):(i*n_i)] %*% t(resids[((i - 1)*n_i + 1):(i*n_i)])
}

sum(diag(c_mat))/(m*n_i - 3)

(sum(c_mat) - sum(diag(c_mat)))/(m*n_i*(n_i - 1))




V_i <- m1$scale*m1$working.correlation

A <- matrix(0, 3, 3)
for(i in 1:m){
  X_i <- cbind(1, x1[groups == i], x2[groups == i])
  A <- A + t(X_i) %*% solve(V_i) %*% X_i
}

solve(A)
m1$naive.variance

B <- matrix(0, 3, 3)
for(i in 1:m){
  X_i <- cbind(1, x1[groups == i], x2[groups == i])
  B <- B + t(X_i) %*% solve(V_i) %*% resids[groups == i] %*% t(resids[groups == i]) %*%
    solve(V_i) %*% X_i
}

solve(A) %*% B %*% solve(A)

m1$robust.variance


m <- 10
n_i <- 10
n <- m*n_i
groups <- rep(1:m, each=n_i)
sigma_u <- 0.5
sigma_e <- 0.5

nsim <- 500
pvals_gee <- rep(NA, nsim)
for(i in 1:nsim){
  u <- rnorm(m, sd=sigma_u)
  x1 <- rnorm(n)
  x2 <- rnorm(m)[groups]
  y <- 1 + u[groups] + 0*x1 + 1*x2 + rnorm(n, sd=sigma_e)
  
  m1 <- gee(y ~ x1 + x2, id = groups, corstr = "exchangeable")
  
  pvals_gee[i] <- 2*pnorm(abs(summary(m1)$coefficients[2,5]), lower.tail=F)
  
  print(i)
}

mean(pvals_gee < 0.05)



m <- 10
n_i <- 100
n <- m*n_i
groups <- rep(1:m, each=n_i)
sigma_u <- 0.5
sigma_e <- 0.5

nsim <- 500
pvals_gee <- rep(NA, nsim)
for(i in 1:nsim){
  u <- rnorm(m, sd=sigma_u)
  x1 <- rnorm(n)
  x2 <- rnorm(m)[groups]
  y <- 1 + u[groups] + 0*x1 + 1*x2 + rnorm(n, sd=sigma_e)
  
  m1 <- gee(y ~ x1 + x2, id = groups, corstr = "exchangeable")
  
  pvals_gee[i] <- 2*pnorm(abs(summary(m1)$coefficients[2,5]), lower.tail=F)
  
  print(i)
}

mean(pvals_gee < 0.05)







m <- 50
n_i <- 10
n <- m*n_i
groups <- rep(1:m, each=n_i)
sigma_u <- 0.5
sigma_e <- 0.5

nsim <- 500
pvals_gee <- rep(NA, nsim)
for(i in 1:nsim){
  u <- rnorm(m, sd=sigma_u)
  x1 <- rnorm(n)
  x2 <- rnorm(m)[groups]
  y <- 1 + u[groups] + 0*x1 + 1*x2 + rnorm(n, sd=sigma_e)
  
  m1 <- gee(y ~ x1 + x2, id = groups, corstr = "exchangeable")
  
  pvals_gee[i] <- 2*pnorm(abs(summary(m1)$coefficients[2,5]), lower.tail=F)
  
  print(i)
}

mean(pvals_gee < 0.05)








m <- 50
n_i <- 10
n <- m*n_i
groups <- rep(1:m, each=n_i)
a <- matrix(runif(9, 0, 1), nrow=3)
V_true <- t(a) %*% a

nsim <- 500
pvals_gee <- rep(NA, nsim)
pvals_mm <- rep(NA, nsim)


for(j in 1:nsim){
  x1 <- rnorm(n)
  x2 <- rnorm(m)[groups]
  beta <- c(1, 0, 1)
  y <- rep(NA, n)
  for(i in 1:m){
    X_i <- cbind(1, x1[groups == i], x2[groups == i])
    y[groups == i] <- X_i %*% beta + MASS::mvrnorm(1, rep(0, 3), V_true)
  }
  
  m1 <- gee(y ~ x1 + x2, id = groups, corstr = "exchangeable")
  
  pvals_gee[j] <- 2*pnorm(abs(summary(m1)$coefficients[2,5]), lower.tail=F)
  
  m2 <- lmer(y ~ x1 + x2 + (1|groups))
  
  pvals_mm[j] <- summary(m2)$coefficients[2,5]
  
  print(j)
}

mean(pvals_gee < 0.05)
mean(pvals_mm < 0.05)







