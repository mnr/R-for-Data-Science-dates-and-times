# timezones with lubridate

#install.packages("lubridate")
library(lubridate)

sputnik_Launch <- ymd_hm("1957/10/4 10:29 pm")

# lubridate tz tells us time zone
tz(sputnik_Launch) #tz = UTC

# but this should have been Moscow launch time. 
# so how to fix that?

grep("Moscow", OlsonNames(), value = TRUE)

tz(sputnik_Launch) <- "Europe/Moscow"

tz(sputnik_Launch) # that's better

# with_tz() sets timezone for printing
sputnik_Launch # Moscow time
with_tz(sputnik_Launch, "America/Los_Angeles") # US west coast time

# force_tz() leaves the time the same, but changes the zone
force_tz(sputnik_Launch, "America/Los_Angeles") 
sputnik_Launch # proof nothing changed
