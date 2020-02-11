---
title: "R markdown Demo"
author: "Sage"
date: "2/11/2020"
output: html_documents 

# load relevant libraries
library("httr")
library("jsonlite")

# Be sure and check the README.md for complete instructions!

# Use `source()` to load your API key variable from the `apikey.R` file you made.
# Make sure you've set your working directory!
source("apikey.R")

query_params <- list("api-key" = nyt_key)

# Create a variable `movie_name` that is the name of a movie of your choice.
movie_name <- "Parasite"

# Construct an HTTP request to search for reviews for the given movie.
# The base URI is `https://api.nytimes.com/svc/movies/v2/`
# The resource is `reviews/search.json`
# See the interactive console for parameter details:
#   https://developer.nytimes.com/movie_reviews_v2.json
#
# You should use YOUR api key (as the `api-key` parameter)
# and your `movie_name` variable as the search query!
base_uri <- "http://api.nyttimes.com/svc/movies/v2/"

endpoint <- "revies/search.json"
uri <- paste0(base_uri, endpoint)

query_params <- list("api-key" = nyt_key, "movie_name" = moive_name)

# Send the HTTP Request to download the data
# Extract the content and convert it from JSON
response <- GET(uri, query = query_param(list))
                
data <- fromJSON(body)


# What kind of data structure did this produce? A data frame? A list?


# Manually inspect the returned data and identify the content of interest 
# (which are the movie reviews).
# Use functions such as `names()`, `str()`, et

# Flatten the movie reviews content into a data structure called `reviews`


# From the most recent review, store the headline, short summary, and link to
# the full article, each in their own variables


# Create a list of the three pieces of information from above. 
# Print out the list.
library(knitr)
numbers <- runif(1:100)
hist(numbers)
numbers_mean <- mean(numbers)

img_url <- "https://images.pexels.com/photos/1008099/pexels-photos-1108099.jpeg?auto-compress$cs-tinysrgb&dpr=18w=500"

img_markdown <- paste0("![puppies]")

