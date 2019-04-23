# Class TS for timezones

# data is a matrix
# creating sample data. Four sine waves
mydata <- matrix(c(sin(seq(0,10,0.1)), 
                 sin(seq(1,11,0.1)),
                 sin(seq(2,12,0.1)),
                 sin(seq(3,13,0.1))),
                 ncol = 4)

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
pumpNames <- c("East", "West", "North", "South")
ts(mydata,
   end = 2019,
   frequency = howOftenObserved,
   names = pumpNames)


# adding time series
endSeries <- ts(mydata,
                end = 2019,
                frequency = howOftenObserved,
                names = pumpNames)

startSeries <- ts(mydata, 
                  start = 2019,
                  deltat = deltaObserve,
                  names = pumpNames)


startSeries
endSeries
# addition will align the series then add columns
startSeries + endSeries
startSeries - endSeries
startSeries[1,] # first row
startSeries[,2] # second column, but with month attributes

# autocorrelation between two time series
acf(c(startSeries[,1], startSeries[,3]))

# note that ts objects cannot be subset by date
endSeries[as.Date("2013/08/01"), ]
# but you can use window
window(endSeries, start = 2012, end = c(2014,3)) # Jan 2012 to March 2014

# use lag to compare time series
minusAYear <- lag(endSeries, 12) # turn back the clock by 12 months

plot(endSeries[ , 2], type="l",col="red")
lines(minusAYear[ , 2],col="green")
