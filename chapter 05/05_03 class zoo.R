# class zoo

install.packages("zoo")
library(zoo)

weatherData <- read.table("https://raw.githubusercontent.com/lyndadotcom/LPO_weatherdata/master/Environmental_Data_Deep_Moor_2012.txt",
                          header = TRUE,
                          stringsAsFactors = FALSE)

head(weatherData) # take a look at the data. Column 1 & 2 are date & time

# If you want to demonstrate the result of not unique order
# uncomment the following line and copy/paste a time
# then run the following lines again.
# results in "some methods for “zoo” objects do not work if the index entries in ‘order.by’ are not unique"
# weatherData <- edit(weatherData)

zooweather_data <- as.matrix(weatherData[ , -(1:2)], ncol = 7) # -() removes date and time columns

# time component of zoo has frequency, but also order.by
# order.by supports irregular time series
zooweather_order <- as.POSIXct(paste(weatherData[ , 1],weatherData[,2]), 
                               "%Y_%m_%d %H:%M:%S", 
                               tz = "America/Los_Angeles" )

# these observations are 6.25 minutes apart - an odd frequency

newZoo <- zoo(x = zooweather_data, order.by = zooweather_order)

head(newZoo)

# let's randomize zooweather_order
rand_zooweather_order <- zooweather_order + sample(c(1:6.25), size = nrow(newZoo), replace = TRUE)
# now rebuild newZoo with a random order
newZoo <- zoo(x = zooweather_data, order.by = rand_zooweather_order)
# works great! Note that this would be impossible if we had to define frequency

# zoo object can be subset by date
newZoo[as.POSIXct("2012/01/01 00:14:49"),]

# lag in zoo is same as ts

