# Get and Set date and time components

library(lubridate)

# see how easy!
PabloPicassoBday <- mdy_hm("October 25, 1881, 11:15 PM")

# add 
year(PabloPicassoBday) + 3

# adding three years with Base R
PPB_lt <- as.POSIXlt(PabloPicassoBday)
PPB_lt$year <- PPB_lt$year + 3
PPB_lt$year + 3 # year is offset from 1900. so PPB_lt$year is -19. +3 = -16
PPB_lt



# retrieving parts of a date
date(PabloPicassoBday)
year(PabloPicassoBday)
month(PabloPicassoBday)

# sometimes lubridate is more configurable
weekdays(PabloPicassoBday) # base R
wday(PabloPicassoBday, label = TRUE, abbr = FALSE) # lubridate is a bit more complex


# Change Pablo's birthday to February
PPB_feb <- as.POSIXlt(PabloPicassoBday) # make a copy
PPB_feb$mon <- 1 # month: Jan = 0
PPB_feb

# with lubridate
PPB_feb <- PabloPicassoBday #make a copy
month(PPB_feb) <- 2
PPB_feb

# Lubridate provides semester, am/pm, dst, leap_year
semester(PabloPicassoBday)
am(PabloPicassoBday)
dst(PabloPicassoBday)
leap_year(PabloPicassoBday)
