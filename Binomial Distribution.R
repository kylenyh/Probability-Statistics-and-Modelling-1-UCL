
# the Binomial Distribution is used to model the number of successes in a fixed number of independent trials, where each trial has the same probability of success

# Load necessary library
library(ggplot2)

# Set parameters for the binomial distribution
n <- 100    # Number of trials
p <- 0.5   # Probability of success (getting heads)

# Generate a sample of 1000 binomial outcomes
set.seed(123)  # For reproducibility
binom_sample <- rbinom(10000, size = n, prob = p)

# Print the first few samples
head(binom_sample)

# Plot the binomial distribution
ggplot(data.frame(binom_sample), aes(x = binom_sample)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Binomial Distribution (n = 10, p = 0.5)",
       x = "Number of Heads",
       y = "Frequency") +
  theme_minimal()
