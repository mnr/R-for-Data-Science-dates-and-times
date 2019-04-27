# datetimeutils

install.packages("datetimeutils")
library(datetimeutils)

MaryShellyFrankenstein <- as.Date( "1 January 1818", "%d %B %Y")

is_weekend(MaryShellyFrankenstein)
next_businessday(MaryShellyFrankenstein)

convert_tz(MaryShellyFrankenstein, from = "PST", to = "EST")

first_of_month(MaryShellyFrankenstein)
end_of_month(MaryShellyFrankenstein)

month(MaryShellyFrankenstein)
