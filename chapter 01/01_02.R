# the date object

HAL_online <- as.Date("1992-01-12")

str(HAL_online) #Date[1:1], format: "1999-01-01
class(HAL_online) #Date

as.integer(HAL_online) # stored as number of days since 1970-01-01
as.integer(as.Date("1970-01-01")) # equals zero
as.Date(as.Date("1970-01-01")+8046) # produces 1992-01-12 -- our original date

# vectors can contain multiple dates
HAL_online <- as.Date(c("1992-01-12", "1992-02-01"))
str(HAL_online)
HAL_online[2]

# what about POSIX?
# POSIXct stores date time as integer == # seconds since 1970-01-01 UTC
HAL_online <- as.Date("1992-01-12")



# POSIXlt stores date time as list:sec, min, hour, mday, mon, year, wday, yday, isdst, zone, gmtoff

