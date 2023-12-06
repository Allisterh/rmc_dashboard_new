library(extrafont)
library(extrafontdb)
library(Rttf2pt1 )

myFont1 <- "Montserrat"
myFont2 <- "Roboto"
myFont3 <- "Palatino"

my_theme<- \() {
  theme(text = element_text(family = "Rockwell", size = 15, 
                                    color = "black"),
        title = element_text(size = 15, vjust = 0.4, hjust = 0.7),
        axis.text = element_text(colour = "black", size = 15),
        axis.text.x = element_text(angle = 60,vjust = 0.6),
        legend.text = element_text(size = 15),
         plot.caption.position =  "plot",
         plot.title.position = "plot",
         plot.caption = element_text(hjust = 0, face= "italic"))
}

theme_facet<-\(){theme(text = element_text(family = "Rockwell", size = 15, 
                                       color = "black"),
                   title = element_text(size = 15, vjust = 0.4, hjust = 0.7),
                   axis.text = element_text(colour = "black", size = 10),
                   axis.text.x = element_text(angle = 60,vjust = 0.6),
                   legend.text = element_text(size = 15))

}

# font11 <- "Georgia"
# font12<-"Lato"
theme_macro1<- function() {
  theme(
    # # add border 1)
    # panel.border = element_rect(colour = "blue", fill = NA, linetype = 2),
    # # color background 2)
    panel.background = element_rect(fill = "white", colour = NA),
    # panel.background = element_rect(fill = "aliceblue"),
    # modify grid 3)
    #grid elements
    panel.grid.major = element_blank(),    #strip major gridlines
    panel.grid.minor = element_blank(),    #strip minor gridlines
    # modify text, axis and colour 4) and 5)
    axis.text = element_text(colour = "black",  family = "Lato", size = 10),
    axis.title = element_blank(),
    axis.ticks = element_line(colour = "black"),
    axis.text.x = element_text(angle = 90,vjust = 0.6),
    # legend at the bottom 6)
    # legend.position = "none",
    plot.title.position = 'plot',
    plot.caption.position =  "plot",
    plot.caption = element_text(#caption
      family = "Lato",     #font family
      size = 10,              #font size
      hjust = 0),             #right align
  )
}

