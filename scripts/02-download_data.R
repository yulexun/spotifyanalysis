#### Preamble ####
# Purpose: Downloads and saves the data from SPotify API
# Author: Lexun Yu, Colin Sihan Yang, Siddharth Gowda, Yuxuan Wei
# Date: 10 October 2024
# Contact: lx.yu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

#### Workspace setup ####
library(spotifyr)
library(usethis)

# edit_r_environ()

#### Download data ####
boogie <- get_artist_audio_features("A Boogie Wit Da Hoodie")
radiohead <- get_artist_audio_features("radiohead")
PTP = get_artist_audio_features("Pay money To my Pain")

#### Save data ####
saveRDS(boogie, "data/01-raw_data/boogie.rds")
saveRDS(radiohead, "data/01-raw_data/radiohead.rds")
saveRDS(PTP, "data/01-raw_data/PTP.rds")
