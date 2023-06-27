########################### START ###########################
try(dev.off(), silent = TRUE) # Clear all plots.
rm(list=ls())                 # Clear the Global Environment.
closeAllConnections()         # Clear any existing functions.
cat("\014")                   # Clear the Console.
#-----------------------------------------------------------#

# Set Work Directory
setwd("/Users/dforsberg1/Desktop/R_series")
getwd()

# Read file
apple <- read.csv("/Users/dforsberg1/Desktop/R_series/apple.csv", sep = ",", header = T)
str(apple)

# Build corpus

# install.packages("tm")
library(tm)

# On Mac use the following command:
corpus <- iconv(apple$text, to = "utf-8-mac")

# On Windows, use the following command:
# corpus <- iconv(apple$text, to = "UTF-8", sub = "byte")

corpus <- Corpus(VectorSource(corpus))
inspect(corpus[1:5])

# Clean text
corpus <- tm_map(corpus, tolower)
inspect(corpus[1:5])

corpus <- tm_map(corpus, removePunctuation)
inspect(corpus[1:5])

corpus <- tm_map(corpus, removeNumbers)
inspect(corpus[1:5])

cleanset <- tm_map(corpus, removeWords, stopwords('english'))
inspect(cleanset[1:5])

removeURL <- function(x) gsub('http[[:alnum:]]*', '', x)
cleanset <- tm_map(cleanset, content_transformer(removeURL))
inspect(cleanset[1:5])

cleanset <- tm_map(cleanset, removeWords, c('aapl', 'apple'))
cleanset <- tm_map(cleanset, gsub, 
                   pattern = 'stocks', 
                   replacement = 'stock')

cleanset <- tm_map(cleanset, stripWhitespace)
inspect(cleanset[1:5])

# Term document matrix
tdm <- TermDocumentMatrix(cleanset)
tdm
tdm <- as.matrix(tdm)
tdm[1:10, 1:20]

# Bar plot
w <- rowSums(tdm)
w <- subset(w, w>=25)
w <- w[c(1:17, 20:58)]
print(w)

new.names <- c("eps", "est", "almost", "delay", "fang", "get",
               "iphone", "means", "might", "pos", "stock", "sylvacap",
               "things", "ugly", "cnbcnow", "earnings", "revs", "breaking",
               "expected", "amp", "reports", "sales", "tonight", "cnbc",
               "big", "move", "call", "like", "market", "qqq",
               "ready", "stocktwits", "amzn", "waiting", "calls", "rather",
               "heres", "today", "dont", "just", "live", "will",
               "report", "billion", "now", "yahoofinance", "month", "year",
               "time", "anything", "close", "earth", "expect", "head", 
               "moving", "puts")

names(w) <- new.names
print(w)

op <- par(mar = c(8,4,4,2) + 0.1)

barplot(w,
        ylim = c(0,400),
        las = 2,
        col = rainbow(50))
axis(2, at = seq(0, 400, by = 25), las=2)

par(op)

# Word cloud

# install.packages("wordcloud")
library(wordcloud)
w <- sort(w, decreasing = TRUE)
set.seed(222)
wordcloud(words = names(w),
          freq = w,
          max.words = 150,
          random.order = F,
          min.freq = 5,
          colors = brewer.pal(8, 'Dark2'),
          scale = c(5, 0.3),
          rot.per = 0.7)

# install.packages("wordcloud2")
library(wordcloud2)
w <- data.frame(names(w), w)
colnames(w) <- c('word', 'freq')
wordcloud2(w,
           size = 0.7,
           shape = 'triangle',
           rotateRatio = 0.5,
           minSize = 1)

# Sentiment analysis

# install.packages("syuzhet")
library(syuzhet)
# install.packages("lubridate")
library(lubridate)
# install.packages("ggplot2")
library(ggplot2)
# install.packages("scales")
library(scales)
# install.packages("reshape2")
library(reshape2)
# install.packages("dplyr")
library(dplyr)

# Read file
apple <- read.csv("/Users/dforsberg1/Desktop/R_series/apple.csv", sep = ",", header = T)
tweets <- iconv(apple$text, to = 'utf-8-mac')

# Obtain sentiment scores
s <- get_nrc_sentiment(tweets)
head(s)
tweets[4]
get_nrc_sentiment('delay')

# Bar plot

op <- par(mar = c(6,5,5,1) + 0.1)

barplot(colSums(s),
        ylim = c(0,550),
        las = 2,
        col = rainbow(10),
        ylab = 'Count',
        main = 'Sentiment Scores for Apple Tweets')
axis(2, at = seq(0, 550, by = 50), las=2)

par(op)

#### Sentiment Analysis After An Event ####

# Read file
apple2 <- read.csv("/Users/dforsberg1/Desktop/R_series/apple2.csv", sep = ",", header = T)

# On Mac use the following command:
tweets2 <- iconv(apple2$text, to = "utf-8-mac")

# On Windows, use the following command:
# tweets2 <- iconv(apple2$text, to = "UTF-8", sub = "byte")

# Obtain sentiment scores
s2 <- get_nrc_sentiment(tweets2)
head(s)
tweets2[4]
get_nrc_sentiment('delay')

# Bar plot

op <- par(mar = c(6,5,5,1) + 0.1)

sentiments <- as.data.frame(t(colSums(s2)))
row.names(sentiments) <- "count"
total <- sum(colSums(s2))
sentiments <- sentiments / total
print(sentiments)



barplot(colSums(s2),
        ylim = c(0,350),
        las = 2,
        col = rainbow(10),
        ylab = 'Count',
        main = 'Sentiment Scores for Apple Tweets')
axis(2, at = seq(0, 350, by = 50), las=2)

par(op)

# Save & Quit

# q("yes")
