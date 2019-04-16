# math with Lubridate intervals

library(lubridate)

# Lubridate intervals - a fixed start time and a fixed end time
# For example, how old, in years, would JR Tolkien be?
JRTolkienBday <- dmy_hm("3 January 1892 9:00 pm")

JRTbday_lt <- as.POSIXlt(JRTolkienBday)
nowbday <- JRTbday_lt
nowbday$year <- as.POSIXlt(Sys.Date())$year
nowbday$year - JRTbday_lt$year

# lubridate
LD_JRTdiff <- interval(JRTolkienBday, now())
LD_JRTdiff/years(1) # periods understand leap years
LD_JRTdiff/dyears(1) # durations don't
round(LD_JRTdiff/dyears(1))

# other lubridate interval operators
JRT_birth_death <- interval(JRTolkienBday,mdy("September 2, 1973"))
mdy("Jul 28, 1914") %within% JRT_birth_death # did WWI start during Tolkien's lifetime?
int_start(JRT_birth_death) # when was he born?
int_length(JRT_birth_death) # interval in seconds
int_length(int_shift(JRT_birth_death, years(1))) # length of interval if JRT was born 1 year later

