# datetimeutils

install.packages("datetimeutils")
library(datetimeutils)

MaryShellyFrankenstein <- as.Date( "1 January 1818", "%d %B %Y")

# these are only a sample of the available utilities
is_weekend(MaryShellyFrankenstein)

?is_weekend

next_businessday(MaryShellyFrankenstein)

convert_tz(MaryShellyFrankenstein, from = "PST", to = "EST")

?first_of_month
first_of_month(MaryShellyFrankenstein)
end_of_month(MaryShellyFrankenstein)

month(MaryShellyFrankenstein)
[month.name]month(MaryShellyFrankenstein)


timegrid(from = as.POSIXct("2100-03-23 12:34:01"), 
         to = as.POSIXct("2100-04-01 12:33:00"),
         interval = "1 hour")
