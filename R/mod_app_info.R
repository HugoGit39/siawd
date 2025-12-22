############################################################################################
#
# Module for app info
#
# Stress in Action 2025
#
#############################################################################################

# App Info Module (UI)
#' @keywords internal
#' @noRd
mod_app_info_ui <- function(id) {
  ns <- NS(id)

  tagList(

    div(id = "app_info_bg"),

    fluidRow(
      column(
        width = 3,
        bs4Card(
          title = "Papers to Cite",
          status = "secondary",
          solidHeader = TRUE,
          width = 12,
          collapsible = FALSE,
          img(src = "www/info_app_beh_paper.png", width = "100%", style = "margin-top: 10px;"),
          footer = div(
            class = "d-flex justify-content-between align-items-center",
            actionButton(
              inputId = "copy_citation_btn",
              label = "Copy Citations",
              icon = icon("copy"),
              style = "background-color: #f15a29; color: white; margin-top: 5px;"
            ),
            actionButton(
              inputId = ns("license_info"),
              label   = tagList(
                icon("info-circle", style = "color: #1c75bc;"),
                "LICENSE"
              ),
              status  = "success",
              outline = TRUE,
              size    = "sm",
              flat    = TRUE,
              class   = "license-info-btn",
              style   = "border-width: 2px;"
            )
          )
        )
      ),
      column(width = 4),
      column(
        width = 5,
        bs4Card(
          title = "Welcome to the SiA Wearables Database Web App",
          style = "height: 400px; overflow-y: auto;",
          status = "primary",
          solidHeader = TRUE,
          width = 12,
          collapsible = FALSE,
          headerBorder = FALSE,

          div(
            style = "position: relative;",

            img(
              src = "www/sia_hexsticker.png",
              style = "float: right;width: 180px;margin: 0 0 10px 15px;"
            ),

            p(
              "The Stress in Action Wearables Database (SiA-WD) is a new, comprehensive, well-sustained database of physiological wearable devices that have application potential in behavioral research, in particular stress research. It provides a large amount of information that a researcher would look for such as the general device information, recorded signals, technical specifications and data access, combined with a systematic validity, reliability and usability review of the available literature on a device.",
              br(), br(),
              "The SiA-WD will be iteratively expanded and the information, including that for devices already existing in the database, updated for a period of at least ten years. The user-friendly tool enables researchers to conveniently select the most suitable wearable for their study.",
              style = "text-align: justify;"
            ),

            div(style = "clear: both;")
          ),

          footer = div(
            style = "padding-top: 10px;",
            div(
              style = "text-align: center; font-size: 18px;",
              p(
                strong(paste(n_wearables, "Wearables included"), style = "color: #f15a29;"),
                br(),
                "see the ", icon("info-circle", style = "color:#1c75bc;"),
                " button in the top right for an overview ",
                br(), "of wearables and glossary.",
                br(), br(),
                strong("Updating in Dec/Jan to include 67+ wearables!")
              )
            )
          )
        )

      )
    ),
    fluidRow(
      column(width = 1),

      column(
        width = 4,
        bs4Card(
          title = "User Guide",
          status = "primary",
          solidHeader = TRUE,
          width = 12,
          collapsible = FALSE,
          headerBorder = FALSE,
          style = "height: 300px; overflow-y: auto;",
          p(strong("Terms of citation")),
          p(
            "When using the wearables database and/or this web app, you must cite the two papers listed under ",
            strong("Papers to Cite"),
            " and/or ",
            strong("Research"),"."
          ),
          p(strong("Using this app")),
          p(
            "This app is designed for desktop use and is not optimized for mobile devices.",
            style = "text-align: justify;"
          ),
          p(
            "Go to the ", strong("Filters"), " section to explore wearables based on your criteria.",
            style = "text-align: justify;"
          ),
          p(
            "Use the ", em("Product Filter"), " to compare multiple wearables side-by-side."
          ),
          p(
            "Use the ", em("Feature Filter"), " to select wearables based on capabilities and preferences."
          ),
          p(
            "For terminology, open the menu in the top right corner and browse the ",
            strong("Glossary"),".",
            style = "text-align: justify;"
          ),
          p(
            "If you have new data to add, visit the ", strong("Submit Data"), " section.",
            style = "text-align: justify;"
          ),
          p(
            strong("Research"), "provides background information about the database and the two papers.",
            style = "text-align: justify;"
          ),
          p(
            "The ", strong("About"), " section describes Stress in Action (the project funding this database) and lists the team and institutions involved.",
            style = "text-align: justify;"
          ),
          p(
            "Questions? Reach out via ", strong("Contact Us"),".",
            style = "text-align: justify;"
          )
        )
      ),
      column(width = 3),

      column(
        width = 3,
        div(
          style = "margin-top: 100px;",
          bs4Card(
            title = "Recent Updates",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            collapsible = FALSE,
            headerBorder = FALSE,
            style = "max-height: 300px; overflow-y: auto;",
            updates
          )
        )
      ),

      column(width = 1),
    )
  )
}

# App Info Module (Server)
#' @keywords internal
#' @noRd
mod_app_info_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # No server-side logic needed for static content
  })
}
