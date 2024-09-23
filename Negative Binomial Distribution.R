# the Negative Binomial Distribution is a discrete probability distribution that models the number of failures before a specified number of successes occurs in a sequence of independent and identically distributed Bernoulli trials

# Set seed for reproducibility
set.seed(123)

# Parameters for the negative binomial distribution
size <- 10  # Number of successes
prob <- 0.5  # Probability of success on each trial

# Generate a sample of 1000 observations
negative_binomial_sample <- rnbinom(1000, size = size, prob = prob)

# Display the first few observations
head(negative_binomial_sample)

# Visualize the distribution
library(ggplot2)

ggplot(data.frame(negative_binomial_sample), aes(x = negative_binomial_sample)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black", alpha = 0.7) +
  labs(title = "Negative Binomial Distribution", 
       x = "Number of Failures Before 10 Successes", 
       y = "Frequency") +
  theme_minimal()
