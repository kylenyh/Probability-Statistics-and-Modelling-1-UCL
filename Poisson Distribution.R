# a Poisson Distribution is a probability distribution that describes the likelihood of a given number of events occurring within a fixed interval of time or space, assuming that these events happen independently of each other and at a constant average rate

# Set the parameter for the Poisson distribution
lambda <- 5  # The average rate (mean) of occurrences

# Generate a sample of 1000 observations from the Poisson distribution
poisson_sample <- rpois(1000, lambda)

# Display the first few observations
head(poisson_sample)

# Summary statistics
summary(poisson_sample)

# Plot the Poisson distribution
hist(poisson_sample, breaks = 0:max(poisson_sample), col = "lightgreen", border = "black",
     main = "Histogram of Poisson Distribution (lambda = 5)",
     xlab = "Number of Occurrences",
     ylab = "Frequency")
