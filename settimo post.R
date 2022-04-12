library(ggplot2)
library(hrbrthemes)
library(readxl)
library(showtext)
library(viridis)

# Carico Montserrat
font_add_google('Montserrat', family = 'Montserrat')
showtext_auto()
  
data <- read_excel("Dataset 7 post.xlsx")
data$Zona = factor(data$Zona, levels = c('NordEst','NordOvest','Centro','Isole','Sud'), ordered = T)

ggplot(data, aes(y=panepasta, x = obesi, color = Zona)) +
  geom_point(size=10,show.legend = F) +
  geom_text(aes(label = Regione),show.legend = F, nudge_y = 0.8,family = 'Montserrat',fontface = "bold",size = 6) +
  labs(y = "Pane e pasta", x = "% obesi",family = 'Montserrat',fontface = "bold") +
  scale_color_viridis(begin = 0.1,end = 0.7,direction = 1,discrete = TRUE, option = "B") +
  #scale_color_viridis(begin = 0.2,end = 0.8,direction = 1,discrete = TRUE, option = "C") +
  theme_minimal(base_size=20, base_family = 'Montserrat') 

RColorBrewer::display.brewer.all()
