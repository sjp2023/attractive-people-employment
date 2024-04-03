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
    attractiveness_employment = runif(n = 1000, min = 0, max = 11) |> floor (),
  )

#### Simulate data set of relationship between educational attractiveness and employment####

#### Simulate data set of relationship between gender attractiveness and employment####

# Expect that attractiveness_employment is only ever 0 or 1.
max(simulated_data$certainty) == 1
min(simulated_data$certainty) == 0

# Expect that certainty is only ever an integer 0 to 10, inclusive.
max(simulated_data$certainty) == 10
min(simulated_data$certainty) == 0
    

