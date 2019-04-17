# financial market dates

install.packages("fmdates")
library(fmdates)

MLK_holiday <- as.Date("2019-01-21")

#  includes methods to check whether dates are business
# days in certain locales, functions to adjust and shift dates and time length
# (or day counter) calculations.

NewYorkCalendar <- USNYCalendar()
local(NewYorkCalendar) # extract time zone from this calendar
JapanTokyoCalendar <- JPTOCalendar()

is_good("2019-04-17", NewYorkCalendar) # true - Wednesday
is_good("2019-04-20", NewYorkCalendar) # false - Saturday
is_good(MLK_holiday, NewYorkCalendar) # false - MLK holiday
is_good(MLK_holiday, JapanTokyoCalendar) # True - NOT MLK holiday

# find a valid trading date
# is_valid_bdc for a list of adjusters
adjust(MLK_holiday, bdc = "p", NewYorkCalendar) # preceeding date
adjust(MLK_holiday, bdc = "f", NewYorkCalendar) # preceeding date
adjust(MLK_holiday, bdc = "mf", NewYorkCalendar) # preceeding date

eom(MLK_holiday) # find end of month for this date
