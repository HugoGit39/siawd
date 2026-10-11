############################################################################################
#
# Function for GitHub links
#
# Stress in Action 2025
#
#############################################################################################

#' @keywords internal
#' @noRd

# Owner is read at call time, so an installed package follows the setting too.
# Default stress-in-action; a personal .Renviron can set SIA_GITHUB_OWNER=HugoGit39.
github_url <- function(repo) {
  owner <- Sys.getenv("SIA_GITHUB_OWNER", "stress-in-action")
  if (!nzchar(owner)) owner <- "stress-in-action"
  paste0("https://github.com/", owner, "/", repo)
}
