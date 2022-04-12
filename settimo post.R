library(ggplot2)
library(hrbrthemes)
library(readxl)
library(showtext)

# Carico Montserrat
font_add_google('Montserrat', family = 'Montserrat')
showtext_auto()
  
data <- read_excel("Dataset 7 post.xlsx")

ggplot(data, aes(y=panepasta, x = obesi, color = Zona)) +
  geom_point(size=10,show.legend = F) +
  geom_text(aes(label = Regione),show.legend = F, nudge_y = 0.8,family = 'Montserrat',fontface = "bold",size = 6) +
  labs(y = "Pane e pasta", x = "% obesi",family = 'Montserrat',fontface = "bold") +
  scale_fill_brewer(palette = 'Spectral', aesthetics = "colour", type = 'qual') +
  theme_minimal(base_size=20, base_family = 'Montserrat.bold') 

RColorBrewer::display.brewer.all()
