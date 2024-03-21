# Load required library
library(limma)

# Generate random data with batch effects
set.seed(123)  # For reproducibility
y <- matrix(rnorm(10*9), 10, 9)
y[,1:3] <- y[,1:3] + 5
batch <- c("A", "A", "A", "B", "B", "B", "C", "C", "C")

# Remove batch effects
y2 <- removeBatchEffect(y, batch)

# Plot original and batch-corrected data
par(mfrow=c(1,2))
boxplot(as.data.frame(y), main="Original")
boxplot(as.data.frame(y2), main="Batch corrected")

