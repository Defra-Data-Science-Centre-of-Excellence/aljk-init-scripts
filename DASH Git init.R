# install fssetup if required ---------------------------------------------

# install fssetup from GitHub - this is pre-installed on the Farming Stats cluster 
devtools::install_github("Defra-Data-Science-Centre-of-Excellence/fssetup")


# connect to GitHub -------------------------------------------------------

# use fssetup for ease - update variables and follow instructions in console
fssetup::fs_connect_ssh(
  username = "EA-Ammar",
  email = "ammar.ljubijankic@environment-agency.gov.uk"
)


# customise RStudio IDE ---------------------------------------------------

## customise layout and preferences ----

# set desired pane layout (used below)
my_pane_layout <- list(
  quadrants = list("Source", "Console", "TabSet1", "TabSet2"),
  tabSet1 = list("Environment","Git","History", "Presentation"),
  tabSet2 = list("Files", "Plots", "Connections", "Packages", "Help", "Build", "Viewer"),
  hiddenTabSet = list(),
  console_left_on_top = FALSE,
  console_right_on_top = FALSE,
  additional_source_columns = 0
)

# customise RStudio
fssetup::customise_layout(
  always_save_history = FALSE, # don't auto save history
  save_workspace = "never", # don't save workspace
  load_workspace = FALSE, # don't load previous workspace
  restore_last_project = FALSE, # don't restore last opened project
  continue_comments_on_newline = TRUE, # when commenting, hitting enter continues comment on new line
  highlight_selected_line = TRUE, # highlight line cursor is on
  highlight_r_function_calls = TRUE, # highlight R function calls
  show_margin = FALSE, # don't show margin (default = 80 characters)
  rainbow_parentheses = TRUE, # colour match brackets
  color_preview = TRUE, # hexcode previews on
  panes = my_pane_layout # Pane layout as set above
)

## change theme ----

rstudioapi::applyTheme("Cobalt")

# clone required GitHub repos ---------------------------------------------

# DASH UC set-up
system("git clone git@github.com:Environment-Agency-Gov/water_res.git")
system("git clone git@github.com:Environment-Agency-Gov/permit_holding.git")
system("git clone git@github.com:Defra-Data-Science-Centre-of-Excellence/charging-impact.git")
