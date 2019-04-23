# xts Extensible time series

# An xts object extends class zoo

install.packages("xts")
library(xts)

weatherData <- read.table("https://raw.githubusercontent.com/lyndadotcom/LPO_weatherdata/master/Environmental_Data_Deep_Moor_2012.txt",
                          header = TRUE,
                          stringsAsFactors = FALSE)

# xts can work just like zoo
xtsweather_data <- as.matrix(weatherData[ , -(1:2)], ncol = 7) # -() removes date and time columns

xtsweather_order <- as.POSIXct(paste(weatherData[ , 1],weatherData[,2]), 
                               "%Y_%m_%d %H:%M:%S", 
                               tz = "America/Los_Angeles" )

newxts <- xts(x = xtsweather_data, order.by = xtsweather_order)

head(newxts)

# xts index must be a TIME based class

# xts improves subsetting over zoo
# xts allows for date ranges in subsetting
newxts["2012-03-01 02:30:00/2012-03-02 03:00:00"]
# identical to window
window(newxts, start = "2012-03-01 02:30:00", end = "2012-03-02 03:00:00" )


# adding attributes
# useful for keeping notes with data or extending class
newxts <- xts(x = xtsweather_data, 
              order.by = xtsweather_order,
              favoriteAnimal = "rabbit")

xtsAttributes(newxts)
xtsAttributes(newxts)$favoriteAnimal
xtsAttributes(newxts) <- list(favoriteVegetable = "carrot", 
                              colorRainBox = "orange")
xtsAttributes(newxts)

# other xts functions
endpoints(newxts, on = "months") # returns a vector pointing to end of month
newxts[endpoints(newxts, on = "months")] # can also be years, quarters, etc

monthly_newxts <- split(newxts, f = "months")



