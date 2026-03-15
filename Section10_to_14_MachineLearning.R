# --- Section 10: Data Preprocessing ---
data(mtcars)

# Set seed for reproducibility
set.seed(123)

# Train/Test Split (70% Train, 30% Test)
sample_index <- sample(seq_len(nrow(mtcars)), size = 0.7 * nrow(mtcars))
train_data <- mtcars[sample_index, ]
test_data <- mtcars[-sample_index, ]

# Scaling features (Normalization)
train_scaled <- scale(train_data[, c("wt", "hp")])

# --- Section 11 & 13: Linear Regression ---
# Predicting MPG based on Weight and Horsepower
linear_model <- lm(mpg ~ wt + hp, data = train_data)

# View model statistics
summary(linear_model)

# Make Predictions on the test set
predictions <- predict(linear_model, newdata = test_data)

# Calculate Error (Root Mean Squared Error)
rmse <- sqrt(mean((test_data$mpg - predictions)^2))
print(paste("Linear Regression RMSE:", round(rmse, 2)))

# --- Section 14: Logistic Regression ---
# Creating a binary classification problem: Is the car automatic (0) or manual (1)?
# Predicting transmission type (am) based on MPG and Weight
logistic_model <- glm(am ~ mpg + wt, data = train_data, family = "binomial")

summary(logistic_model)

# Make probability predictions on the test set
prob_preds <- predict(logistic_model, newdata = test_data, type = "response")

# Convert probabilities to binary classes (Threshold = 0.5)
class_preds <- ifelse(prob_preds > 0.5, 1, 0)

# Create a Confusion Matrix to check accuracy
table(Predicted = class_preds, Actual = test_data$am)