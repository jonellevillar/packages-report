#' ---
#' date: "`r format(Sys.Date())`"
#' output: github_document
#' ---


library(tidyverse)

library(here)

.libPaths()

installed.packages() %>% 
  as_tibble()

ipt <- installed.packages() %>% 
  as_tibble() %>% 
  select(Package, LibPath, Version, Priority, Built) 

ipt  



