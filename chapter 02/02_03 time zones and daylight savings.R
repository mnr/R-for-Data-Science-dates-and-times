# dealing with timezones

# trying to find the right time zone name
OlsonNames()
OlsonNames()[grep("India", OlsonNames())]
OlsonNames()[grep("Calcutta", OlsonNames())]
OlsonNames()[grep("Asia", OlsonNames())]

Sys.timezone() # returns local time zone

# Holi Festival
# Monday, March 10, 2020 5:49 
# GMT+5:30
# Asia/Calcutta

HoliSunrise <- as.POSIXct("Monday, March 10, 2020 5:49",
                          format = "%A, %B %d, %Y %H:%M")
HoliSunrise

HoliSunrise <- as.POSIXct("Monday, March 10, 2020 5:49",
                          format = "%A, %B %d, %Y %H:%M",
                          tz = "Asia/Calcutta")

HoliSunrise

HoliSunrise <- as.POSIXlt("Monday, March 10, 2020 5:49",
                          format = "%A, %B %d, %Y %H:%M",
                          tz = "Asia/Calcutta")
HoliSunrise$isdst

# fixing time zones in base R
HoliSunrise <- as.POSIXlt("Monday, March 10, 2020 5:49 +0530",
                          format = "%A, %B %d, %Y %H:%M %z")
# time is correct for local timezone, not India
# so how to set india time and time zone
strftime(HoliSunrise, format = "%A, %B %d, %Y %H:%M", tz = "America/Los_Angeles")
# should work, but doesn't

# assume frustration. look ahead to chapter on lubridate!
