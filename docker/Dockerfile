FROM rocker/r-ver:4.1.2
   
RUN R -e "install.packages(c('devtools', 'tidyverse', 'janitor','shiny', 'targets', 'tarchetypes','quarto', 'shiny', 'testthat','usethis', 'rio'))"

RUN R -e "install.packages(c('devtools','fastmap','ggplot2'))"

RUN R -e "devtools::install_github('maxsinner5/RAPassignment', ref = 'd6ab9635289907443d4a83fa7526212d990c658a')"


RUN mkdir -p /code
RUN mkdir -p /output

COPY code/exo_planet_graph.R /code/exo_planet_graph.R

CMD R -e "source('/code/exo_planet_graph.R')"
