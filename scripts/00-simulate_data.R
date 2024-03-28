#### Preamble ####
# Purpose: Simulates a relationship between the beauty and employment that how will be impact on the hiring process in US.
# Author: Sky Suh
# Date: 28 March 2024
# Contact: sky.suh@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# Any other information needed? 


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
simulated_data <-
  tibble(
    certainty = runif(n = 1000, min = 0, max = 11) |> floor (),
    guessed_correct = runif(n = 1000, min = 0, max = 11) |> floor (),
  )

### Add tests for simulated data ###
# Expect that guessed_correct is only ever 0 or 1.
max(simulated_data$certainity) == 1
min(simulated_data$certainity) == 0
any(unique(simulated_data$certainity) == c(0:1)

# Expect that certainty is only ever an integer 0 to 10, inclusive.
max(simulated_data$certainity) == 10
min(simulated_data$certainity) == 0
any(unique(simulated_data$certainity) == c(0:18)
    
    #### Download data ####
    # [...ADD CODE HERE TO DOWNLOAD...]
    
    
    
    #### Save data ####
    # [...UPDATE THIS...]
    # change the_raw_data to whatever name you assigned when you downloaded it.
    write_csv(the_raw_data, "inputs/data/raw_data.csv") 

