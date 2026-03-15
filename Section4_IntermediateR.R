# --- 2 & 3. Relational and Logical Operators ---
x <- 10
y <- 5
is_greater <- (x > y) & (x != 0) # TRUE

# --- 4. Conditional Statements ---
if (x > 15) {
  print("Large")
} else if (x > 5) {
  print("Medium")
} else {
  print("Small")
}

# --- 5. Loops ---
for (i in 1:3) {
  print(paste("Iteration count:", i))
}

# --- 6. Functions ---
calculate_area <- function(radius) {
  area <- pi * (radius^2)
  return(area)
}
calculate_area(5)

# --- 8. Factors (Categorical Data) ---
sizes <- c("Small", "Large", "Medium", "Small")
factor_sizes <- factor(sizes, levels = c("Small", "Medium", "Large"), ordered = TRUE)

# --- 9. Dates & Times ---
library(lubridate)
my_date <- ymd("2023-10-25")
next_month <- my_date + months(1)

# --- 10. Functional Programming (apply family) ---
# Apply a function over a list or vector without writing a loop
numbers <- list(a = 1:5, b = 6:10)
lapply(numbers, mean)