## ---------------------------
# Macro theme with tick marks 
theme_macro2 <- function() {
  font <- "Georgia"
  theme(
    plot.title = element_text(size=30, family = font, 
                              face = 'bold'),
    # # add border 1)
    panel.border = element_rect(colour = "#c9c9c9", fill = NA, linetype = 1),
    # # color background 2)
    panel.background = element_rect(fill = "white", colour = NA),
    # panel.background = element_rect(fill = "aliceblue"),
    # modify grid 3)
    #grid elements
    panel.grid.major = element_blank(),    #strip major gridlines
    panel.grid.minor = element_blank(),    #strip minor gridlines
    # modify text, axis and colour 4) and 5)
    axis.text = element_text(colour = "black",  family = font , 
                             size = 15),
    # length of tick marks - negative sign places ticks inwards
    # width of tick marks in mm
    axis.ticks.length=unit(-0.15, "cm"), 
    axis.ticks = element_line(colour = "#c9c9c9"),
    axis.text.x = element_text(angle = 90, margin=unit(c(0.5,0.5,0.5,0.5), "cm")), 
    axis.text.y = element_text(margin=unit(c(0.5,0.5,0.5,0.5), "cm")),
    axis.text.y.left = element_blank(),
    # adjust Y-axis title
    # axis.title.y = element_text(size = 10, face = "bold"),
    # adjust Y-axis labels
    axis.title = element_blank(),
    axis.line = element_line(color = '#c9c9c9'),
    # legend at the bottom 6)
    # legend.position = "none",
    legend.text=element_text(size=12, family = font),
    legend.title=element_text(size=12, family = font),
    plot.title.position = 'plot',
    plot.caption.position =  "plot",
    plot.caption = element_text(#caption
      family = "Georgia",     #font family
      size = 15,              #font size
      hjust = 0,
      face = 'italic')             #right align
  )
}


## ---------------------------
# Macro theme with tick marks 
theme_macro3 <- function() {
  font <- "Georgia"
  theme(
    plot.title = element_text(size=30, family = font, 
                              face = 'bold'),
    # # add border 1)
    panel.border = element_rect(colour = "#c9c9c9", fill = NA, linetype = 1),
    # # color background 2)
    panel.background = element_rect(fill = "white", colour = NA),
    # panel.background = element_rect(fill = "aliceblue"),
    # modify grid 3)
    #grid elements
    panel.grid.major = element_blank(),    #strip major gridlines
    panel.grid.minor = element_blank(),    #strip minor gridlines
    # modify text, axis and colour 4) and 5)
    axis.text = element_text(colour = "black",  family = font , 
                             size = 12),
    # length of tick marks - negative sign places ticks inwards
    # width of tick marks in mm
    axis.ticks.length=unit(-0.15, "cm"), 
    axis.ticks = element_line(colour = "#c9c9c9"),
    axis.text.x = element_text(angle = 90, margin=unit(c(0.5,0.5,0.5,0.5), "cm")), 
    axis.text.y = element_text(margin=unit(c(0.5,0.5,0.5,0.5), "cm")),
    axis.text.y.left = element_blank(),
    # adjust Y-axis title
    # axis.title.y = element_text(size = 10, face = "bold"),
    # adjust Y-axis labels
    axis.title = element_blank(),
    axis.line = element_line(color = '#c9c9c9'),
    strip.text = element_text(size = 10, family = font), 
    strip.background = element_blank(),
    # legend at the bottom 6)
    # legend.position = "none",
    legend.text=element_text(size=12, family = font),
    legend.title=element_text(size=12, family = font),
    plot.title.position = 'plot',
    plot.caption.position =  "plot",
    plot.caption = element_text(#caption
      family = "Georgia", #font family
      size = 14, #font size
      hjust = 0,
      face = 'italic')    #right align
  )
}

theme_macro4 <- function() {
  font <- "Georgia"
  theme(
    plot.title = element_text(size=30, family = font, 
                              face = 'bold'),
    # # add border 1)
    panel.border = element_rect(colour = "#c9c9c9", fill = NA, linetype = 1),
    # # color background 2)
    panel.background = element_rect(fill = "white", colour = NA),
    # panel.background = element_rect(fill = "aliceblue"),
    # modify grid 3)
    #grid elements
    panel.grid.major = element_blank(),    #strip major gridlines
    panel.grid.minor = element_blank(),    #strip minor gridlines
    # modify text, axis and colour 4) and 5)
    axis.text = element_text(colour = "black",  family = font , 
                             size = 12),
    # length of tick marks - negative sign places ticks inwards
    # width of tick marks in mm
    axis.ticks.length=unit(-0.15, "cm"), 
    axis.ticks = element_line(colour = "#c9c9c9"),
    axis.text.x = element_text(angle = 90, margin=unit(c(0.5,0.5,0.5,0.5), "cm")), 
    axis.text.y = element_text(margin=unit(c(0.5,0.5,0.5,0.5), "cm")),
    axis.text.y.left = element_blank(),
    # adjust Y-axis title
    # axis.title.y = element_text(size = 10, face = "bold"),
    # adjust Y-axis labels
    axis.title = element_blank(),
    axis.line = element_line(color = '#c9c9c9'),
    # legend at the bottom 6)
    # legend.position = "none",
    legend.text=element_text(size=12, family = font),
    legend.title=element_text(size=12, family = font),
    plot.title.position = 'plot',
    plot.caption.position =  "plot",
    plot.caption = element_text(#caption
      family = "Georgia",     #font family
      size = 10,              #font size
      hjust = 0,
      face = 'italic')             #right align
  )
}
