library(tidyverse)

library(here)

.libPaths()

installed.packages() %>% 
  as_tibble()

ipt <- installed.packages() %>% 
  as_tibble() %>% 
  select(Package, LibPath, Version, Priority, Built) 

ipt  

#' ---
#' output: github_document
#' ---
#' 

#' ---
#' #' date: "`r format(Sys.Date()`"
#' ---
