library(readr)
library(dplyr)
library(ggplot2)
library(knitr)
library(stringr)
library(car)
library(data.table)
library(readxl)

urls = c('https://datasets.imdbws.com/title.episode.tsv.gz', 'https://datasets.imdbws.com/title.ratings.tsv.gz','https://datasets.imdbws.com/title.basics.tsv.gz')

datasets <- lapply(urls, read_delim, delim='\t', na = '\\N')
episode <- datasets[[1]]
ratings = datasets[[2]]
titles <- datasets[[3]]