#' System file helper
#'
#' @param ... Path elements inside the installed package.
#'
#' @return Full path inside the package.
#' @noRd
app_sys <- function(...) {
  system.file(..., package = "siawd")
}
