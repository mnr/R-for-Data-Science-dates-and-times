# Class TS for timezones

# data is a matrix
mydata <- matrix(c(1:16), ncol = 4)
# columns are series of observations

# frequency / deltat are rows
howOftenObserved <- 12 #monthly
# annual = 1, quarter = 4, month = 12, week = 52
# 1 year/frequency
# rows described in relation to 1900

ts(mydata, 
   start = 2019,
   frequency = howOftenObserved)

# instead of frequency, delta between observations
# use frequency OR delta
deltaObserve <-  1/12

ts(mydata, 
   start = 2019,
   deltat = deltaObserve)

# end of observation period, instead of beginning
ts(mydata,
   end = 2019,
   frequency = howOftenObserved)

# name the series
ts(mydata,
   end = 2019,
   frequency = howOftenObserved,
   names = c("Apple", "Oranges", "Bananas", "Cherries"))

# adding time series
endSeries <- ts(mydata,
                end = 2019,
                frequency = howOftenObserved,
                names = c("Apple", "Oranges", "Bananas", "Cherries"))
startSeries <- ts(mydata, 
                  start = 2019,
                  deltat = deltaObserve,
                  names = c("Apple", "Oranges", "Bananas", "Cherries"))

startSeries
endSeries
# addition will align the series then add columns
startSeries + endSeries
startSeries - endSeries
startSeries[1,] # first row
startSeries[,2] # second column, but with month attributes


