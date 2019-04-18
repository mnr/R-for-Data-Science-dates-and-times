# timezones with lubridate

#install.packages("lubridate")
library(lubridate)

sputnik_Launch <- ymd_hm("1957/10/4 10:29 pm")

# lubridate tz tells us time zone
tz(sputnik_Launch) #tz = UTC
# but this should have been Moscow launch time. 
# so how to fix that?

OlsonNames()[grep("Moscow", OlsonNames())]

tz(sputnik_Launch) <- "Europe/Moscow"

tz(sputnik_Launch) # that's better

# to do this in base R
sputnik_Launch <- as.POSIXlt("1957/10/4 10:29 pm", "%Y/%m/%d %I:%M %p")
sputnik_Launch # time zone = GMT. %p doesn't pick up am/pm due to missing timezone

# solving this
# this should work - but doesn't
sputnik_Launch <- as.POSIXlt("1957/10/4 10:29 pm MSK", "%Y/%m/%d %I:%M %p %z")
sputnik_Launch$zone <- "MSK" # which fixes time zone - but not the time (should be 22, not 10)
unclass(sputnik_Launch)

# instead, this works...
sputnik_Launch <- as.POSIXlt("1957/10/4 10:29 pm", 
                             "%Y/%m/%d %I:%M %p", 
                             tz = "Europe/Moscow")


unclass(sputnik_Launch)

