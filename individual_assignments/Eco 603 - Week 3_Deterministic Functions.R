#install.packages("here") 

#insert comments to describe these scripts
require("here")
here()
getwd()
here()

#two ways to get to a file:
#relative path
read.csv("data/hab.sta.csv")
#absolute path(more difficult)
read.csv("C:/Users/Suncica/Dropbox/My PC (LAPTOP-67TRTL5F)/Documents/GitHub/Eco_602_2020/data/hab.sta.csv")

#here helps locate file when directory is set someplace else, will work to open any data file as long as it is in the data directory:
here("data", "hab.sta.csv")
file.exists(here("data", "hab.sta.csv"))

read.csv(here("data", "hab.sta.csv"))
dat_habitat<- read.csv(here("data", "hab.sta.csv"))

dat_habitat
#structure of data frame
str(dat_habitat) 
#class 
class(dat_habitat)

elevation <-dat_habitat$elev #elevation
hist(elevation) #histogram of elevation
#quick histogram in one step
hist(dat_habitat$elev)
#histogram with proper titles and variables named
hist(dat_habitat$elev, main = "Histogram of Elevation", xlab = "Elevation", ylab = "Frequency")

slope <-dat_habitat$slope #slope
hist(slope) #histogram of slope

aspect <-dat_habitat$aspect #aspect
hist(aspect) #histogram of aspect

a<-dat_habitat$elev #designating first x variable
b<-dat_habitat$slope #designating second x variable
c<-dat_habitat$aspect #designating third x variable
y<-dat_habitat$ba.tot #designating y variable

plot(a, y, main = "Elevation Plot", xlab = "Elevation", ylab = "Basal Area of Trees", pch=19, frame=FALSE)
#scatterplot of a against y

#scatterplot with one line script, pch=symbol (diff numbers are diff symbols), frame=False means no frame on the graph, cex=.7, col=color
plot(dat_habitat$elev, dat_habitat$ba.tot, main = "Elevation Plot", xlab = "Elevation", ylab = "Basal Area of Trees", pch=16, frame=FALSE, cex=.7, col="purple")

line_point_slope = function(x, x1, y1, slope)
{
  get_y_intercept = 
    function(x1, y1, slope) 
      return(-(x1 * slope) + y1)
  
  linear = 
    function(x, yint, slope) 
      return(yint + x * slope)
  
  return(linear(x, get_y_intercept(x1, y1, slope), slope))
}

data_center_x = mean(dat_habitat$elev)
data_center_y = mean(dat_habitat$ba.tot)
c(data_center_x, data_center_y)

#designating sloope lines, number is slope, lwd=thickness of line
plot(x = dat_habitat$elev, y = dat_habitat$ba.tot)
points(x = data_center_x, y = data_center_y, col = "red")
curve(
  line_point_slope(
    x, 
    data_center_x, 
    data_center_y,
    +0.01), 
  add = TRUE, lwd=5)

abline(lm(y~a, data=dat_habitat), col="red") 
#add regression line

plot(b, y, main = "Slope Plot", xlab = "Slope", ylab = "Basal Area of Trees", pch=19, frame=FALSE)
#scatterplot of a against y
abline(lm(y~b, data=dat_habitat), col="red") 
#add regression line

plot(c, y, main = "Aspect Plot", xlab = "Aspect", ylab = "Basal Area of Trees", pch=19, frame=FALSE)
#scatterplot of a against y
abline(lm(y~c, data=dat_habitat), col="red") 
#add regression line


