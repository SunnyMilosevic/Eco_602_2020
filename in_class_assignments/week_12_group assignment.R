dat_delomys = read.csv("https://michaelfrancenelson.github.io/eco_602_634_2020/data/delomys.csv")
summary(dat_delomys)


#Scatterplot of body length and body mass.
plot(dat_delomys$body_length, dat_delomys$body_mass, 
     main = "Scatterplot of body length and body mass", 
     xlab = "Body Length", 
     ylab = "Body Mass", 
     pch=16, 
     frame=FALSE,
     cex=.7, 
     col="purple")

#Conditional boxplot of body mass grouped by sex
boxplot(body_mass~sex,data=delomys, 
        main = "Conditional boxplot of body mass",
        xlab = "Gender",
        ylab = "Body Mass")

#Conditional boxplot of body mass grouped by species.
boxplot(body_mass~binomial, data=delomys, 
        main = "Conditional boxplot of body mass",
        xlab = "Species",
        ylab = "Body Mass")

#Conditional boxplot of body mass grouped by species and sex.
boxplot(body_mass~sex*binomial, data=delomys, 
        main = "Conditional boxplot of body mass",
        xlab = "Gender and Species",
        ylab = "Body Mass")
