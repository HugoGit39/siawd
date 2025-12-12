#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),

    # Your application UI logic
    dashboardPage(
      dark = NULL,
      freshTheme = colours_fresh(),
      title = "Stress in Action Wearables Database App",
      fullscreen = FALSE,
      skin = "light",
      help = NULL,
      header = mod_header_ui("header"),
      sidebar = dashboardSidebar(disable = TRUE),
      body = dashboardBody(
        id = "body_app",
        useShinyjs(),
        useSever(),
        tabItems(
          tabItem(tabName = "app_info", mod_app_info_ui("app_info")),
          tabItem(tabName = "product_filter", mod_prod_fil_ui("product_comp")),
          tabItem(tabName = "feature_filter", mod_feat_fil_ui("feature_comp")),
          tabItem(tabName = "submit_data", mod_sub_data_ui("add_data")),
          tabItem(tabName = "article", mod_article_ui("art")),
          tabItem(tabName = "about", mod_about_ui("about")),
          tabItem(tabName = "contact_us", mod_contact_ui("contact"))
        )
      ),
      controlbar = mod_control_ui("controlbar"),
      footer = mod_footer_ui("footer"),
      scrollToTop = TRUE
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "siawd"
    ),
    # Add your custom external resources
    tags$link(rel = "stylesheet", type = "text/css", href = "www/custom.css"),
    tags$script(src = "www/custom.js")
  )
}
