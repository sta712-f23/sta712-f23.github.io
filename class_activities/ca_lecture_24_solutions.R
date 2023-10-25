
# reg_formula: the formula specifying the response and explanatory variables
#             Currently, does not allow for transformations or interactions
# df: the data
# eps: threshold for convergence (default 0.001)
# iter: maximum number of iterations of the algorithm (default 100)
my_zip <- function(reg_formula, df, eps = 0.001, iter = 100){
  initial_poisson <- glm(reg_formula,
                         family = poisson, 
                         data = df)
  
  beta <- initial_poisson$coefficients
  X <- model.matrix(initial_poisson)
  y <- initial_poisson$y
  
  # initialize logistic
  phat <- mean(y == 0)
  gamma <- c(log(phat/(1- phat)), 0, 0, 0)
  
  # initialize zs
  ps <- exp(X %*% gamma)/(1 + exp(X %*% gamma))
  
  lambdas <- exp(X %*% beta)
  
  zs <- ifelse(y > 0, 0, 
               ps/(ps + exp(-lambdas)*(1 - ps)))
  
  # calculate current log-likelihood
  logL <- sum(zs*log(ps/(1-ps)) + log(1 - ps)) + 
    sum((1 - zs)*(y*log(lambdas) - lambdas))
  
  diff <- 1
  count <- 0
  
  while(diff > eps & count < iter){
    
    # M-step
    beta <- glm.fit(X, y,
                weights = 1 - zs,
                family = poisson())$coefficients
    
    y_star <- c(y == 0, rep(0, length(y)))
    X_star <- rbind(X, X)
    
    gamma <- suppressWarnings(glm.fit(x = X_star, y = as.integer(y_star),
                                      weights = c(zs, 1-zs),
                                      family = binomial())$coefficients)
    
    # E-step
    ps <- exp(X %*% gamma)/(1 + exp(X %*% gamma))
    
    lambdas <- exp(X %*% beta)
    
    zs <- ifelse(y > 0, 0, 
                 ps/(ps + exp(-lambdas)*(1 - ps)))
    
    # calculate current log-likelihood
    new_logL <- sum(zs*log(ps/(1-ps)) + log(1 - ps)) + 
      sum((1 - zs)*(y*log(lambdas) - lambdas))
    
    diff <- abs(logL - new_logL)
    count <- count + 1
    logL <- new_logL
  }
  
  return(list(beta, gamma))
}

# test it out

wdrinks <- read.csv("https://sta712-f23.github.io/class_activities/wdrinks.csv")

my_zip(drinks ~ sex + OffCampus + FirstYear, wdrinks)

# compare to zeroinfl function
library(pscl)

zeroinfl(drinks ~ sex + OffCampus + FirstYear, data = wdrinks)$coefficients
