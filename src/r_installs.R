install.packages("Rcpp", repos="https://cloud.r-project.org")
options(Ncpus = parallel::detectCores() - 2)
install.packages(c(
    "arrow",
    "BH",
    "BiocManager",
    "brms",
    "cli",
    "cowplot",
    "crosstalk",
    "devtools",
    "dplyr",
    "DT",
    "gamm4",
    "gdalBindings",
    "ggnewscale",
    "ggplot2",
    "ggrepel",
    "glmmTMB",
    "gratia",
    "here",
    "janitor",
    "kableExtra",
    "lattice",
    "lazyeval",
    "leaflet",
    "lubridate",
    "mgcv",
    "nanoparquet",
    "nimble",
    "odbc",
    "openxlsx",
    "packrat",
    "plotly",
    "qgam",
    "raster",
    "renv",
    "reticulate",
    "rlang",
    "RPostgres",
    "rsconnect",
    "rstudioapi",
    "sf",
    "shinycssloaders",
    "shinydashboard",
    "shinyjs",
    "snakecase",
    "srvyr",
    "stringr",
    "svglite",
    "tidyr",
    "tictoc",
    "tmap",
    "viridis",
    "writexl",
    "zoo",
    "corrplot",
    "cowplot",
    "DHARMa",
    "gclus",
    "GGally",
    "gratia",
    "gstat",
    "lme4",
    "multcomp",
    "naniar",
    "ordbetareg",
    "performance",
    "pscl",
    "psych",
    "reshape",
    "rgl",
    "rnaturalearth",
    "vegan",
    "visdat",
    "connectapi",
    "gllvm",
    "brickster"
), repos="https://cloud.r-project.org")

install.packages("here") # To set project folder dynamically
install.packages("remotes") # Makes it possible to load github package where necesary
install.packages("knitr") # Needed to knit markdown
install.packages("tidyverse") # Whole tidyverse package
install.packages("lubridate") # Tideyverse date manipulations
install.packages("scales") # For scales in ggplots
install.packages("ggplot2") # Used for making main charts
install.packages("nomisr") # Downloading data from Nomis
install.packages("devtools") # Allows downloading ggla packages
install.packages("data.table") # Data table utility
install.packages("janitor") # Cleaning up date files
install.packages("ggrepel") # Used to repel overlapping text in charts [used in gglaplot?]
install.packages("plotly") # Interactive charts
install.packages("leaflet") # Interactive maps
install.packages("leafsync")# Syncing two maps next to each other
#install.packages("rgdal") # Needed for geospatial manipulations
install.packages("httr") # Quering websites to check if data exists
install.packages("flextable") # Summary headline stats table
install.packages("officer") # for fp_text
install.packages("extrafont") #Fonts for the flextable
install.packages("svDialogs") #for pop-ups
install.packages("sf") # for geometry
install.packages("reactable") #For interactive tables
install.packages("openxlsx") #For exporting
install.packages("svglite") # this should not be necessary
install.packages("labelled") # for labels on variables
install.packages("RColorBrewer") # for color palettes
devtools::install_github("ammar-gla/gglaplot") # GLA plotting functions - TO BE CHANGED INTO EA
install.packages("shiny") # to create shiny applications
install.packages("shinydashboard") # easy dashboards
install.packages("rsconnect") # To deploy shiny
install.packages("fresh") # change the theme colors of Shinydashboard

# install.packages("remotes")
remotes::install_github("TimTeaFan/dplyover")