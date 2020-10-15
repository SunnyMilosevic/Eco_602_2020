rm(list = ls())

#Pr(E)+Pr(Ec)=1

pnorm(7.5, mean=10, sd=3)
1-(pnorm(7.5, mean=10, sd=3))

#Question 1
dbinom(x=3, size=4, p = 0.75) #value of exact x = mass function


#Question 2
pbinom(q=3, size=4, p = 0.75, lower.tail = TRUE, log.p = FALSE) #value x or less = cumulative mass function

#Question 3
pbinom(q=3, size=5, p = 0.75, lower.tail = TRUE, log.p = FALSE) #pbinom calculates value 3 or less 
1-(pbinom(q=3, size=5, p = 0.75, lower.tail = TRUE, log.p = FALSE))#sum of probabilities = 1

#Question 4
pnorm(1.2, mean = 2, sd = 2) #observing value less than x in normal distribution

#Question 5
1- (pnorm(1.2, mean = 2, sd = 2))#sum of probabilities = 1

#Question 6
(pnorm(3.2, mean = 2, sd = 2))-(pnorm(1.2, mean = 2, sd = 2)) 
#observing value less than 3.2 minus observing value less than 1.2 gives probability of the value between 3.2 and 1.2