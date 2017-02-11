## Bodo Winter & Timo Roettger
## Type I/II error simulations for repetitions
## Created Feb 11, 2017

## Design and data is inspired by Roettger et al. (2014)'s paper
## on incomplete neutralization

##------------------------------------------------------------------
## Preliminaries
##------------------------------------------------------------------

setwd('/Users/winterb/Research/repetitions/simulations/')

## Initialize variability values taken from the model of Experiment 1:

it_int_sd <- 27.210
it_slope_sd <- 1.931
sub_int_sd <- 30.636
sub_slope_sd <- 5.786
res_sd <- 19.863
IN_effect <- -8.655

## Initialize parameters (N. of sub, item and repetition):

n_its <- 2 ^ (0:5)
n_subs <- 6 * 2 ^ (0:3)
n_reps <- 2 ^ (0:4)
n_sim <- 1000

## The actual loop:

for (i in 1:length(n_its)) {
	
	for (j in 1:length(n_subs)) {
		
		for (k in 1:length(n_reps)) {

			# it_ids <- rep(1:(n_its[i]), n_subs[j] * n_reps[k] * 2)
			it_ids <- rep(rep(gl(n_its[i], 1), each = n_reps[k]), n_subs[j] * 2)
			sub_ids <- gl(n_subs[j], n_its[i] * n_reps[k] * 2)
			rep_ids <- rep(rep(1:(n_reps[k]), each = n_its[i] * 2), n_subs[j])
			data.frame(sub_ids, it_ids, rep_ids)
			
			
			for (n in 1:nsim) {
				
				it_ints <- rnorm(n_its[i], mean = 0, sd = it_int_sd)
				it_ints <- it_ints[it_ids]
				
				sub_ints <- rnorm(n_subs[j], sub_int_sd, mean = 
				
				
				}

			}
		}
	}


for (i in 1:n_sim) {
	
	
	}


