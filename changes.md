changes.R
================
Jonelle
2019-06-11

``` r
library(tidyverse)
```

    ## Registered S3 methods overwritten by 'ggplot2':
    ##   method         from 
    ##   [.quosures     rlang
    ##   c.quosures     rlang
    ##   print.quosures rlang

    ## ── Attaching packages ─────────────────────────────────────── tidyverse 1.2.1 ──

    ## ✔ ggplot2 3.1.1     ✔ purrr   0.3.2
    ## ✔ tibble  2.1.3     ✔ dplyr   0.8.1
    ## ✔ tidyr   0.8.3     ✔ stringr 1.4.0
    ## ✔ readr   1.3.1     ✔ forcats 0.4.0

    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
library(here)
```

    ## here() starts at /Users/admin/R/RaukR2019/packages-report

``` r
.libPaths()
```

    ## [1] "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"

``` r
installed.packages() %>% 
  as_tibble()
```

    ## # A tibble: 171 x 16
    ##    Package LibPath Version Priority Depends Imports LinkingTo Suggests
    ##    <chr>   <chr>   <chr>   <chr>    <chr>   <chr>   <chr>     <chr>   
    ##  1 abind   /Libra… 1.4-5   <NA>     R (>= … method… <NA>      <NA>    
    ##  2 acepack /Libra… 1.4.1   <NA>     <NA>    <NA>    <NA>      testthat
    ##  3 askpass /Libra… 1.1     <NA>     <NA>    sys (>… <NA>      testthat
    ##  4 assert… /Libra… 0.2.1   <NA>     <NA>    tools   <NA>      testtha…
    ##  5 backpo… /Libra… 1.1.4   <NA>     R (>= … utils   <NA>      <NA>    
    ##  6 base    /Libra… 3.6.0   base     <NA>    <NA>    <NA>      methods 
    ##  7 base64… /Libra… 0.1-3   <NA>     R (>= … <NA>    <NA>      <NA>    
    ##  8 BH      /Libra… 1.69.0… <NA>     <NA>    <NA>    <NA>      <NA>    
    ##  9 boot    /Libra… 1.3-22  recomme… R (>= … <NA>    <NA>      MASS, s…
    ## 10 broom   /Libra… 0.5.2   <NA>     R (>= … "backp… <NA>      "AER, a…
    ## # … with 161 more rows, and 8 more variables: Enhances <chr>,
    ## #   License <chr>, License_is_FOSS <chr>, License_restricts_use <chr>,
    ## #   OS_type <chr>, MD5sum <chr>, NeedsCompilation <chr>, Built <chr>

``` r
ipt <- installed.packages() %>% 
  as_tibble() %>% 
  select(Package, LibPath, Version, Priority, Built) 

ipt  
```

    ## # A tibble: 171 x 5
    ##    Package   LibPath                                Version Priority  Built
    ##    <chr>     <chr>                                  <chr>   <chr>     <chr>
    ##  1 abind     /Library/Frameworks/R.framework/Versi… 1.4-5   <NA>      3.6.0
    ##  2 acepack   /Library/Frameworks/R.framework/Versi… 1.4.1   <NA>      3.6.0
    ##  3 askpass   /Library/Frameworks/R.framework/Versi… 1.1     <NA>      3.6.0
    ##  4 assertth… /Library/Frameworks/R.framework/Versi… 0.2.1   <NA>      3.6.0
    ##  5 backports /Library/Frameworks/R.framework/Versi… 1.1.4   <NA>      3.6.0
    ##  6 base      /Library/Frameworks/R.framework/Versi… 3.6.0   base      3.6.0
    ##  7 base64enc /Library/Frameworks/R.framework/Versi… 0.1-3   <NA>      3.6.0
    ##  8 BH        /Library/Frameworks/R.framework/Versi… 1.69.0… <NA>      3.6.0
    ##  9 boot      /Library/Frameworks/R.framework/Versi… 1.3-22  recommen… 3.6.0
    ## 10 broom     /Library/Frameworks/R.framework/Versi… 0.5.2   <NA>      3.6.0
    ## # … with 161 more rows
