# rolling averages

# class zoo

install.packages("zoo")
library(zoo)

# Grab some data ----------------------------------------------------------
weatherData <- read.table("https://raw.githubusercontent.com/lyndadotcom/LPO_weatherdata/master/Environmental_Data_Deep_Moor_2012.txt",
                          header = TRUE,
                          stringsAsFactors = FALSE)

zooweather_data <- as.matrix(weatherData[ , -(1:2)], ncol = 7) # -() removes date and time columns
zooweather_order <- as.POSIXct(paste(weatherData[ , 1],weatherData[,2]), 
                               "%Y_%m_%d %H:%M:%S", 
                               tz = "America/Los_Angeles" )

newZoo <- zoo(x = zooweather_data, order.by = zooweather_order)


# Time Series and Statistics ----------------------------------------------
rollMean_air_temp <- rollmean(newZoo$Air_Temp, k = 100)
rollMax_air_temp <- rollmax(newZoo$Air_Temp, k = 51)

plot(newZoo$Air_Temp, col = "yellow", type = "p")
lines(rollMean_air_temp, col = "red")

# rollapply ---------------------------------------------------------------
myRollingFunction <- function(x) {
  # assume that x is a vector with length of "width"
  paste("Delta =", round(max(x) - min(x), digits = 3) ) # do something here
}

myRollingFunction(c(3,5,7.334567))

rollapply(data = newZoo$Air_Temp, 
          width = 10,
          FUN = myRollingFunction)
