library(maptools)
library(raster)
library(plyr)
library(ggplot2)
library(rgdal)
windows()

#to load the location data
customer <- read.csv("customers.csv")
#to plot the data using only longitude and latitude
plot(customer$lng,customer$lat)

#to get the data for the map 
# the code of countries can be gotten from https://www.nationsonline.org/oneworld/country_code_list.htm
nigeria<-getData("GADM", country="NG", level=0)
#to get the data for dividing into regons
nigeria1<-getData("GADM", country="NG", level=1)
#to plot the map
plot(nigeria)




#to plot the map in regions
plot(nigeria1)



#to locate the cutomers in their approriate locations using the locational data(and add color)
symbols(customer$lng, customer$lat,bg = 'red', fg = 'red', squares =rep(1, length(customer$lng)), inches=0.03, add=TRUE)
