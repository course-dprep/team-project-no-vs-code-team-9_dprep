# Evaluating the Impact of Episode Count on TV Show Ratings
This project investigates whether there is a correlation between the number of episodes in a TV show and its IMDb rating, providing insights into how show length might influence audience perception.

### Contributors
| Author                                      |
|---------------------------------------------|
| **Kanaya Hendra**                           |
| **Owen van Lith**                           | 
| **Lam Nguyen**                              |
| **Pepijn Kars**                             |
| **Jason Ye**                                |


## 1. Introduction
### 1.1 Research Motivation
With this research, we aim to explore the factors influencing TV show ratings to provide valuable insights for content creators, streaming platforms, and marketers. Understanding these factors can enhance content strategies, optimize recommendations, and improve user experience. Specifically, this research seeks to determine whether viewers prefer binge-watching shorter series or are more engaged with longer ones, suggesting an ideal number of episodes for a TV show.

### 1.2 Relevance 
This research is relevant because it allows filmmakers and marketers to understand the key factors influencing TV shows ratings, leading to a better benchmarking and decision-making in their marketing strategies. With this information, filmmakers can make better decisions in the number of episodes they are producing. Furthermore, IMDb can improve its recommendation system, offering more personalized movie recommendations, making it easier for users to find movies they will enjoy.

### 1.3 Research Question
Does the number of episodes significantly influence the ratings of TV shows?

## 2. Method

### 2.1 Data Source 
To begin, we review all available datasets from IMDb's Non-Commercial Datasets to identify those that contain the necessary information for our research. Specifically, we focus on datasets that include TV show titles, identifiers, the number of episodes, and ratings.

### 2.2 Variables
Subsequently, we choose to work with the following variables:

| Variable.      | Description                                           | Data Type   |
|----------------|-------------------------------------------------------|-------------|
| tconst         | Unique identifier for the title                       | numeric     |
| parentTconst   | Identifier of the parent title                        | character   |
| seasonNumber   | Season number of the episode                          | character   |
| episodeNumber  | Episode number in the seasons                         | numeric     |
| averageRating  | Average rating of the title                           | numeric     |
| numVotes       | Number of votes received for the title                | numeric     |

### 2.3 Research Method
To explore these relationships, regression analysis will be used as the primary research method. This approach is ideal for quantifying the relationship between a dependent variable (TV show ratings) and an independent variable (number of episodes). By applying this method, we can measure how changes in the number of episodes impact ratings and determine the strength of this effect. Regression is especially well-suited for this research question because it reveals both the strength and direction of the relationship between the number of episodes and TV show ratings. It also strengthens the analysis by considering other variables, ensuring that the link between episode count and ratings isn’t influenced by unrelated factors.

## Result


