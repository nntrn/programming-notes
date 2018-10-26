# google: tidyverse workflow

library(RCurl)

library(lubridate)
library(tidyverse)

# https://github.com/rfordatascience/tidytuesday/tree/master/data/2018-10-23
URL <- "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2018-10-23/movie_profit.csv"

movies <- read.csv(text=getURL(URL))

write.csv(movies, file = "movies.csv",row.names = FALSE)


movies <- read_csv("movies.csv",
  col_types = cols(
    release_date = col_date("%m/%d/%Y")
  )
)
movies$X <- NULL

movies <- movies %>% unique()

date_filter <- as.Date("2000-01-01")

movies2 <- movies %>%
    filter(release_date >= date_filter)
    
# data exploration  --------------------------------------------

movies %>%
   # filter(release_date >= date_filter) %>%
    ggplot(aes(release_date)) + 
    geom_histogram(binwidth = 365)

movies %>%
    filter(release_date >= date_filter) %>%
    group_by(genre, year = floor_date(release_date, "year")) %>%
    summarise(n=n()) %>%
    ggplot(aes(year, n, colour=genre)) + geom_line()


# see all movies containing Predator
movies %>%
    filter(str_detect(movie, "Predator")) %>%
    View()


# $$$ --------------------------------------------------------------------------------------

movies %>%
    #filter(release_date >= date_filter) %>%
    ggplot(aes(production_budget / 1e6)) + 
    geom_histogram(binwidth = 1)

movies %>%
    #filter(release_date >= date_filter) %>%
    ggplot(aes((production_budget / 1e6) %% 10)) + 
    geom_histogram(binwidth = 1)

# filter by production_budget
movies %>%
    #filter(release_date >= date_filter) %>%
    filter(production_budget > 120e6) %>%
    ggplot(aes(production_budget / 1e6)) + 
    geom_histogram(binwidth = 1)

# BEWARE OF FLOATING POINT DIFFERENCES
tibble(
    x=seq(0, 1, length=11), 
    x3 = 0.3, 
    x - x3)

movies %>%
    filter(production_budget > 150e6) %>%
    select(1:4) %>%
    View()

movies2 %>%
    filter(production_budget > 120e6) %>%
    ggplot(aes(production_budget / 1e6)) + 
    geom_histogram(binwidth = 10) +
    xlim(100,200)


# more appropriate for communication
movies2 %>%
   # filter(release_date >= date_filter) %>%
    ggplot(aes(production_budget)) + 
    geom_histogram(bins = 30) +
    scale_x_continuous(labels = scales::unit_format(scale=1e-6))

# are dollars adjusted for inflation?
movies2 %>%
    ggplot(aes(release_date, production_budget)) +
    geom_point() +
    geom_smooth()


movies2 %>%
    ggplot(aes(domestic_gross / 1e6)) +
    geom_histogram(binwidth = 10)
    

# predict: very little relationship
# challenge: all the data (basically) is in the bottom left corner
# use boxplot to see this relationship better

movies2 %>%
  ggplot(aes(production_budget / 1e6, domestic_gross / 1e6)) +
  # geom_point(alpha = 1 / 10)
  geom_jitter(alpha = 1 / 10, stroke = 0, size = 3, width = 5) +
  geom_smooth()
# coord_cartesian(expand = FALSE)

movies2 %>%
    ggplot(aes(
        production_budget / 1e6, 
        domestic_gross / 1e6, 
        #group = (production_budget / 1e6) * 10
        group = plyr::round_any(production_budget, 10e6)
        )) +
    geom_boxplot()+
    facet_wrap(~ genre)

# budget < gross -> gross / budget in (1, oo) - (0, oo)
# budget > gross -> gross / budget in [0, 1) (-oo, 0)

movies2 %>%
   # ggplot(aes(domestic_gross / production_budget)) +
    ggplot(aes(worldwide_gross / production_budget)) +
    geom_histogram(binwidth = .1) +
    geom_vline(xintercept = 1) +
    # make it symmetrical
    scale_x_log10()

    
movies2 %>%
  filter(worldwide_gross / production_budget > 1) %>%
  ggplot(aes(worldwide_gross / production_budget)) +
  geom_histogram(boundary = 0, binwidth = 1) +
  geom_vline(xintercept = 1) +
  coord_trans(x = "log10")


# notes -----
# ggplot2 extensions
# http://www.ggplot2-exts.org/gallery/

# tidyverse developer day 2019

# tidy evaluation
# https://tidyeval.tidyverse.org/
# https://edwinth.github.io/blog/dplyr-recipes/

# programming recipes (dplyr)
# https://dplyr.tidyverse.org/articles/programming.html



