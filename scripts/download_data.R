#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(spotifyr)
library(usethis)
# [...UPDATE THIS...]

#### Download data ####
# [...ADD CODE HERE TO DOWNLOAD...]
# Get audio features for an artist's entire discography
raw_boogie_data <- get_artist_audio_features("A Boogie With Da Hoodie")

### Cleaning Data ####
clean_data <- raw_boogie_data %>% 
  select(energy, key_name, mode_name, album_release_year, track_name, album_name)

# removing all werid or duplicate releases like instrumentals only
# accepela, or deluxe releases
# no "(" ")" "-" in the albummn name
clean_data <- clean_data %>% 
  filter(!str_detect(album_name, "\\(|\\)|-")) %>% 
  select(-album_name)

#### Save data ####
write_csv(raw_boogie_data, "./data/raw_data.csv")
write_csv(clean_data, "./data/clean_data.csv")


