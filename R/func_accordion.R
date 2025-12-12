############################################################################################
#
# Function for accordion
#
# Stress in Action 2025
#
#############################################################################################

#' @keywords internal
#' @noRd

accordionI <- function(tit, stat, col, text){

  accordionItem(
    title = tit,
    status = stat,
    collapsed = col,
    text
  )

}
