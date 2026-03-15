library(dplyr)
library(tidyr)
library(stringr)

# Using the built-in 'mtcars' dataset
data(mtcars)

# --- 3. The Pipe Operator (%>%) and 4-8. dplyr Verbs ---
# Combining Filter, Select, Mutate, Arrange, and Summarize
processed_data <- mtcars %>%
  filter(cyl == 4 | cyl == 6) %>%               # 4. Filter: Keep only 4 or 6 cylinders
  select(mpg, cyl, hp, gear) %>%                # 5. Select: Keep specific columns
  mutate(hp_per_cyl = hp / cyl) %>%             # 6. Mutate: Create new column
  arrange(desc(mpg))                            # 7. Arrange: Sort by highest MPG

summary_data <- processed_data %>%
  group_by(cyl) %>%
  summarize(avg_mpg = mean(mpg), count = n())   # 8. Summarize: Aggregate data

print(summary_data)

# --- 9. Data Pivoting (tidyr) ---
# Converting wide data to long format
wide_data <- data.frame(ID = 1:2, Year2020 = c(50, 60), Year2021 = c(55, 65))
long_data <- wide_data %>%
  pivot_longer(cols = starts_with("Year"), names_to = "Year", values_to = "Revenue")

# --- 10. String Manipulation (stringr) ---
text_vector <- c("Apple", "Banana", "Apricot")
str_detect(text_vector, "^A") # Returns TRUE FALSE TRUE (Starts with A)