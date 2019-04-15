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

