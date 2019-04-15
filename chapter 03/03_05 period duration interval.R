# math with periods, durations, and intervals

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


# lubridate period ... These are "human" times
# instead of dmonths(), there are months()
# for example: how many days in the next three months?
# first - base R
baseR_daysin3months <- function (start_Date) {
  thisMonth <- as.POSIXlt(start_Date)
  threeMonths <- thisMonth # copy the start date as Posixlt
  threeMonths$mon <- threeMonths$mon + 3 # add one month
  threeMonths - thisMonth # or this way
  }
baseR_daysin3months(Sys.Date())
baseR_daysin3months("2012-02-01") #leap_year(ymd("2012-02-01")) == TRUE

# then, how does lubridate do the same?
lubridate_daysin3months <- function(start_Date) {
  thisMonth <- ymd(start_Date)
  threeMonths <- thisMonth
  threeMonths + months(3) - thisMonth
}
lubridate_daysin3months(Sys.Date())
lubridate_daysin3months("2012-02-01")


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


# useful when accounting for leap year or DST
# first - base R
baseR_daysToThe20th <- function (start_Date) {
  nextMonth20th <- as.POSIXlt(start_Date) # copy the start date as Posixlt
  nextMonth20th$mon <- nextMonth20th$mon + 1 # add one month
  nextMonth20th$mday <- 20 # set date to the 20th
  # difftime(nextMonth20th, start_Date ) # calculate difftime
  nextMonth20th - as.POSIXlt(start_Date) # or this way
}
baseR_daysToThe20th(Sys.Date())

# then, how does lubridate do the same?
lubridate_daysToThe20th <- function(start_Date) {
  nextMonth <- ymd(start_Date)
  day(nextMonth) <- 20
  nextMonth + months(1) - ymd(start_Date)
}
lubridate_daysToThe20th(Sys.Date())
# note the difference in line 46 and line 57. use of months(x)





library(readr)
LPO_weatherdata <- read_table2("https://raw.githubusercontent.com/lyndadotcom/LPO_weatherdata/master/Environmental_Data_Deep_Moor_2012.txt")

