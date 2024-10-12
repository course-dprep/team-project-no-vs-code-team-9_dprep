library(readr)
library(dplyr)
library(ggplot2)
library(car)

# Importing Data Set
cleaned_data <- read_csv("../../output/IMDb_dt.csv")

# Filtering Data
cleaned_data <- cleaned_data %>%
  rename(average_rating = 'The average rating') %>%
  rename(Number_of_episodes = 'Number of episodes') %>%
  filter(!is.na(Number_of_episodes), !is.na(average_rating))

#Summary of descriptive statistics on average ratings
Descriptive_stats <- cleaned_data %>% 
  summarize(
  mean_average_rating = mean(average_rating, na.rm = TRUE),
  median_rating = median(average_rating, na.rm = TRUE),
  min_rating = min(average_rating, na.rm = TRUE),
  max_rating = max(average_rating, na.rm = TRUE),
  num_episodes = n()
)

print(Descriptive_stats)


# Regressing Rating on Number of Episodes Without Control Variables
basic_model <- lm(average_rating ~ Number_of_episodes, data = cleaned_data)
summary_bm <- summary(basic_model)

# Extract Additional Key Statistics
coefficient_summary_bm <- summary_bm$coefficients["Number_of_episodes", "Estimate"]
t_value_bm <- summary_bm$coefficients["Number_of_episodes", "t value"]
p_value_bm <- summary_bm$coefficients["Number_of_episodes", "Pr(>|t|)"]
r_squared_bm <- summary_bm$r.squared
adj_r_squared_bm <- summary_bm$adj.r.squared
f_statistic_bm <- summary_bm$fstatistic[1]
f_statistic_pval <- pf(summary_bm$fstatistic[1], summary_bm$fstatistic[2], summary_bm$fstatistic[3], lower.tail = FALSE)

# Plot Rating on Number of Episodes Without Control Variables
ggplot(cleaned_data, aes(x = Number_of_episodes, y = average_rating)) +
  geom_point() + geom_smooth(method = "lm") + labs(
    title = "Regression of Average Ratings over The number of episodes",
    x = "Number of episodes",
    y = "Average Rating"
  )


# Regressing Rating on Number of Episodes With Control Variables
main_model <- lm(average_rating ~ Number_of_episodes + popularity + runtime + new_vs_old + episode_quantity , data = cleaned_data)
summary_mm <- summary(main_model)

# Extract key statistics
coefficient_summary_mm <- summary_mm$coefficients["Number_of_episodes", "Estimate"]
t_value_mm <- summary_mm$coefficients["Number_of_episodes", "t value"]
p_value_mm <- summary_mm$coefficients["Number_of_episodes", "Pr(>|t|)"]
r_squared_mm <- summary_mm$r.squared
adj_r_squared_mm <- summary_mm$adj.r.squared
f_statistic_mm <- summary_mm$fstatistic[1]
f_statistic_pval_mm <- pf(summary_mm$fstatistic[1], summary_mm$fstatistic[2], summary_mm$fstatistic[3], lower.tail = FALSE)


#Correlation matrix of the predictive variables in our main model 
cor(model.matrix(main_model)[, -1])

#The correlations between our predictive variables are low and show no sign of correlation

#Multicollinearity
vif_values <- vif(main_model)
print(vif_values)

#As all variables show degree of multicollinearity close to 1 which means there is hardly any correlation between predictor and other variables

