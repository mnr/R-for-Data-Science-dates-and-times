# time series graphics

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



# barplot.zoo and plot, and plot.zoo  -------------------------------------------------------------
barplot(newZoo$Air_Temp)
plot(newZoo$Air_Temp[1:3000], newZoo$Barometric_Press[1:3000])
plot.zoo(newZoo, screens = c(1,2,3,4,5,6,7,8))

# plot, lines, and points -------------------------------------------------
plot(newZoo$Air_Temp, col = "red")
points(newZoo$Relative_Humidity, col = "blue", pch = 3, cex = .25)
lines(newZoo$Wind_Gust, col = "green")

# ggplot and tidyverse ----------------------------------------------------

library(tidyverse)
library(lubridate)
library(tibbletime)

  read_table2("https://raw.githubusercontent.com/lyndadotcom/LPO_weatherdata/master/Environmental_Data_Deep_Moor_2012.txt") %>% 
  unite(datetime, date,time) %>%
  mutate(datetime = ymd_hms((datetime))) %>%
  tbl_time(index = datetime) %>%  # tibbletime is built to live in the tidyverse
  ggplot( aes(x = datetime, y = Air_Temp))+
  geom_line(color = "#00AFBB", size = .25)



    