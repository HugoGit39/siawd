############################################################################################
#
# Function for submit data
#
# Stress in Action 2025
#
#############################################################################################

#' @keywords internal
#' @noRd

#function to pre-fill choices
text_or_selectize <- function(inputId, label, df, col) {
  vals <- sort(unique(na.omit(df[[col]])))
  selectizeInput(
    inputId,
    label,
    choices = vals,
    selected = "",
    multiple = FALSE,
    options = list(
      create = TRUE,
      placeholder = "Click for options or type + press Enter",
      onInitialize = I('function() { this.clear(); }')
    )
  )
}
