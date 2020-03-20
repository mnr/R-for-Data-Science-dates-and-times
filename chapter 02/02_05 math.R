# difftime and date math
# affiliate: https://linkedin-learning.pxf.io/rdatesMath

# values to work with
USA_Independence <- as.Date("1776/07/04")
TodayDate <- Sys.Date()
US_age <- TodayDate - USA_Independence
TodayTime_ct <- Sys.time()
TodayTime_lt <- as.POSIXlt(Sys.time())

# this tests the results of all math combinations
for (thisObject in list(US_age, USA_Independence, 3, TodayTime_ct, TodayTime_lt)) {
  for (thatObject in list(US_age, USA_Independence, 3, TodayTime_ct, TodayTime_lt)) {
    print(paste(class(thisObject),"+",class(thatObject),"=",try(class(thisObject + thatObject))))
    print(paste(class(thatObject),"+",class(thisObject),"=",try(class(thatObject + thisObject))))
    print(paste(class(thisObject),"-",class(thatObject),"=",try(class(thisObject - thatObject))))
    print(paste(class(thatObject),"-",class(thisObject),"=",try(class(thatObject - thisObject))))
    print("")
  }
}

# for example:
# Date - Numeric = Date
class(TodayDate - 3) # numerics and dates are always in days

# POSIXlt + POSIXlt = Error
TodayTime_lt + TodayTime_lt

# If you subtract a difftime from a Date, you get a Date
class(TodayDate - US_age)
class(US_age - TodayDate)

# First, adding a numeric to a Date assumes the numeric is number of days
TodayDate
TodayDate + 3
TodayDate + 2.5
TodayDate + 2.7

# Second, adding a numeric to a POSIXlt requires a unit.
TodayTime_lt
TodayTime_lt + 3 # unspecified numbers are seconds
# add 3 hours to POSIXlt
TodayTime_lt$hour + 3
NewTT_lt <- TodayTime_lt
NewTT_lt$hour <- NewTT_lt$hour + 3
# add 3 hours to POSIXct
TodayTime_ct + 3*3600 # add three hours

TodayTime_ct * 2 # * not defined
