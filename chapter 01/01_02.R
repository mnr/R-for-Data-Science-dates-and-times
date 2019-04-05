# the date object

HAL_online <- as.Date("1992-01-12")

str(HAL_online) #Date[1:1], format: "1999-01-01
class(HAL_online) #Date

as.integer(HAL_online)

HAL_online <- as.Date(c("1992-01-12", "1992-02-01"))
str(HAL_online)
HAL_online[2]

start_of_Date <- as.Date("1970-01-01")
as.integer(start_of_Date)
