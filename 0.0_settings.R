##### my packages ################################################################################
## CRAN
cran.packages <- c('ggplot2','gridExtra','viridis','plyr','reshape2','lubridate','readxl','zoo','lubridate','shiny','plotly')
install.this <- cran.packages[!(cran.packages %in% utils::installed.packages()[,"Package"])]
if(length(install.this)>1) install.packages(install.this)
dummy <- lapply(cran.packages, require, character.only = TRUE)

## github
git.packages <- c('catchR')
install.this <- git.packages[!(git.packages %in% utils::installed.packages()[,"Package"])]
if('catchR' %in% install.this)  devtools::install_github("iml-assess/catchR")
dummy <- lapply(git.packages, require, character.only = TRUE)

##### my directories ################################################################################
dir.ctd <- 'data/ctd/'                  # dir to store ctd data 
dir.icht <- 'data/icht/'                # dir to store ichtyo data d

##### my ggplot theme ################################################################################
theme_set(theme_mackerel())             # theme_mackerel from catchR

