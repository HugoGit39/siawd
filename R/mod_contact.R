############################################################################################
#
# Module for contact us
#
# Stress in Action 2025
#
#############################################################################################

# Contact Module (UI)
#' @keywords internal
#' @noRd
mod_contact_ui <- function(id) {

  ns <- NS(id)

  tagList(

    div(id = "app_contact_us_bg"),

    fluidRow(
      column(width = 4,
             bs4Card(title = "Contact Us",
                     status = "primary",
                     width = 12,
                     collapsible = FALSE,
                     solidHeader = TRUE,
                     id = "contact",
                     height = "auto",
                     p("Feel free to contact us with any questions about the project!"),
                     div(
                       textInput(ns("name"), labelMandatory("Name"), ""),
                       textInput(ns("email"), labelMandatory("Email"), ""),
                       uiOutput(ns("email_error")),
                       textInput(ns("telephone"), "Telephone"),
                       textInput(ns("institution"), "Institution"),
                       textAreaInput(ns("message"), labelMandatory("Message"), ""),

                       actionButton(ns("submit_email"), "Submit", disabled = TRUE)
                     )
             )
      )
    )
  )
}

# Contact Module (Server)
#' @keywords internal
#' @noRd
mod_contact_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    output$email_error <- renderUI({
      val <- input$email
      if (!is.null(val) && nzchar(val) && !grepl("@", val)) {
        div(
          style = "color:#CC6677; font-size:12px;",
          strong("Email must contain '@' (e.g., name@example.com).")
        )
      }
    })

    observe({
      toggleState(id = "submit_email", condition = mandatoryfields_check(fieldsMandatory_email, input))
    })

    observeEvent(input$submit_email, {

      to_address <- "disc@stress-in-action.nl"
      subject <- "Wearable Database App message"

      body <- paste(
        "Name:", input$name,
        "\nEmail:", input$email,
        "\nTelephone:", input$telephone,
        "\nInstitution:", input$institution,
        "\n\nMessage:\n", input$message
      )

      mailto_url <- paste0(
        "mailto:", to_address,
        "?subject=", URLencode(subject, reserved = TRUE),
        "&body=", URLencode(body, reserved = TRUE)
      )

      runjs(sprintf("window.location.href = '%s';", mailto_url))

      showNotification("Opening your email client…", type = "message")

      reset_inputs_contact(session)
    })
  })
}
