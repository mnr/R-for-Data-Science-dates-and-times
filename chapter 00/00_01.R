# exmples for LinkedIn Learning R for Data Science: Dates and Times
# Chapter 00_01
# affiliate: https://linkedin-learning.pxf.io/rdatesHowstored


myDate <- as.Date("March 14, 2015", format = "%B %d, %Y") # produces Date
str(myDate) # is Date

myPOSIXlt <- as.POSIXlt("March 14, 2015 at 9:26", format = "%B %d, %Y at %H:%M") # POSIXlt
myPOSIXlt[1, "year"] # (first element of list) number of years since 1900
myPOSIXlt[1, "mon"] # months after the 1st month of the year
str(myPOSIXlt) # is POSIXlt

myPOSIXct <- as.POSIXct("March 14, 2015 at 9:26", format = "%B %d, %Y at %H:%M") # POSIXct
str(myPOSIXct) # is POSIXct

laterPOSIX <- as.POSIXct("March 14, 2015 at 11:26", format = "%B %d, %Y at %H:%M") # POSIXct
 
mydifftime <- difftime(laterPOSIX, myPOSIXct)
str(mydifftime) # is difftime

# examples of time series
myts <- ts(1:10, frequency = 12, start = c(1959, 2))
# zoo and xts are installed by packages

# storing dates
myFromStrptime <- strptime("March 14, 2015 at 9:26", format = "%B %d, %Y at %H:%M") # POSIXlt
