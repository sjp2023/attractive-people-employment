#### Preamble ####
# Purpose: Simulates a relationship between the attractiveness and employment that how will be impact on the hiring process in US.
# Author: Sky Suh
# Date: 28 March 2024
# Contact: sky.suh@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

#### Workspace setup ####
library(tidyverse)
library(tibble)

#### Simulate data set of relationship between physical attractiveness and employment####
simulated_data <-
  tibble(
    certainty = runif(n = 1000, min = 0, max = 11) |> floor (),
    guessed_correct = runif(n = 1000, min = 0, max = 11) |> floor (),
  )

#### Simulate data set of relationship between educational attractiveness and employment####

#### Simulate data set of relationship between gender attractiveness and employment####


### Add tests for simulated data ###
# Expect that guessed_correct is only ever 0 or 1.
max(simulated_data$certainity) == 1
min(simulated_data$certainity) == 0
any(unique(simulated_data$certainity) == c(0:1)

# Expect that certainty is only ever an integer 0 to 10, inclusive.
max(simulated_data$certainity) == 10
min(simulated_data$certainity) == 0
any(unique(simulated_data$certainity) == c(0:18)
    

