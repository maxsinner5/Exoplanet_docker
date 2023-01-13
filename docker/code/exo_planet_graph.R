library(ggplot2)
library(RAPassignment)

data("all_exoplanets_2021")

exoplanets <- exo_planets_data(all_exoplanets_2021, discovery_year, num_planets)

exoplanet_plot <- ggplot(exoplanets) +
  geom_col(aes(x = discovery_year, y= num_planets, fill = distance))  + 
  ylab("Number of Planets") +
  xlab("Discovery Year") +
  # theme(legend.title = element_text("Discovery Method")) + # better done using guides (previous line wasn't working for RK)
  guides(fill=guide_legend(title="Distance")) +
  labs(title = "Discoveries in Exoplanetary Sciences", 
       subtitle = "Number of Exoplanet Discoveries per year")



ggsave("exoplanet_plot.pdf", exoplanet_plot, width = 10, height = 8, dpi = 100)

