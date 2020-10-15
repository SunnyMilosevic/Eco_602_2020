#two observations, 2 and 6 birds

#model the population of birds at the study sites with a Poisson distribution, single parameter lambda, and dpois() to calculate the probability mass
dpois(x = 2, lambda = 4.5) #likelihood of observing 2
dpois(x = 6, lambda = 4.5) #likelihood of observing 6
dpois(x = 2, lambda = 4.5) * dpois(x = 6, lambda = 4.5)#likelihood of observing 2 and 6 together is a product of the individual likelihoods

wiwa_counts = c(2,6)
print(wiwa_counts)
dpois(x = wiwa_counts, lambda = 4.5) #likelihood of observing 2 and 6 individualy, by an R shortcut of using a vector of the values
prod(dpois(x = wiwa_counts, lambda = 4.5)) #likelihood of observing both 2 and 6 as a product of individual likelihoods
sum(log(dpois(x = wiwa_counts, lambda = 4.5))) #sum of log-likelihoods

#load bird data
dat_bird = read.csv(here::here("data", "bird.sta.csv"))
dat_habitat = read.csv(here::here("data", "hab.sta.csv"))
dat_all = merge(dat_bird, dat_habitat)

#five number summary
summary(dat_all$WIWA)
hist(dat_all$WIWA,
     main="Histogram of dat_all$WIWA",
     breaks = (0:7 - 0.5),
     xlab="dat_all$WIWA",
     xlim=c(0,6),
     col="gray",
     freq=TRUE)

#try Poisson distribution with lambda = 1
sum(log(dpois(x = dat_all$WIWA, lambda = 1.0)))

#Question 2:
wiwr_counts = dat_all$WIWR
sum(log(dpois(x = dat_all$WIWR, lambda = 1.0)))
hist(dat_all$WIWR)

summary(dat_all$WIWR)

hist(dat_all$WIWR,
     main="Histogram of dat_all$WIWR",
     breaks = (0:7 - 0.5),
     xlab="dat_all$WIWA",
     xlim=c(0,6),
     col="gray",
     freq=TRUE)
