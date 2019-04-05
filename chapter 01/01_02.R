# the date object

HAL_online <- as.Date("1992-01-12")

str(HAL_online) #Date[1:1], format: "1999-01-01
class(HAL_online) #Date

as.numeric(HAL_online) # stored as number of days since 1970-01-01
as.numeric(as.Date("1970-01-01")) # equals zero
as.Date(as.Date("1970-01-01")+8046) # produces 1992-01-12 -- our original date

# vectors can contain multiple dates
HAL_online <- as.Date(c("1992-01-12", "1997-01-12"))
str(HAL_online)
HAL_online[2]

# what about POSIX?
# POSIXct stores date time as integer == # seconds since 1970-01-01 UTC
HAL_online <- as.POSIXct("1992-01-12 11:23:34", tz = "America/Chicago")
as.integer(HAL_online)


# POSIXlt stores date time as list:sec, min, hour, mday, mon, year, wday, yday, isdst, zone, gmtoff
HAL_online <- as.POSIXlt("1992-01-12 11:23:34", tz = "America/Chicago")
as.integer(HAL_online) # no longer an integer
unclass(HAL_online) # this shows the components of the list
month.name[HAL_online$mon +1] # equals January
