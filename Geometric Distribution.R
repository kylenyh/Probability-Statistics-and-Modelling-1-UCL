# A Geometric Distribution is a discrete probability distribution that models the number of trials required for the first success in a series of independent Bernoulli trials (where each trial has two possible outcomes: success or failure).

# Load necessary library
library(ggplot2)

# Set the seed for reproducibility
set.seed(123)

# Parameters for the geometric distribution
prob_success <- 0.2  # Probability of success
n <- 1000            # Number of samples

# Generate a sample from a geometric distribution
sample_data <- rgeom(n, prob = prob_success)

# Create a data frame for ggplot
data_frame <- data.frame(sample_data)

# Visualization: Bar plot of the geometric distribution
ggplot(data_frame, aes(x = sample_data)) +
  geom_bar(fill = "lightblue", color = "black", alpha = 0.7) +
  labs(title = "Bar Plot of Sample Geometric Distribution",
       x = "Number of Failures Before First Success",
       y = "Frequency") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))

# Print summary statistics
cat("Summary Statistics:\n")
print(summary(sample_data))
