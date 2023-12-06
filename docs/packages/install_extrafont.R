

# library(installr)
# installr::uninstall.packages('extrafont')
# installr::uninstall.packages('extrafontdb')

# Sys.setenv(R_GSCMD="C:/Program Files/gs/gs9.05/bin/gswin32c.exe")
library(extrafont)
library(extrafontdb)
library(Rttf2pt1 )
install.packages()
remove.packages('Rttf2pt1')
library(remotes)
remotes::install_version("Rttf2pt1", version = "1.3.8")
extrafont::font_import()

font_import(paths = "C:/Users/urUserName/AppData/")
font_import()
y
loadfonts(device="win",quiet=TRUE)
loadfonts()
windowsFonts()
loadfonts(device="postscript")
fonts()
fonttable()



# font_import(paths = "C:/WINDOWS/FONTS/")
# y
# font_import(paths = NULL, recursive = TRUE, prompt = TRUE,pattern = NULL)


# library(showtext)
# https://fonts.google.com/featured/Superfamilies
# font_add_google("Montserrat", "Montserrat")
# font_add_google("Roboto", "Roboto")

# font_add_google("Lato", "Lato")
# Check the current search path for fonts
# font_paths()    
#> [1] "C:\\Windows\\Fonts"

# List available font files in the search path
# font_files()    


# syntax: font_add(family = "<family_name>", regular = "/path/to/font/file")
# font_add("Palatino", "pala.ttf")

# font_families()
## automatically use showtext for new devices
# showtext_auto() 
# https://github.com/yixuan/showtext/issues/7
# https://journal.r-project.org/archive/2015-1/qiu.pdf
# `x11()` on Linux, or `quartz()` on Mac OS
# windows()
# x11()