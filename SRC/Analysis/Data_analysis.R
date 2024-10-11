library(readr)
library(ggplot2)

cleaned_data <- read_csv("../../output/IMDb_dt.csv")

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


#Main model without control variables
main_model <- lm(average_rating ~ Number_of_episodes, data = cleaned_data)
summary(main_model)

#Plot of the main model without control variables
ggplot(cleaned_data, aes(x = Number_of_episodes, y = average_rating)) +
  geom_point() + geom_smooth(method = "lm")



main1_model <- lm(average_rating ~ Number_of_episodes + popularity + runtime + new_vs_old + episode_quantity , data = cleaned_data)
summary(main1_model)
