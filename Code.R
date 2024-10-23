# Question 3

#Load Data: ants.RData
load("ants.RData")

# Perform optimization to estimate beta_0, beta_1, and phi
optim_result <- optim(initial_params, neg_log_likelihood, method = "BFGS")

# Extract the estimated parameters
estimated_params <- optim_result$par  # Estimated values of beta_0, beta_1, and phi

# Assign the estimates to beta_0_hat and phi_hat
beta_0_hat <- estimated_params[1]
beta_1_hat <- estimated_params[2]  # This is the MLE of beta_1 you're solving for
phi_hat <- estimated_params[3]


install.packages('tinytex')
tinytex::install_tinytex()