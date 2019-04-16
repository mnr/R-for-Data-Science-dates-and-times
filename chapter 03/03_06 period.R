# math with periods

library(lubridate)

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

# periods - 
class(months(3)) # returns a lubridate period
months(3) # retrieving days or months from this is meaningless
class(today())
class(today() + months(3))
