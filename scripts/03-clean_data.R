#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
PTP <- readRDS("data/01-raw_data/PTP.rds")
radiohead <- readRDS("data/01-raw_data/radiohead.rds")
boogie <- readRDS("data/01-raw_data/boogie.rds")

durationofsong <- 
  

#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")
