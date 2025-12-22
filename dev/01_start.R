# Building a Prod-Ready, Robust Shiny Application.
#
# README: each step of the dev files is optional, and you don't have to
# fill every dev scripts before getting started.
# 01_start.R should be filled at start.
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
#
#
########################################
#### CURRENT FILE: ON START SCRIPT #####
########################################

## Fill the DESCRIPTION ----
## Add meta data about your application and set some default {golem} options
##
## /!\ Note: if you want to change the name of your app during development,
## either re-run this function, call golem::set_golem_name(), or don't forget
## to change the name in the app_sys() function in app_config.R /!\
##
golem::fill_desc(
  pkg_name = "siawd",
  pkg_title = "Stress in Action Wearables Database App",
  pkg_description = "The official Stress in Action Wearables Database (SiA-WD) web application built with Shiny and {golem}. Provides interactive filtering, comparison, and export tools for wearable device data.",
  authors = person(
    given = "Hugo",
    family = "Klarenberg",
    email = "h.klarenberg@vu.nl",
    role = c("aut", "cre")
  ),
  repo_url = "https://github.com/HugoGit39/siawd",
  pkg_version = "0.0.0.9000",
  set_options = TRUE
)

## Install the required dev dependencies ----
golem::install_dev_deps()

## Create Common Files ----
## See ?usethis for more information
## License: CC BY-NC-ND 4.0 (noncommercial, no derivatives)
usethis::use_ccby_nc_nd_license("Stress in Action")
golem::use_readme_rmd(open = FALSE)
devtools::build_readme()
# Note that `contact` is required since usethis version 2.1.5
# If your {usethis} version is older, you can remove that param
usethis::use_code_of_conduct(contact = "h.klarenberg@vu.nl")
usethis::use_lifecycle_badge("Stable")
usethis::use_news_md(open = FALSE)

## Init Testing Infrastructure ----
## Create a template for tests
golem::use_recommended_tests()

## Favicon ----
# If you want to change the favicon (default is golem's one)
golem::use_favicon() # path = "path/to/ico". Can be an online file.
# golem::remove_favicon() # Uncomment to remove the default favicon

## Add helper functions ----
golem::use_utils_ui(with_test = TRUE)
golem::use_utils_server(with_test = TRUE)

## Use git ----
usethis::use_git()
usethis::use_git_remote(
  name = "origin",
  url = "https://github.com/HugoGit39/siawd"
)

#Packages
pkgs <- c(
  "shiny", "bs4Dash", "fresh", "dplyr", "rlang", "scales", "lubridate",
  "shinySearchbar", "shinyjs", "sever", "shinycssloaders",
  "shinyWidgets", "reactablefmtr", "reactable", "htmltools",
  "htmlwidgets", "writexl"
)

for (p in pkgs) usethis::use_package(p)

# You're now set! ----

# go to dev/02_dev.R
rstudioapi::navigateToFile("dev/02_dev.R")
