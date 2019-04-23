# tsibble and tibbletime
# the tidyverse approach to time series

install.packages("tsibble")
install.packages("tibbletime")
install.packages("tidyverse")

library(tsibble)
library(tibbletime)
library(tidyverse)

# grab weather data - notice I'm using tidyverse instead of base R
tt_weatherData <- read_table2("https://raw.githubusercontent.com/lyndadotcom/LPO_weatherdata/master/Environmental_Data_Deep_Moor_2012.txt") %>% 
  unite(datetime, date,time) %>%
  mutate(datetime = ymd_hms((datetime))) %>%
  tbl_time(index = datetime) # tibbletime is built to live in the tidyverse
# note that I didn't have to convert to matrix or split out the date/time
  
# tsibble creation
ts_weatherData <- read_table2("https://raw.githubusercontent.com/lyndadotcom/LPO_weatherdata/master/Environmental_Data_Deep_Moor_2012.txt") %>% 
  unite(datetime, date,time) %>%
  mutate(datetime = ymd_hms((datetime))) %>%
  as_tsibble(index = datetime, key = id(Air_Temp)) 

