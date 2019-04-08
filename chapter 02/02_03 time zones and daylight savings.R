# dealing with timezones

OlsonNames()

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
