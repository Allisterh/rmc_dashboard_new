##======================================================================================
##
## Script name: 
##
## Purpose of script:
##
## Author: Allister O. Hodge
##
## Date Created: 2023-05-05
##
## Copyright (c) Allister Hodge, 2023
## Email: allister.hdoge@gmail.com/allitser.hodge@eccb-centralbank.org
##
##===========================================================================================
##
## Notes:
##   
##
##======================================================================================
## first remove ALL objects and close all possible connections
closeAllConnections()
rm(list = ls(all = TRUE)) #Does remove all inclusive hidden
cat("\014")
gc()
##======================================================================================
## set working directory for Mac and PC
getwd()
## setwd("~/dropbox/")  #Allister working directory (windows)
## setwd("C:/Users/allister/dropbox/")  # Allister working directory (PC)

#================================================================================

options(scipen = 6, digits = 4) # I prefer to view outputs in non-scientific notation
options(encoding = "UTF-8") # sets string encoding to UTF-8 instead of ANSI

memory.limit(30000000)  # this is needed on some PCs to increase memory allowance, but has no impact on macs.

#================================================================================

## load up the packages we will need:  (uncomment as required)
library(pacman)
require(tidyverse)
require(data.table)
require(here)
library(tools)
library(renv)
suppressPackageStartupMessages(pacman::p_load(scales, glue, fs, lubridate,plotly, 
                                              TSstudio,
                                              dygraphs, tbl2xts,reactable, 
                                              reactablefmtr, DT, gt, gtExtras, 
                                              readxl,tsibble, fable, fabletools,ragg,
                                              fable.ata, fable.prophet,ggsci, ggrepel))
 # source("functions/packages.R")       # loads up all the packages we need
                                             

#==========================================================================================

## load up our functions into memory

# source("functions/summarise_data.R") #e.g.

#===============================================================================

# initialize a new project (with an empty R library)
renv::init(bare = TRUE)

# save library state to lockfile
renv::snapshot()

# check library status
renv::status()


paste0("cols = c('", colours() |> 
paste(collapse="', '"), "')") |> 
  cat()


#' CREG colour palette
"#fff"
CREG_blue1 = "#00B0B9"
CREG_blue2 = "#005F83"
CREG_blue3 = "#002D72"
CREG_blue4 = "#00A9E0"
CREG_purple = "#485CC7"
CREG_green = "#78D64B"
CREG_yellow = "#EFDF00"
CREG_orange = "#FF8200"
CREG_pink = "#FB637E"
CREG_red = "#C5003E"
CREG_grey1 = "#C8C9C7"
CREG_grey2 = "#75787B"
CREG_black = "#111111"
"#101010"

"#FDF7F7"

"#ED79F9"

"#3ADAC6"


# Color palette for the colorblind
# Source: http://jfly.iam.u-tokyo.ac.jp/html/manuals/pdf/color_blind.pdf
# Colors for inclusion

pa_blue <- "#0072B2"          # RGB{0,114,178}
pa_green <- "#009E73"         # RGB{0,158,115}
pa_orange <- "#D55E00"        # RGB{230,159,0}
pa_lightblue <- "#56B4E9"     # RGB{86,180,233}
pa_pink <- "#CC79A7"          # RGB{204,121,167}
pa_lightorange <- "#E69F00"   # RGB{230,159,0}
pa_yellow <- "#F0E422"        # RGB{240,228,66}
pa_black <- "#000000"         # RGB{0,0,0}
pa_white <- "#ffffff"         # RGB{255,255,255}

colorblind <- c(pa_blue,
                pa_green,
                pa_orange,
                pa_lightblue,
                pa_pink,
                pa_lightorange,
                pa_yellow,
                pa_black,
                pa_white)


colors <- c("#d35400", "#2980b9", "#2ecc71", "#f1c40f", "#2c3e50", "#7f8c8d")
colors2 <- c("#000004", "#3B0F70", "#8C2981", "#DE4968", "#FE9F6D", "#FCFDBF")