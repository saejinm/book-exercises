# Exercise 1: reading and querying a web API

#This means that the data from the table has now become a list with the $ sign
#Answer should come out as true since it's a list, becomes a data frame now 

# Load the httr and jsonlite libraries for accessing data
# You can also load `dplyr` if you wish to use it
install.packages("httr")
library("httr")

# Create a variable base_uri that stores the base URI (as a string) for the 
# Github API (https://api.github.com)
url <- "https://api.github.com/users/saejinm/repos"
response <- GET(url)

# Under the "Repositories" category of the API documentation, find the endpoint 
# that will list _repos in an organization_. Then create a variable named
# `org_resource` that stores the endpoint for the `programming-for-data-science`
# organization repos (this is the _path_ to the resource of interest).


# Send a GET request to this endpoint (the `base_uri` followed by the 
# `org_resource` path). Print the response to show that your request worked. 
# (The listed URI will also allow you to inspect the JSON in the browser easily).


# Extract the content of the response using the `content()` function, saving it
# in a variable.
response <- GET(uri)
print(responses)
body <- content(response, "text")
print(body)

# Convert the content variable from a JSON string into a data frame.
data(fromJSON(body))
print(data)
data[[+1]]

# How many (public) repositories does the organization have?


# Now a second query:
# Create a variable `search_endpoint` that stores the endpoint used to search 
# for repositories. (Hint: look for a "Search" endpoint in the documentation).


# Search queries require a query parameter (for what to search for). Create a 
# `query_params` list variable that specifies an appropriate key and value for 
# the search term (you can search for anything you want!)


# Send a GET request to the `search_endpoint`--including your params list as the
# `query`. Print the response to show that your request worked.


# Extract the content of the response and convert it from a JSON string into a
# data frame. 
content <- data$content
is.data.frame(content)

# How many search repos did your search find? (Hint: check the list names to 
# find an appropriate value).


# What are the full names of the top 5 repos in the search results?
top_5 <- data %>% 
  filter(category == "full names") %>% 
  group_by(category) %>% 
  top_n(5) 
print(top_5)


