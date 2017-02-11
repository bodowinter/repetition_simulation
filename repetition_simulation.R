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

n_reps <- 2 ^ (0:4)
n_its <- 2 ^ (0:5)
n_subs <- 6 * 2 ^ (0:3)




