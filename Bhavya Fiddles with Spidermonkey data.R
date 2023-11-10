library(networkdata)
data(package="networkdata")
library(igraph)
library(statnet)
library(intergraph)

detach(package:statnet)
spidermonkey <- graph_from_adjacency_matrix(spmonkey_adjmat)
class(animal_32[[1]])
spidermonkey_net <- asNetwork(animal_32[[1]])
spidermokey_el <- as_edgelist(animal_32[[1]], names = TRUE)

spidermonkey_dat <- as.matrix.network.adjacency(spidermonkey_net)

plot(spidermonkey_net)

animal_29
greys
animal_16
macaque

library(curl)
spmonkey_dat <- read.csv("Spidermonkey_adjmat.csv")
spmonkey_dat <- spmonkey_dat [,-c(1,3,4)]
spmonkey_dat[spmonkey_dat == "poleko"] <- ""


adjmat_spmonkey <- data.frame(as.factor(unique(spmonkey_dat$animal_focal)))
adjmat_spmonkey$names <- as.factor(unique(spmonkey_adjmat$animal_focal))

sp_dat_1 <- read.csv("spidermonkey_beh_edgelist.csv")
unique(sp_dat_1[,3]) 

mating <- sp_dat_1[sp_dat_1$Beh == "mating",]
mating <- mating[,-c(2,4)]
library(igraph)
library(intergraph)
detach(package:igraph)
library(statnet)
matingedgesmat <- as.matrix(mating)
mating_net_sp <- as.network(mating, matrix.type = "edgelist", multiple = TRUE)
plot(mating_net_sp)

unique(sp_dat_1$Beh)
groom <- sp_dat_1[sp_dat_1$Beh == "groom",]
groom <- groom[,-c(2,4)]
grooming_net_sp <- as.network(groom, matrix.type = "edgelist", multiple = TRUE, loops = TRUE)
plot(grooming_net_sp)

contact <- sp_dat_1[sp_dat_1$Beh == "In contact",]
contact <- rbind(contact, sp_dat_1[sp_dat_1$Beh == "embrace",])
contact <- contact[,-c(2,4)]
contact_net_sp <- as.network(contact, matrix.type = "edgelist", multiple = TRUE, loops = TRUE)
plot(contact_net_sp)

play <- sp_dat_1[sp_dat_1$Beh == "play",]
play <- rbind(play, sp_dat_1[sp_dat_1$Beh == "play/embrace",])
play <- rbind(play, sp_dat_1[sp_dat_1$Beh == "play ",])
play <- play[,-c(2,4)]
play_net_sp <- as.network(play, matrix.type = "edgelist", multiple = TRUE, loops = TRUE)
plot(play_net_sp)
