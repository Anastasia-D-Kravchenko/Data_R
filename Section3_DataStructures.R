# --- 8. Vectors: Misc ---
# Creating vectors and basic sequences
numeric_vec <- c(1, 2, 3, 4, 5)
seq_vec <- seq(from = 1, to = 10, by = 2)

# --- 9. Matrices ---
# Creating a 3x3 matrix
my_matrix <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
print(my_matrix)

# --- 10. Lists ---
# Lists can hold different types of objects
my_list <- list(
  name = "John Doe",
  ages = numeric_vec,
  data_matrix = my_matrix
)
print(my_list$name)

# --- 11 & 12. Data Frames ---
# Creating a basic data frame
df <- data.frame(
  ID = 1:4,
  Name = c("Alice", "Bob", "Charlie", "David"),
  Score = c(85, 92, 78, 95)
)

# --- 13. Data Frames: Helper Functions ---
str(df)       # View structure
summary(df)   # View statistical summary
head(df, 2)   # View first 2 rows

# --- 14. Tibbles ---
library(tibble)
my_tibble <- as_tibble(df) # Modern version of data frames used in the Tidyverse