#### Preamble ####
# Purpose: Cleans the raw plane data recorded by each physical, educational and gender attractiveness with the emplyoments and their success of their careers.
# Author: Sky Suh
# Date: 28 March 2024
# Contact: sky.suh@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

#### Workspace setup ####
library(tidyverse)
library(arrow)

#### Clean data ####
raw_data <- read_csv(here::here("data/raw_data/USA_data.csv"))

cleaned_data <- raw_data %>%
  select(higherstatusjob, lowerstatusjob, male, female, highlyattractive, lessattractive, higheruni, middleuni, loweruni, elite_highattractive, elite_lessattractive, noneliteselective_highattractive, nonelitelower_highattractive, noneliteselective_lowattractive, nonelitelower_lowattractive)
 

#### Save data ####
write_parquet(cleaned_data, here::here("data/analysis_data/analysis_data.parquet"))
