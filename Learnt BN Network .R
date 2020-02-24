#the following packages will be needed to run to get this going
install.packages("bnlearn")
install.packages("Rgraphviz")
library(bnlearn)
library(Rgraphviz)

# Before providing the probabilites of each of the these variables effecting the 
# outcome we first must tell it what the binary varibales are 
sex <- c("boy", "girl").
age <- c("<3", ">3")
companion <- c("yes", "no")
outcome <- c("eaten", "not eaten")

# now that the varibles have been defined we are able to assign the probabilities
# of each event. A probability is set for each variable 

# we might need to remove the probability for outcome, but not sure yet?!
s.prob <- array(c(0.3,0.7), dim = 2, dimnames = list(sex))
a.prob <- array(c(0.6,0.4), dim = 2, dimnames = list(age))
c.prob <- array(c(0.25, 0.75), dim =2, dimnames = list(companion))
o.prob <- array(c(0.6, 0.4), dim=2, dimnames = list(outcome))

# with the conditionall probabilites set, we can now turn them into a table 
t.cpt <- list(age=a.prob, companion=c.prob, sex=s.prob, outcome=o.prob)

# and boom we've got a network 
bn <- custom.fit(test, t.cpt)


# the steps outlined in this can also been seen in section 3.2 of the attached link



