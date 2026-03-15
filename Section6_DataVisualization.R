library(ggplot2)

data(iris)

# --- 4. Single Variable Plots (Histogram) ---
ggplot(data = iris, mapping = aes(x = Sepal.Length)) +
  geom_histogram(binwidth = 0.2, fill = "blue", color = "black") +
  theme_minimal() +
  labs(title = "Distribution of Sepal Length")

# --- 3 & 5. Aesthetics & Two-Variable Plots (Scatter Plot) ---
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  labs(title = "Sepal Length vs Width")

# --- 6 & 7. Facets, Layering, and Styling ---
my_plot <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(aes(color = factor(cyl)), size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "black") + # Layering a trendline
  facet_wrap(~ gear) +                                      # Faceting by gear type
  theme_light() +
  labs(title = "MPG vs Weight faceted by Gears", x = "Weight", y = "Miles Per Gallon")

# Saving the plot
ggsave("my_faceted_plot.png", plot = my_plot, width = 8, height = 5)