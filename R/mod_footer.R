############################################################################################
#
# Module for footer
#
# Stress in Action 2025
#
#############################################################################################

# Footer Module (UI)
#' @keywords internal
#' @noRd
mod_footer_ui <- function(id) {
  ns <- NS(id)

    dashboardFooter(
      left = tagList(
        a(
          href = "mailto:disc@stress-in-action.nl",
          target = "_blank",
          img(
            src = "www/mail_sia.png",
            style = "width:25px; height:25px; vertical-align:middle;",
            alt = "Email"
          )
        ),
        a(
          href = "https://www.linkedin.com/company/stress-in-action/",
          target = "_blank",
          img(
            src = "www/linkedin_sia.png",
            style = "width:25px; height:25px; vertical-align:middle; margin-left:10px;",
            alt = "LinkedIn"
          )
        ),
        a(
          href = "https://github.com/HugoGit39/project.1.sia.wi.alt",
          target = "_blank",
          img(
            src = "www/github-sign_sia.png",
            style = "width:25px; height:25px; vertical-align:middle; margin-left:10px;",
            alt = "GitHub"
          )
        ),
        a(
          href = "https://github.com/HugoGit39/siawd",
          target = "_blank",
          img(
            src = "www/sia_hexsticker_footer.png",
            style = "width:25px; height:25px; vertical-align:middle; margin-left:10px;",
            alt = "GitHub_golem"
          )
        )
      ),
      right = tagList(
        span("© 2023–2033 Stress in Action |", style = "color:#1c75bc;"),
        a(
          href   = "https://creativecommons.org/licenses/by-nc-nd/4.0/",
          target = "_blank",
          style  = "color:#1c75bc; text-decoration:none;",
          "Licensed under CC BY-NC-ND 4.0"
        )
      )
    )
}

# Footer Module (Server)
#' @keywords internal
#' @noRd
mod_footer_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # No server-side logic needed for static content
  })
}
