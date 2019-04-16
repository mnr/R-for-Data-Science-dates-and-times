# busdater package

install.packages("busdater")
library(busdater)

Sholay_released <- as.Date("August 15, 1975", "%B %d, %Y")

# fiscal year starts July 1 
# get_fy determines fiscal date for specified date
get_fy(as.Date(c("June 30, 2001", "July 2, 2001"), "%B %d, %Y"))

get_fy(Sholay_released) # fiscal year Sholay was released
get_fy(Sholay_released, offset_period = 2) # fiscal year + 2 years

# get boundaries
get_boundary(Sholay_released)
get_boundary(Sholay_released, offset_type = "month", offset_period = -3) # 7/1/1974
get_boundary(Sholay_released, bus_period = "CY") # business period = calendar year
get_boundary(Sholay_released, bus_period = "M") # business period = month

# find the last day of this business period
get_boundary(Sys.Date(), boundary = "last day", bus_period = "CY")


