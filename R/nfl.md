#nflscrapR snippet

```r
library(nflscrapR)
library(tidyverse)

pbp_2018 <- season_play_by_play(2018)

NO_DAL <-pbp_2018 %>% 
    filter(posteam=="NO"| posteam == "DAL") %>%
    filter(Touchdown =="1")

dat <- NO_DAL
table(dat$qtr, dat$Receiver)
table(dat$qtr, dat$Rusher)


passer <-pbp_2018 %>% 
    filter(posteam=="NO"| posteam == "DAL") %>%
    select(PassOutcome, qtr, Passer, Receiver) %>%
    filter(!is.na(Passer))

dat <- passer
table(dat$Receiver, dat$qtr, dat$PassOutcome)    
```