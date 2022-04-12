library(ggplot2)
library(hrbrthemes)
library(readxl)
library(showtext)
library(viridis)
library(grid)
library(ggtext)
library(ggrepel)

# Carico Montserrat

# font_add_google('Montserrat', family = 'Montserrat')
# showtext_auto()
  
data <- read_excel("Dataset 7 post.xlsx")
data$Zona = factor(data$Zona, levels = c('NordEst','NordOvest','Centro','Isole','Sud'), ordered = T)

ggplot(data, aes(y=panepasta, x = obesi, color = Zona)) +
  geom_point(size=3,show.legend = TRUE) +
  ylim(66.5,85) +
  geom_text_repel(aes(label = Regione),show.legend = F,
            family = 'Montserrat',fontface = "bold",size = 9.8, min.segment.length = 3,point.padding = unit(1,"lines")) +
  labs(y = "Pane e pasta", x = "% obesi",family = 'Montserrat',fontface = "bold") +
  scale_color_viridis(begin = 0.15,end = 0.65,direction = 1,discrete = TRUE, option = "F") +
  theme_minimal(base_size=34, base_family = 'Montserrat') +
  theme(axis.line = element_line(color='grey85'), panel.grid.minor = element_blank(),
       axis.title=element_text(face="bold"), legend.text = element_text(face="bold"),
      axis.text = element_text(face="bold")) +
  geom_hline(yintercept = mean(data$panepasta), col = 'grey40',lty = 2,lwd = 1.5) +
  geom_vline(xintercept = mean(data$obesi), col = 'grey40', lwd = 1.5, lty = 2)

# PER LEGENDA

ggplot(data, aes(y=panepasta, x = obesi, color = Zona)) +
  geom_point(size=1,show.legend = T) +
  geom_text_repel(aes(label = Regione),show.legend = T,family = 'Montserrat',fontface = "bold",size = 9.8) +
  labs(y = "Pane e pasta", x = "% obesi",family = 'Montserrat',fontface = "bold") +
  scale_color_viridis(begin = 0.15,end = 0.65,direction = 1,discrete = TRUE, option = "F") +
  theme_minimal(base_size=34, base_family = 'Montserrat') +
  theme(axis.line = element_line(color='grey85'), panel.grid.minor = element_blank(),
        axis.title=element_text(face="bold"), legend.text = element_text(face="bold"),
        axis.text = element_text(face="bold"))

