library(ggthemes)
library(data.table)
library(plyr)
library(dtplyr)
library(tidyverse)

find <- function(invec, outvec)
    invec %in% outvec

frequenciesdyn <- function(DTstr, xstr) {
    return(eval(parse(
        text = sprintf('plyr::count(%s, .(%s))', DTstr, xstr)
    )) %>%
        arrange(desc(freq)) %>%
        mutate(percent = 100 * freq / sum(freq)))
}

data("mtcars")

mtcars
frequenciesdyn("mtcars", "gear")

mkdgrph <- function(dtstr, colstr, howmany = 1000)
{
    str1 <- 'frequenciesdyn("%s", "%s")'
    nstr1 <- sprintf(str1, dtstr, colstr)
    slug <- eval(parse(text = nstr1)) # cols: colstr, freq, percent
    
    nrow <- sum(slug$freq)
    ncat <- nrow(slug)
    maxct <- max(slug$freq)
    
    str2 <- 'ggplot(slug,
    aes(y=freq, x=reorder(%s,freq), ymin=0, ymax=freq), col="blue") +
    theme_wsj()+
    geom_point(size=1, color="blue") +
    geom_linerange(size=.5, color="blue") +
    theme(plot.title = element_text(size = 10, colour="black"))+
    coord_flip() +
    theme(axis.text=element_text(size=rel(0.5)), axis.title=element_text(size=rel(0.6))) +
    geom_text(aes(label = paste(freq,round(percent,1)*.01, sep=":::"), vjust=-1.2, y=freq + 0.085*maxct), size = 2) +
    ggtitle(paste("%s\n", "%s: ", nrow, " records, ", ncat, " categories", sep=""))+
    ylab("frequency")+
    xlab("%s\n")'
    
    nstr2 <- sprintf(str2, colstr, dtstr, colstr, colstr)
    ######
    g1 <- eval(parse(text = nstr2))
    
    print(g1)
    
}

mkdgrph("mtcars", "carb")


# reference:
# http://www.dataversity.net/homicide-violent-crime-chicago-first-look-data-r/