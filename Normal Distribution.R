# A Normal Distribution is a continuous probability distribution that is symmetric and bell-shaped, used to model variables like height, weight, or test scores.

# Load necessary library
library(ggplot2)

# Set the seed for reproducibility
set.seed(123)

# Parameters for the normal distribution
mean <- 50   # Mean of the distribution
sd <- 10     # Standard deviation
n <- 1000    # Number of samples

# Generate a sample from a normal distribution
sample_data <- rnorm(n, mean = mean, sd = sd)

# Create a data frame for ggplot
data_frame <- data.frame(sample_data)

# Visualization: Histogram with density curve
ggplot(data_frame, aes(x = sample_data)) +
  geom_histogram(aes(y = ..density..), bins = 30, fill = "lightblue", color = "black", alpha = 0.7) +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Sample Normal Distribution",
       x = "Sample Value",
       y = "Density") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))

# Print summary statistics
cat("Summary Statistics:\n")
print(summary(sample_data))
cat("\nMean:", mean(sample_data), "\n")
cat("Standard Deviation:", sd(sample_data), "\n")
