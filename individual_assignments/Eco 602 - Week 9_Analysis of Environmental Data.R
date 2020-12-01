read.csv("data/catrate.csv") #load data into project

head(catrate) #examine first few rows of data frame
summary(catrate) #summary function to view numerical summaries of all the columns in catrate


#Q1:
cat.rate <-catrate$cat.rate #vector for cat.rate column
hist(cat.rate) #quick histogram for cat.rate
hist(cat.rate, 
     main = "Histogram of the Salamander Catastrophic Rates", 
     xlab = "Catastrophic Rate", 
     ylab = "Frequency")

#Q2:
shapiro.test(cat.rate) #shapiro test to check for normality distribution of cat.rate

#Q4:
t.test(cat.rate, mu =2/7) #If the data are normally distributed, we can use the Student’s t test

#Q6:
wilcox.test(cat.rate, mu = 2/7) #Wilcoxon rank sum test of the alternative hypothesis

#Q9:
require(palmerpenguins)
penguin_dat = droplevels(subset(penguins, species != "Gentoo"))
summary(penguin_dat)
boxplot(flipper_length_mm ~ species, data = penguin_dat) #boxplot of both species flipper lengths

dat_adelie = subset(penguin_dat, species == "Adelie") #extracting individual species data subsets
summary(dat_adelie) #summary to see data for Adelie species
flipper_length_adelie <-(dat_adelie$flipper_length_mm) #vector for Adelie species flipper lengths
shapiro.test(flipper_length_adlie) #normality test for Adelie flipper lengths

dat_chinstrap = subset(penguin_dat, species == "Chinstrap") #extracting individual species data subsets
summary(dat_chinstrap) #summary to see data for Chinstrap species
flipper_length_chinstrap <-(dat_chinstrap$flipper_length_mm) #vector for Chinstrap species flipper lengths
shapiro.test(flipper_length_chinstrap) #normality test for Chinstrap flipper lengths

t.test(flipper_length_adelie, mu = 2/7)
t.test(flipper_length_chinstrap, mu = 2/7)
