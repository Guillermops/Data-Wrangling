library(twitteR)
library(dplyr)
library(readr)
consumer_key <- "mNrfIQVqcGLO3tIGWLOVwRxry"
consumer_secret <- "txT41YpQ0Wjy4e3970MkXahNjjpBbxtolJFU4Z7yAg8AhvAnOR"
access_token <- "1283113092-DvAWAEKwEIDZhR2mtKvWTTAD1ZiJbB9PTmvhLzL"
access_secret <- "bS7DD9gmIQxqXBkBulvFVHcVe9fRoLNJLH3Amml0as8DH"
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

tw <- twitteR::searchTwitter('#Halloween', n = 1e4, since = '2019-10-21', retryOnRateLimit = 1e3)

df <- twitteR::twListToDF(tw)
df %>% head() %>% View()


write_csv(df,"tweets.csv")
