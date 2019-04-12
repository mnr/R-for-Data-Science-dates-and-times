# round, floor, ceiling

library(lubridate)

# from chapter 02
Sys.time()
round(Sys.time(), "hour")
round(Sys.time(), "year")
trunc(Sys.time(), "hour")

# Lubridate provides similar functions, but easier to understand
now() # equivalent to Sys.time()
floor_date(now(), unit = "month") # round down
floor_date(now(), unit = "year")

round_date(now(), unit = "hour") # round to nearest unit

ceiling_date(now(), unit = "minutes") # round up

# last day of previous month
rollback(now(), roll_to_first = FALSE, preserve_hms = FALSE)



