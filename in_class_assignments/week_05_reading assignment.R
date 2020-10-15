rm(list = ls()) #script for clearing the global environment, deletes all premade varables

pol_n_predation = 26 #t1
pol_n_no_predation = 184 #N1-t1
pol_n_total = 210 #N1
pol_predation_rate = pol_n_predation/pol_n_total #calc predation rate of Polyscias species

print(
  paste0(
    "The seed predation rate for Polyscias fulva is: ",
    round(pol_predation_rate, digits = 3))) 
#rounds predation rate

psd_n_predation = 25 #t2
psd_n_no_predation = 706 #N2-t2
psd_n_total = 731 #N2
psd_predation_rate = psd_n_predation/psd_n_total #calc predation rate of Pseudospondias species

print(
  paste0(
    "The seed predation rate for Pseudospondias microcarpa is: ",
    round(psd_predation_rate, digits = 3)))
#rounds predation rate

pol_predation_rate/psd_predation_rate #predation rate ratio
