#### Preamble ####
# Purpose: Clean the data from Spotify API
# Author: Lexun Yu, Colin Sihan Yang, Siddharth Gowda, Yuxuan Wei
# Date: 10 October 2024
# Contact: lx.yu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

#### Workspace setup ####
library(tidyverse)
library(spotifyr)
library(usethis)


# Get audio features for an artist's entire discography
raw_boogie_data <- readRDS("data/01-raw_data/boogie.rds")

### Cleaning Data ####
clean_boogie_data <- raw_boogie_data %>% 
  select(energy, key_name, mode_name, album_release_year, track_name, album_name)

# removing all werid or duplicate releases like instrumentals only
# accepela, or deluxe releases
# no "(" ")" "-" in the albummn name
clean_boogie_data <- clean_boogie_data %>% 
  filter(!str_detect(album_name, "\\(|\\)|-")) %>% 
  select(-album_name)

#### Save data ####
write_csv(raw_boogie_data, "./data/01-raw_data/raw_boogie_data.csv")

write_csv(clean_boogie_data, "./data/02-cleaned-data/clean_boogie_data.csv")
