# when to use the different date classes?

# first rule - if you aren't using times, use the Date class
# it's simpler
NextSolarEclipse <- as.Date(c(startEclipse = "2090-09-23", 
                              endEclipse ="2090-09-23"))

# if you have times, then use POSIX.
NextSolarEclipse_ct <- as.POSIXct(c(startEclipse = "2090-09-23 14:47", 
                               endEclipse ="2090-09-23 19:00"),
                               tz = "GMT")

# converting from one POSIX to another is easy
NextSolarEclipse_lt <- as.POSIXlt(NextSolarEclipse_ct)
unclass(NextSolarEclipse_lt)
