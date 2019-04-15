# math with Lubridate durations

library(lubridate)


# duration ... Think of a stopwatch. 
# it doesn't matter when you start it.
# durations aren't anchored in time. No fixed start or stop time
# durations don't care about leap years or other calendar oddities
# lubridate provides functions to create durations. They start with "d"
# durations are always in seconds
ddays(370) 

# durations are like difftimes, but difftimes have units
secondsInADay <- 24 * 60 * 60
as.difftime(370 * secondsInADay, units = "secs")
# ...or...
as.difftime(370, units = "days")

# what good are durations?

# Moon orbits earth every 29 days, 12 hours and 44 minutes
# how to calculate with Base R
BaseR_lunarOrbit <- as.difftime((29*24*60)+(12*60)+44, units = "mins")
# calculate a date + lunar orbit
as.POSIXct("2012-01-28", tz = "UTC") + BaseR_lunarOrbit
as.POSIXct("2012-02-28", tz = "UTC") + BaseR_lunarOrbit

# how to calculate with Lubridate
Lubridate_lunarOrbit <- ddays(29) + dhours(12) + dminutes(44)
# calculate a date + lunar orbit
ymd("2012-01-28") + Lubridate_lunarOrbit
ymd("2012-02-28") + Lubridate_lunarOrbit

# takeaway - you can get the same numbers, but Lubridate may be easier to understand
# question - why isn't there dmonths() ?
# answer - because months aren't exact. therefore PERIODS
