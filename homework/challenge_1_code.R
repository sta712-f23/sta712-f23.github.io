# d <- 2
# n <- 100
# 
# y <- rbinom(n, 1, 0.5)
# 
# x <- matrix(rnorm(d*n), ncol=d)*(1-y) + matrix(rnorm(d*n, mean=0.5), ncol=d)*y
# 
# cov(x)
# pooled_covariance = (cov(x[y==0,])*(sum(y == 0) - 1) + 
#                        cov(x[y==1,])*(sum(y == 1) - 1))/(n - 2)
# mu0 <- colMeans(x[y == 0,])
# mu1 <- colMeans(x[y == 1,])
# pi1 <- mean(y)
# 
# #1/(n-1) * t(sweep(x, 2, colMeans(x), "-")) %*% sweep(x, 2, colMeans(x), "-")
# 
# true_probs <- rep(NA, n)
# for(i in 1:n){
#   true_probs[i] <- 0.5*exp(-0.5 * t(x[i,] - c(0.5, 0.5)) %*% (x[i,] - c(0.5, 0.5)))/(
#     0.5*exp(-0.5 * t(x[i,] - c(0.5, 0.5)) %*% (x[i,] - c(0.5, 0.5))) + 
#       0.5*exp(-0.5 * t(x[i,]) %*% x[i,])
#   )
# }

# lda_probs <- rep(NA, n)
# for(i in 1:n){
#   lda_probs[i] <- pi1*exp(-0.5 * t(x[i,] - mu1) %*% solve(pooled_covariance) %*% (x[i,] - mu1))/(
#     pi1*exp(-0.5 * t(x[i,] - mu1) %*% solve(pooled_covariance) %*% (x[i,] - mu1)) + 
#       (1-pi1)*exp(-0.5 * t(x[i,] - mu0) %*% solve(pooled_covariance) %*% (x[i,] - mu0))
#   )
# }




d <- 2
n_train <- 10
n_test <- 10000

nrep <- 100
lda_error <- rep(NA, nrep)
log_error <- rep(NA, nrep)

for(rep in 1:nrep){
  # training data
  
  y_train <- rbinom(n_train, 1, 0.5)
  
  x_train <- matrix(rnorm(d*n_train), ncol=d)*(1-y_train) + 
    matrix(rnorm(d*n_train, mean=0.5), ncol=d)*y_train
  
  train_data <- data.frame(y = y_train,
                           x1 = x_train[,1],
                           x2 = x_train[,2])
  
  lda_model <- MASS::lda(y ~ x1 + x2, data = train_data)
  log_reg <- glm(y ~ x1 + x2, data = train_data, family = binomial)
  
  # test data
  
  y_test <- rbinom(n_test, 1, 0.5)
  
  x_test <- matrix(rnorm(d*n_test), ncol=d)*(1-y_test) + 
    matrix(rnorm(d*n_test, mean=0.5), ncol=d)*y_test
  
  test_data <- data.frame(y = y_test,
                          x1 = x_test[,1],
                          x2 = x_test[,2])
  
  lda_preds <- predict(lda_model, newdata = test_data)$posterior[,2]
  log_preds <- predict(log_reg, newdata = test_data, type="response")
  
  
  true_probs <- rep(NA, n_test)
  for(i in 1:n_test){
    true_probs[i] <- 0.5*exp(-0.5 * t(x_test[i,] - c(0.5, 0.5)) %*% (x_test[i,] - c(0.5, 0.5)))/(
      0.5*exp(-0.5 * t(x_test[i,] - c(0.5, 0.5)) %*% (x_test[i,] - c(0.5, 0.5))) + 
        0.5*exp(-0.5 * t(x_test[i,]) %*% x_test[i,])
    )
  }
  
  lda_error[rep] <- mean((lda_preds - true_probs)^2)
  log_error[rep] <- mean((log_preds - true_probs)^2)
  
  print(rep)
}

mean(lda_error)
mean(log_error)