## -----------------------------------------------------------------------------
# Macro theme with tick marks 
theme_macro2 <- function() {
  font <- "Georgia"
  theme(
    plot.title = element_text(size=30, family = font, 
                              face = 'bold'),
    # # add border 1)
    panel.border = element_rect(colour = "black", fill = NA, linetype = 1),
    # # color background 2)
    panel.background = element_rect(fill = "white", colour = NA),
    # panel.background = element_rect(fill = "aliceblue"),
    # modify grid 3)
    #grid elements
    panel.grid.major = element_blank(),    #strip major gridlines
    panel.grid.minor = element_blank(),    #strip minor gridlines
    # modify text, axis and colour 4) and 5)
    axis.text = element_text(colour = "black",  family = font , 
                             size = 20),
    # length of tick marks - negative sign places ticks inwards
    # width of tick marks in mm
    axis.ticks.length=unit(-0.15, "cm"), 
    axis.ticks = element_line(colour = "black"),
    axis.text.x = element_text(angle = 90, margin=unit(c(0.5,0.5,0.5,0.5), "cm")), 
    axis.text.y = element_text(margin=unit(c(0.5,0.5,0.5,0.5), "cm")),
    # adjust Y-axis title
    # axis.title.y = element_text(size = 10, face = "bold"),
    # adjust Y-axis labels
    axis.title = element_blank(),
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

#===============================================================================
#Executive theme with no grid lines but x and y axis included and no ticks
theme_executive <- function(base_size = 12, font = "Segoe UI"){
  
  bg_colour <- "#FFFFFF"
  bg_colour2 <- "#CCCCCC" # light grey
  text_colour <- "grey40"
  
  text_small_dark <- element_text(size = base_size - 2, colour = text_colour, face = "plain")
  text_small_light <- element_text(size = base_size - 2, colour = "#FFFFFF", face = "plain")
  text_normal <- element_text(size = base_size + 2, colour = text_colour, face = "plain")
  text_italic <- element_text(size = base_size + 2, colour = text_colour, face = "italic")
  
  text_bold <- element_text(size = base_size + 2, colour = text_colour, face = "bold")
  text_title <- element_text(size = base_size + 8, colour = text_colour, face = "bold")
  
  theme_minimal(base_family = font) +
    theme(plot.background = element_rect(fill = bg_colour),
          text = text_normal,
          plot.title = text_title,
          plot.subtitle = text_italic,
          
          axis.title = text_normal,
          axis.text = text_small_dark,
          
          legend.title = text_small_dark,
          legend.text = text_small_dark) +
    
    theme(axis.line = element_line(colour = "grey20"),
          axis.ticks = element_blank(),
          
          legend.position = "bottom",
          legend.title = element_blank(),
          
          panel.grid = element_blank(),
          strip.background = element_rect(fill = bg_colour2, colour = bg_colour2),
          strip.text = text_small_dark)
}

#===============================================================================
# with y axis grid-lines only
bbc_style <- function() {
  font <- "Georgia"
  
  ggplot2::theme(
    
    #Text format:
    #This sets the font, size, type and colour of text for the chart's title
    plot.title = ggplot2::element_text(family=font,
                                       size=28,
                                       face="bold",
                                       color="#222222"),
    #This sets the font, size, type and colour of text for the chart's subtitle, as well as setting a margin between the title and the subtitle
    plot.subtitle = ggplot2::element_text(family=font,
                                          size=22,
                                          margin=ggplot2::margin(9,0,9,0)),
    
    
    plot.caption = element_text(size = 13, hjust = 0, face = 'italic',
                                family = 'Georgia'),
    plot.caption.position =  "plot", 
    # plot.caption = ggplot2::element_blank(),
    #This leaves the caption text element empty, because it is set elsewhere in the finalise plot function
    
    #Legend format
    #This sets the position and alignment of the legend, removes a title and backround for it and sets the requirements for any text within the legend. The legend may often need some more manual tweaking when it comes to its exact position based on the plot coordinates.
    legend.position = "top",
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(family=font,
                                        size=18,
                                        color="#222222"),
    
    #Axis format
    #This sets the text font, size and colour for the axis test, as well as setting the margins and removes lines and ticks. In some cases, axis lines and axis ticks are things we would want to have in the chart - the cookbook shows examples of how to do so.
    axis.title = ggplot2::element_blank(),
    axis.text = ggplot2::element_text(family=font,
                                      size=18,
                                      color="#222222"),
    axis.text.x = ggplot2::element_text(margin=ggplot2::margin(5, b = 10)),
    axis.ticks = ggplot2::element_blank(),
    axis.line = ggplot2::element_blank(),
    
    #Grid lines
    #This removes all minor gridlines and adds major y gridlines. In many cases you will want to change this to remove y gridlines and add x gridlines. The cookbook shows you examples for doing so
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(color="#cbcbcb"),
    panel.grid.major.x = ggplot2::element_blank(),
    
    #Blank background
    #This sets the panel background as blank, removing the standard grey ggplot background colour from the plot
    panel.background = ggplot2::element_blank(),
    
    #Strip background (#This sets the panel background for facet-wrapped plots to white, removing the standard grey ggplot background colour and sets the title size of the facet-wrap title to font size 22)
    strip.background = ggplot2::element_rect(fill="white"),
    strip.text = ggplot2::element_text(size  = 22,  hjust = 0)
  )
}

#===============================================================================
# theme with solid X axis and Y grid-lines
theme_tuo <- function(...){
  # library(showtext)
  # font_add_google("Georgia", "Georgia")
  # showtext_auto()
  font <- "Georgia"
  ggplot2::theme(
    text = element_text(family = "Georgia", size = 8, color = "black"),
    
    plot.title = element_text(family = "Georgia", size = 15,
                              face = "bold", color="#222222"),
    
    plot.title.position = "plot",
    
    plot.subtitle = element_text(family = "Georgia", size = 10,
                                 face = "bold", color="#222222"),
    plot.caption = element_text(size = 10, hjust = 0, face = 'italic',
                                family = 'Georgia'),
    plot.caption.position =  "plot", 
    
    #Deal with the axix text and titles
    axis.title = element_text(size=15,family = "Georgia",colour = 'black'),
    axis.text = element_text(family = "Georgia", size =12, 
                             colour = 'black'),
    
    axis.title.y = element_text(face="bold", angle=90),
    axis.text.y = element_text( color = "black"),
    
    axis.title.x = element_text(face="bold"),
    axis.text.x = element_text(color = "black"),
    
    #Deal with the axis lines
    axis.line.x = element_line(colour = "black", linetype = "solid",
                               lineend = 'round'),
    
    axis.line.y = element_blank(),
    axis.ticks = element_blank(),
    
    rect = element_blank(),
    # panel.grid = element_line(color = "#b4aea9"),
    # panel.grid.minor = element_blank(),
    # panel.grid.major.x = element_blank(),
    
    
    # Grid lines
    #This removes all minor gridlines and adds major y gridlines. 
    # In many cases you will want to change this to remove y gridlines 
    # and add x gridlines. The cookbook shows you examples for doing so
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(color="#cbcbcb",
                                               linetype = 'solid', lineend = 'round'),
    # panel.grid.major.y = element_line(linetype="dashed"),
    panel.grid.major.x = ggplot2::element_blank(),
    #This sets the panel background as blank, removing the standard grey ggplot background colour from the plot
    panel.background = ggplot2::element_blank(),
    # plot.background = element_rect(fill = '#fbf9f4', 
    #                                  color = '#fbf9f4')
  )
}


#===============================================================================
# theme with Y and X axis and grid-line on Y and X axis 
theme_fira <- function(family = "Georgia") {
  ggplot2::`%+replace%`(
    ggplot2::theme_grey(base_size = 11.5, base_family = family),
    ggplot2::theme(
      # add padding to the plot
      plot.margin = grid::unit(rep(0.5, 4), "cm"),
      
      # remove the plot background and border
      plot.background = ggplot2::element_blank(),
      panel.background = ggplot2::element_blank(),
      panel.border = ggplot2::element_blank(),
      
      # make the legend and strip background transparent
      legend.background = ggplot2::element_rect(fill = "transparent",
                                                colour = NA),
      legend.key = ggplot2::element_rect(fill = "transparent",colour = NA),
      strip.background = ggplot2::element_rect(fill = "transparent",
                                               colour = NA),
      
      # add light, dotted major grid lines only
      panel.grid.major = ggplot2::element_line(linetype = "dotted",
                                               colour = "#454545",
                                               size = 0.3),
      panel.grid.minor = ggplot2::element_blank(),
      
      # remove the axis tick marks and hide axis lines
      axis.ticks = ggplot2::element_blank(),
      axis.line = ggplot2::element_line(color = "#454545", size = 0.3),
      
      # modify the bottom margins of the title and subtitle
      plot.title = ggplot2::element_text(size = 18, colour = "#454545",
                                         hjust = 0.5,
                                         margin = ggplot2::margin(b = 10)),
      plot.subtitle = ggplot2::element_text(size = 12, colour = "#454545",
                                            hjust = 0.5,
                                            margin = ggplot2::margin(b = 10)),
      
      # add padding to the caption
      plot.caption = ggplot2::element_text(size = 10, colour = "#454545",
                                           hjust = 1,
                                           margin = ggplot2::margin(t = 15)),
      
      # Adjust text size and axis title position
      axis.title = ggplot2::element_text(size = 13, colour = "#454545",
                                         hjust = 0.95),
      axis.text = ggplot2::element_text(size = 10, colour = "#212121"),
      legend.title = ggplot2::element_text(size = 12, colour = "#454545"),
      legend.text = ggplot2::element_text(size = 10, colour = "#454545"),
      strip.text = ggplot2::element_text(size = 12, colour = "#454545", 
                                         margin = ggplot2::margin(10, 10, 
                                                                  10, 10, 
                                                                  "pt"))
    )
  )
}

#===============================================================================

#Define gppr_theme() function
#theme with dashed grid-lines on the Y axis
theme_gppr <- function(){ 
  font <- "Georgia"   #assign font family up front
  
  theme_minimal() %+replace%    #replace elements we want to change
    
    theme(
      
      #grid elements
      panel.grid.major = element_line(
        colour = "grey",
        size = 0.5,
        linetype = 2
      ),    #strip major gridlines
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank(),    #strip minor gridlines
      axis.ticks = element_blank(),          #strip axis ticks
      
      #since theme_minimal() already strips axis lines, 
      #we don't need to do that again
      
      #text elements
      plot.title = element_text(             #title
        family = font,            #set font family
        size = 20,                #set font size
        face = 'bold',            #bold typeface
        hjust = 0,                #left align
        vjust = 2),               #raise slightly
      
      plot.subtitle = element_text(          #subtitle
        family = font,            #font family
        size = 14),               #font size
      
      plot.caption = element_text(           #caption
        family = font,            #font family
        size = 9,                 #font size
        hjust = 1),               #right align
      
      axis.title = element_text(             #axis titles
        family = font,            #font family
        size = 10),               #font size
      
      axis.text = element_text(              #axis text
        family = font,            #axis famuly
        size = 9),                #font size
      
      axis.text.x = element_text(            #margin for axis text
        margin=margin(5, b = 10))
      
      #since the legend often requires manual tweaking 
      #based on plot content, don't define it here
    )
}

#===============================================================================
#theme with dashed grid-lines on the Y axis

theme_gppr2 <- function(){ 
  font <- "Georgia"   #assign font family up front
  
  theme_minimal() %+replace%    #replace elements we want to change
    
    theme(
      # panel.background = element_rect(fill = "transparent"), # bg of the panel
      plot.background = element_rect(fill = "transparent", 
                                     color = NA), # bg of the plot
      ###################################################################    
      #grid elements
      panel.grid.major = element_line(
        colour = "#d9d9d9",
        size = 0.5,
        linetype = 2),  #strip major grid-lines
      panel.grid.major.x = element_line(colour = "#d9d9d9",
                                        size = 0.5,
                                        linetype = 2),
      panel.grid.minor =element_blank(), #strip minor gridlines
      axis.ticks = element_blank(),   #strip axis ticks
      
      axis.line= element_line(linetype = 1, color = 'black',
                              lineend = 'round'),
      #text elements
      plot.title = element_text(  #title
        family = font,  #set font family
        size = 15,      #set font size
        face = 'bold',  #bold typeface
        hjust = 0,      #left align
        vjust = 2),      #raise slightly
      
      plot.subtitle = element_text( #subtitle
        family = font,             #font family
        size = 14),                #font size
      
      plot.caption = element_text(#caption
        family = font,            #font family
        size = 12,                 #font size
        hjust = 1),               #right align
      
      axis.title = element_text(  #axis titles
        family = font,            #font family
        size = 15,                #font size
        colour = '#0d0d0d'), 
      
      axis.text = element_text( #axis text
        family = font,          #axis family
        size = 12,              #font size
        colour = '#0d0d0d'),              
      
      axis.text.x = element_text( #margin for axis text
        margin=margin(5, b = 10)),
      
      legend.position = "bottom",
      legend.text.align = 0,
      legend.background = ggplot2::element_blank(),
      legend.title = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(family=font,
                                          size=12,
                                          color="#222222")
    )}


# # legend.background = element_rect(fill = "transparent"), # get rid of legend bg
#   legend.box.background = element_rect(fill = "transparent"), # get rid of legend panel bg
#   legend.position = 'bottom', 
#   legend.background = ggplot2::element_blank(),
#   legend.background = theme_rect(col = 0),
#   legend.key = ggplot2::element_blank()
#===============================================================================
theme_grido <- function(){ 
  font <- "Georgia"   #assign font family up front
  
  theme_minimal() %+replace%    #replace elements we want to change
    
    theme(
      #panel.background = element_rect(fill = "transparent"), # bg of the panel
      #panel.border = element_rect(colour =  "#d9d9d9" ),
      plot.background = element_rect(fill = "transparent", 
                                     color = NA), # bg of the plot
      panel.spacing = ggplot2::unit(6L, "pt"),
      panel.spacing.x = NULL,
      panel.spacing.y = NULL,
      panel.background = element_rect(colour = "#d9d9d9", 
                                      size= 0.5),
      ###################################################################    
      #grid elements
      panel.grid.major = element_line(
        colour = "#d9d9d9",
        size = 0.5,
        linetype = 1),  #strip major grid-lines
      panel.grid.major.x = element_line(colour = "#d9d9d9",
                                        size = 0.5,
                                        linetype = 1),
      panel.grid.minor =element_blank(), #strip minor grid-lines
      panel.grid.major.y = ggplot2::element_line(colour = "#dedddd"),
      
      # axis.ticks = element_blank(),   #strip axis ticks
      # length of tick marks - negative sign places ticks inwards
      axis.ticks.length.x = unit(1.4, "mm"),
      axis.ticks.y =  element_blank(),
      # width of tick marks in mm
      axis.ticks = element_line(size = .3),
      
      axis.line = ggplot2::element_line(),
      axis.line.x = element_line(colour = 'black',
                                 linetype = 'solid'),
      axis.line.y = element_blank() ,
      
      
      #text elements
      plot.title = element_text(  #title
        family = font,  #set font family
        size = 15,      #set font size
        face = 'bold',  #bold typeface
        hjust = 0,      #left align
        vjust = 2),     #raise slightly
      
      plot.subtitle = element_text( #subtitle
        family = font,             #font family
        size = 14),                #font size
      
      plot.caption = element_text(#caption
        family = font,            #font family
        size = 12,                #font size
        hjust = 1),               #right align
      
      axis.title = element_text(  #axis titles
        family = font,            #font family
        size = 15,                #font size
        colour = '#0d0d0d'), 
      
      axis.text = element_text( #axis text
        family = font,          #axis family
        size = 12,              #font size
        colour = '#0d0d0d'),              
      
      axis.text.x = element_text( #margin for axis text
        margin=margin(5, b = 10)),
      
      
      legend.position = "bottom",
      legend.text.align = 0,
      legend.background = ggplot2::element_blank(),
      legend.title = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(family=font,
                                          size=12,
                                          color="#222222")
    )}




# Calling expression() Function
x <- expression(sin(pi / 2))
x
