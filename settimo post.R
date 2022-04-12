library(ggplot2)
library(hrbrthemes)
library(readxl)
library(showtext)

# Carico Montserrat
font_add_google('Montserrat', family = 'Montserrat')
showtext_auto()
  
data <- read_excel("Dataset 7 post.xlsx")

ggplot(data, aes(y=panepasta, x=obesi, color=Regione))+
  geom_point(size=10,show.legend = F) +
  geom_text(aes(label = Regione),show.legend = F, nudge_y = 0.8,family = 'Montserrat',fontface = "bold") +
  labs(y = "Panepasta", x = "Obesi",family = 'Montserrat',fontface = "bold") +
  theme_minimal() 
