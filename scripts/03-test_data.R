#### Preamble ####
# Purpose: Tests the real analysis data based on our expectation from
# Author: Sky Suh
# Date: 28 March 2024
# Contact: sky.suh@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
  # 00-simulate_data.R
  # 01-download_data.R
  # 02-data_cleaning.R


#### Workspace setup ####
library(tidyverse)
library(arrow)
library(dplyr)

#### Test cleaned data ####
# test 1
## check if there are  2020 rows in the cleaned_data data set 
if (nrow(cleaned_data) == 452) {
  print("The number of TOTAL participants in cleaned_data is 2020.")
} else {
  print("The number of TOTAL participants in cleaned_data is not 2020.")
}

# Male
if (nrow(data_male) == 1010) {
  print("The number of male participants in cleaned_data is 1010.")
} else {
  print("The number of male participants in cleaned_data is not 1010.")
}

# Female
if (nrow(data_female) == 1010) {
  print("The number of female participants in cleaned_data is 1010.")
} else {
  print("The number of female participants in cleaned_data is not 1010.")
}


# test 2
## check that employment status and attractive scores are either 0 or 1
cleaned_data$higherstatusjob |> min() == 0
cleaned_data$higherstatusjob |> max() == 1

cleaned_data$lowerstatusjob |> min() == 0
cleaned_data$lowerstatusjob |> max() == 1

cleaned_data$highlyattractive |> min() == 0
cleaned_data$highlyattractive |> max() == 1

cleaned_data$lessattractive |> min() == 0
cleaned_data$lessattractive |> max() == 1

# test 3
## check if there are  2020 rows in the cleaned_data data set 
if (nrow(cleaned_data) == 2020) {
  print("The number of TOTAL participants in cleaned_data is 2020.")
} else {
  print("The number of TOTAL participants in cleaned_data is not 2020.")
}

# higherstatusjob
if (nrow(data_higherstatusjob) == 1011) {
  print("The number of higherstatusjob participants in cleaned_data is 1011.")
} else {
  print("The number of higherstatusjob participants in cleaned_data is not 1011.")
}

# lowerstatusjob
if (nrow(data_lowerstatusjob) == 1009) {
  print("The number of lowerstatusjob participants in cleaned_data is 1009.")
} else {
  print("The number of lowerstatusjob participants in cleaned_data is not 1009.")
}

# test 4
cleaned_data$gender |>
  unique() |>
  length() == 2

cleaned_data$higherstatusjob |>
  unique() |>
  length() == 2

cleaned_data$lowerstatusjob |>
  unique() |>
  length() == 2

# test 5
## check if there are  2020 rows in the cleaned_data data set 
if (nrow(cleaned_data) == 2020) {
  print("The number of TOTAL participants in cleaned_data is 2020.")
} else {
  print("The number of TOTAL participants in cleaned_data is not 2020.")
}

# higheruni
if (nrow(data_higherstatusjob) == 673) {
  print("The number of higherstatusjob participants in cleaned_data is 673")
} else {
  print("The number of higherstatusjob participants in cleaned_data is not 673.")
}

# middleuni
if (nrow(data_middleuni) == 670) {
  print("The number of middleuni participants in cleaned_data is 670.")
} else {
  print("The number of middleuni participants in cleaned_data is not 670.")
}

# loweruni
if (nrow(data_loweruni) == 677) {
  print("The number of loweruni participants in cleaned_data is 677.")
} else {
  print("The number of loweruni participants in cleaned_data is not 677.")
}


analysis_data<-read_parquet(here::here("data/analysis_data/analysis_data.parquet"))
