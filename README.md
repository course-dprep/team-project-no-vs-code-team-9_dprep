---
output:
  pdf_document: default
  html_document: default
---
# Evaluating the Impact of Episode Count on TV Show Ratings

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
The research question is crucial because understanding the factors that drive ratings of TV shows can inform content creators, streaming platforms, and marketers. It can help in improving content strategies, optimizing recommendations, and enhancing user experience. Specifically, it can provide insights into whether viewers prefer to binge-watch shorter series or if they are more invested in longer series, and thus suggesting the ideal number of episodes. 

### 1.2 Relevance 
This research question is relevant because it allows filmmakers and marketers to understand the key factors influencing TV shows ratings, leading to a better benchmarking and decision-making in their marketing strategies. With this information, filmmakers can make better decisions in the number of episodes they are producing. Furthermore, IMDb can improve its recommendation system, offering more personalized movie recommendations, making it easier for users to find movies they will enjoy.

### 1.3 Research Question
Does the number of episodes significantly influence the ratings of TV shows?

## 2. Method

### 2.1 Research Method


### 2.2 Variables
| Variable.      | Description                                           | Data Type   |
|----------------|-------------------------------------------------------|-------------|
| tconst         | Unique identifier for the title                       | numeric     |
| titleType      | Type of the title (e.g., movie, short, TV episode)    | character   |
| primaryTitle   | Primary title of the work                             | character   |
| originalTitle  | Original title of the work                            | character   |
| isAdult        | Adult content flag (0: non-adult, 1: adult)           | numeric     |
