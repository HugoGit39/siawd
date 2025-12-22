############################################################################################
#
# Function for SiA colours
#
# Stress in Action 2025
#
#############################################################################################

#' @keywords internal
#' @noRd

colours_fresh <- function() {

  create_theme(
    bs4dash_layout(
      control_sidebar_width = "500px"
    ),
    bs4dash_status(
      primary = "#1c75bc",
      secondary = "#f15a29",
      success = "#44AA99",
      info = "#88CCEE",
      warning = "#882255",
      danger = "#CC6677",
      light = "#fbf7f3",
      dark = "#000000"
    ),
    bs4dash_color(
      green = "#117733",
      teal  = "#44AA99",
      red = "#CC6677",
      orange = "#f15a29",
      fuchsia = "#882255",
      navy = "#1c75bc",
      purple = "#AA4499",
      olive  = "#999933",
      cyan  = "#88CCEE",
      gray_x_light = "#fbf7f3",
      gray_900  = "#000000"
    )
  )

}



