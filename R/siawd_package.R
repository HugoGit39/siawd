#' siawd: Stress in Action Wearables Database App
#'
#' This package contains the Shiny application for the
#' Stress in Action Wearables Database (SiA-WD).
#'
#' @docType package
#' @name siawd
#'
#' @import shiny
#' @importFrom bs4Dash bs4DashNavbar dashboardPage dashboardSidebar dashboardBody
#' @importFrom bs4Dash dashboardControlbar controlbarMenu controlbarItem
#' @importFrom bs4Dash bs4Card navbarMenu navbarTab dashboardFooter tabItems tabItem actionButton
#' @importFrom bs4Dash dropdownHeader cardSidebar updateNavbarTabs accordion accordionItem
#' @importFrom fresh create_theme bs4dash_layout bs4dash_status bs4dash_color
#' @importFrom dplyr filter arrange distinct bind_rows left_join %>% between recode
#' @importFrom lubridate year
#' @importFrom shinyjs useShinyjs disable enable toggleState runjs
#' @importFrom shinyWidgets switchInput prettyCheckbox updatePrettyCheckbox
#'   updateSwitchInput airDatepickerInput updateAirDateInput
#' @importFrom shinycssloaders withSpinner
#' @importFrom reactable reactable colDef reactableTheme reactableOutput renderReactable
#' @importFrom reactablefmtr data_bars
#' @importFrom htmltools tagList tags div span strong em br a img p
#' @importFrom htmlwidgets JS
#' @importFrom rlang `%||%`
#' @importFrom writexl write_xlsx
#' @importFrom golem with_golem_options
#' @importFrom sever useSever reload_button reload_link sever
#' @importFrom shinySearchbar searchbar
#' @importFrom scales rescale
"_PACKAGE"
