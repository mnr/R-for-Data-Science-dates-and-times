# MMWRweek

install.packages("MMWRweek")
library(MMWRweek)

mmwrDate <- as.Date("April 26, 2019", "%b %d, %Y")

MMWRweek(mmwrDate) # returns MMWR dates

MMWRweek2Date(MMWRyear = 2019, MMWRday = 6, MMWRweek = 17 ) # returns date

MMWRweekday(mmwrDate) # returns weekday

