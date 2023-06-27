########################### START ###########################
try(dev.off(), silent = TRUE) # Clear all plots.
rm(list=ls())                 # Clear the Global Environment.
closeAllConnections()         # Clear any existing functions.
cat("\014")                   # Clear the Console.
#-----------------------------------------------------------#

# Set Work Directory
setwd("/Users/dforsberg1/Desktop/R_series")
getwd()

#### Create data.frame ####

person <- c("Mike", "Mike", "Bob", "Bob", "Linda", "Linda")
country <- c("France", "UK", "France", "UK", "France", "UK")
spending <- c(1213, 1872, 1726, 2234, 1591, 1907)

data01 <- data.frame(person, country, spending)
print(data01)

#### Install "reshape" Package ####

# install.packages("reshape")
library(reshape)

# cast() converts a long format into a wide format
q1 <- cast(data01, person ~ country, value = "spending")
print(q1)

q2 <- cast(data01, country ~ person, value = "spending")
print(q2)

# melt() converts a wide format into a long format

q3 <- melt(q2, id.vars = c("person", "country"))
rownames(q3) <- 1:nrow(q3)
print(q3)

# Reorder the columns if needed

q3 <- q3[ , c(1, 3, 2)]
print(q3)

# Rename "value" column
colnames(q3)[colnames(q3)=="value"] <- "spending"
print(q3)

#### More Complex Example ####

person <- c("Mike", "Mike", "Bob", "Bob", "Mike", "Mike", "Bob", "Bob")
country <- c("France", "UK", "France", "UK", "France", "UK", "France", "UK")
year <- c("2018", "2018", "2018", "2018", "2019", "2019", "2019", "2019")
spending <- c(3217, 2870, 6729, 3038, 1213, 1856, 1727, 2244)

data02 <- data.frame(person, country, year, spending)
print(data02)

cast(data02, person ~ country, value = "spending", mean)

cast(data02, person ~ country, value = "spending", max)

cast(data02, person ~ country, value = "spending", min)

#### Melting "iris" data.frame ####

data(iris)
help(iris)

# install.packages("ggplot2")
library("ggplot2")

# install.packages("reshape2")
library("reshape2")

# If the codes below aren't working you can run "dev.off()"

# dev.cur()
# dev.off()

# Melt your data

iris$Species <- as.character(iris$Species)
df_melt      <- melt(iris, c("Petal.Width", "Species"))
head(df_melt)

# Define colors

df_melt$color <- "blue"
df_melt$color[df_melt$Species == "setosa"] <- "green"
df_melt$color[df_melt$Species == "versicolor"] <- "orange"

# scatterplot per group

ggplot(df_melt, aes(Petal.Width,value)) +
  geom_point(col=df_melt$color) +
  facet_grid(.~variable) 

#### Saving & Quitting ####

# quit("yes")
