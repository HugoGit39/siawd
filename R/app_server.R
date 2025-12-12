#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {

  # --- Reactive data (loaded from global_data.R)
  sia_df_reactive <- reactive({ df_sia_shiny_filters })

  # --- Module servers ---
  mod_header_server("header")
  mod_prod_fil_server("product_comp", sia_df_reactive)
  mod_feat_fil_server("feature_comp", sia_df_reactive)
  mod_sub_data__server("add_data")
  mod_article_server("art")
  mod_contact_server("contact")
  mod_control__server("controlbar", sia_df_reactive)
  mod_timeout_server("timeout")

}
