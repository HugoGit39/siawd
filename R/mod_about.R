############################################################################################
#
# Module for about
#
#
# Stress in Action 2025
#
#############################################################################################

# About Module (UI)
#' @keywords internal
#' @noRd
mod_about_ui <- function(id) {
  ns <- NS(id)

  tagList(

    fluidRow(
      column(
        width = 4,
        div(
          img(
            src = "www/SiA_lab.jpg",
            style = "max-width: 40%; max-height: 40%; margin-top: 10%; margin-left: 25%"
          )
        )
      ),
      column(
        width = 4,
        bs4Card(
          title = "Stress in Action",
          style = "font-size: 18px; height: 350px; overflow-y: auto;",
          status = "primary",
          solidHeader = TRUE,
          width = 12,
          collapsible = FALSE,
          headerBorder = FALSE,
          p("Stress in Action capitalizes on the fast advances in technology and big data analytics to move stress research from the lab to daily life. The Consortium enables synergistic collaborations to discover 1) how responses to daily life stress arise from the temporal, dynamic interplay between context and person-specific factors (RT1), 2) how daily life stress can be reliably measured in a specific individual in real-time", strong("(RT2)", style = "color: #f15a29; font-size:18px"), ", and 3) how and when potential beneficial stress-response mechanisms turn into detrimental effects on mental and cardiometabolic health. This enables the development of novel monitoring and intervention strategies to track and reduce daily life stress and its health impact (RT3)."), style = "text-align: justify;",
          div(
            style = "text-align: center; margin-bottom: 10px;",
            actionButton(
              inputId = ns("read_more"),
              label = "Read More",
              status = "secondary",
              outline = TRUE,
              size = "sm",
              flat = TRUE,
              icon = NULL,
              block = TRUE,
              width = "25%",
              style = "border-width: 2px",
              onclick ="window.open('https://stress-in-action.nl/project-abstract/', '_blank')"
            )
          ),
          footer = div(
            style = "padding-top: 10px;",
            div(
              style = "text-align: center;",
              p(strong("Partners", style = "color: #1c75bc;"))
            ),
            div(
              style = "display:flex; flex-wrap:wrap; align-items:center; justify-content:center; gap:10px; width:100%;",
              span(style = "height:40px; display:inline-flex; align-items:center; flex:0 0 auto;",
                   img(src = "www/VU_logo.png",  height = "40px")),
              span(style = "height:40px; display:inline-flex; align-items:center; flex:0 0 auto;",
                   img(src = "www/AUMC_logo.png", height = "40px")),
              span(style = "height:40px; display:inline-flex; align-items:center; flex:0 0 auto;",
                   img(src = "www/UMCG_logo.png", height = "25px")),
              span(style = "height:40px; display:inline-flex; align-items:center; flex:0 0 auto;",
                   img(src = "www/RUG_logo.png",  height = "40px")),
              span(style = "height:40px; display:inline-flex; align-items:center; flex:0 0 auto;",
                   img(src = "www/UU_logo.png",   height = "40px")),
              span(style = "height:40px; display:inline-flex; align-items:center; flex:0 0 auto;",
                   img(src = "www/UT_logo.png",   height = "40px")),
              span(style = "height:40px; display:inline-flex; align-items:center; flex:0 0 auto;",
                   img(src = "www/EMC_logo.png",  height = "40px"))
            )

          )
        )
      ),
    column(
      width = 4,
      div(
        img(
          src = "www/SiA_measurements.jpg",
          style = "max-width: 75%; max-height: 75%; margin-top: 20%; margin-left: 15%;"
        )
      )
    )
  ),
  fluidRow(
    column(
      width = 4,
      div(
        style = "margin-top: 125px;",
        bs4Card(
          title = "App Maintenance",
          status = "secondary",
          solidHeader = TRUE,
          width = 12,
          collapsible = FALSE,
          headerBorder = FALSE,
          p(
            "This application is a publication of the department of Biological Psychology at the VU Amsterdam.",
            style = "text-align: justify;"
          ),
          p(
            a(
              href = "https://stress-in-action.nl/hugo-klarenberg/",
              target = "_blank",
              img(
                src = "www/favicon.ico",
                style = "width:25px; height:25px; vertical-align:middle; margin-right:5px;"
              )
            ),
            a(
              href = "https://www.linkedin.com/in/hugo-k-536a2677/",
              target = "_blank",
              img(
                src = "www/linkedin_sia.png",
                style = "width:25px; height:25px; vertical-align:middle; margin-left:5px;",
                alt = "LinkedIn"
              )
            ),
            br(),
            "Hugo Klarenberg, PhD - Post Doc VU Amsterdam"
          ),
          p(
            "Faculty of Behavioural and Human Movement Sciences", br(),
            "Department of Biological Psychology", br(),
            "Van der Boechorststraat 7", br(),
            "1081 BT Amsterdam", br(),
            "Email: disc[at]stress-in-action.nl", br(),
            "Website: ",
            a(
              href = "https://vu.nl/en/about-vu/faculties/faculty-of-behavioural-and-movement-sciences/departments/biological-psychology",
              target = "_blank",
              "Department of Biological Psychology"
            )
          ),
          p(
            "We kindly ask you to report bugs or function requests via email.",
            style = "text-align: justify;"
          )
        )
      ),
      div(
          style = "margin-top: 50px;",
          p(img(
            src = "www/iStock_about.jpg",
            style = "display: block; margin: 0 auto; max-width: 25%; height: auto; border-radius: 5px;"
          )),
          div(
            class = "d-flex justify-content-center",
            bs4Card(
              title = "Image Credits",
              status = "primary",
              solidHeader = TRUE,
              width = 8,
              collapsible = FALSE,
              headerBorder = FALSE,
              p("All background images used in this application are sourced from iStock under a paid license.", style = "text-align: justify;"),
              p("Photographer:", br(), "Daniel de la Hoz"),
              p("Website: ",
                a(
                  href = "https://www.istockphoto.com/nl/portfolio/Hoverphoto",
                  target = "_blank",
                  "iStock profile"
                )
              )
            )
          )
      )
    ),
    column(width = 4,
           div(
             style = "margin-top: 120px;",
             p(img(src = "www/sia_hexsticker.png", style = "display: block; margin: 0 auto; max-width: 35%; height: auto; border-radius: 5px;"))
             ),
           div(
             style = "margin-top: 120px;",
             bs4Card(
               title = "Run App Locally",
               status = "primary",
               solidHeader = TRUE,
               width = 12,
               collapsible = FALSE,
               headerBorder = FALSE,

               p("You can also run the SiA-WD web app locally on your workstation. It behaves the same way as installing and running a regular R-package."),

               div(
                 style = "background: #f6f8fa; border: 1px solid #d0d7de; border-radius: 6px; padding: 10px; margin-top: 10px; font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', monospace; font-size: 12px;",
                 HTML(paste0(
                   "# Install the SIA-WD golem package from GitHub<br/>",
                   "install.packages(&quot;remotes&quot;)<br/>",
                   "remotes::install_github(&quot;HugoGit39/siawd&quot;)"
                 ))
               ),
               p("Great! You are all set to run the SiA-WD app:"),

               div(
                 style = "background: #f6f8fa; border: 1px solid #d0d7de; border-radius: 6px; padding: 10px; margin-top: 10px; font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', monospace; font-size: 12px;",
                 HTML("siawd::run_app()")
               ),

               p("Be aware: you’ll need to update once in a while to ensure you’re using the most recent database."),
               footer = actionButton(
                 inputId = "copy_local_code_btn",
                 label = "Copy Code",
                 icon = icon("copy"),
                 style = "background-color: #1c75bc; color: white; margin-top: 5px;"
               )
             )
             )
           ),
    column(width = 4,
           div(
             style = "margin-top: 50px;",
               bs4Card(
                 title = "Research Theme 2 (RT2) Wearable Team",
                 status = "secondary",
                 solidHeader = TRUE,
                 width = 12,
                 collapsible = FALSE,
                 headerBorder = FALSE,
                 p("The goal of RT2 is to develop increasingly sophisticated versions of a cutting-edge, low-burden, ecologically valid ambulatory assessment toolkit to quantify stress in daily life, and to design, test, and iteratively improve stress interventions using that toolkit."), style = "text-align: justify;",
                 p("Current team members:"),
                   p(
                     a(
                       href = "https://stress-in-action.nl/myrte-schoenmakers/",
                       target = "_blank",
                       img(
                         src = "www/favicon.ico",
                         style = "width:25px; height:25px; vertical-align:middle; margin-right:5px;"
                       )
                     ),
                     a(
                       href = "https://www.linkedin.com/in/myrte-schoenmakers-818ab4162/",
                       target = "_blank",
                       img(
                         src = "www/linkedin_sia.png",
                         style = "width:25px; height:25px; vertical-align:middle; margin-left:5px;",
                         alt = "LinkedIn"
                       )
                     ),
                     br(),
                     "Myrte Schoenmakers, PhD student VU Amsterdam"
                   ),
                   p(
                     a(
                       href = "https://stress-in-action.nl/melisa-saygin/",
                       target = "_blank",
                       img(
                         src = "www/favicon.ico",
                         style = "width:25px; height:25px; vertical-align:middle; margin-right:5px;"
                       )
                     ),
                     a(
                       href = "https://www.linkedin.com/in/melisa-saygin-760341215/",
                       target = "_blank",
                       img(
                         src = "www/linkedin_sia.png",
                         style = "width:25px; height:25px; vertical-align:middle; margin-left:5px;",
                         alt = "LinkedIn"
                       )
                     ),
                     br(),
                     "Melisa Saygin, PhD student VU Amsterdam"
                   ),
                   p(
                     a(
                       href = "https://stress-in-action.nl/magdalena-sikora/",
                       target = "_blank",
                       img(
                         src = "www/favicon.ico",
                         style = "width:25px; height:25px; vertical-align:middle; margin-right:5px;"
                       )
                     ),
                     a(
                       href = "https://www.linkedin.com/in/magdalena-sikora-85231b234/",
                       target = "_blank",
                       img(
                         src = "www/linkedin_sia.png",
                         style = "width:25px; height:25px; vertical-align:middle; margin-left:5px;",
                         alt = "LinkedIn"
                       )
                     ),
                     br(),
                     "Magdalena Sikora, PhD student University of Twente"
                   ),
                 p(
                   a(
                     href = "https://stress-in-action.nl/",
                     target = "_blank",
                     img(
                       src = "www/favicon.ico",
                       style = "width:25px; height:25px; vertical-align:middle; margin-right:5px;"
                     )
                   ),
                   a(
                     href = "https://www.linkedin.com/in/flavia-ercoli-74580921b/",
                     target = "_blank",
                     img(
                       src = "www/linkedin_sia.png",
                       style = "width:25px; height:25px; vertical-align:middle; margin-left:5px;",
                       alt = "LinkedIn"
                     )
                   ),
                   br(),
                   "Flavia Ercoli, PhD student VU Amsterdam"
                 ),
                   p(
                     a(
                       href = "https://stress-in-action.nl/artemis-stefani/",
                       target = "_blank",
                       img(
                         src = "www/favicon.ico",
                         style = "width:25px; height:25px; vertical-align:middle; margin-right:5px;"
                       )
                     ),
                     a(
                       href = "https://www.linkedin.com/in/artemis-stefani/",
                       target = "_blank",
                       img(
                         src = "www/linkedin_sia.png",
                         style = "width:25px; height:25px; vertical-align:middle; margin-left:5px;",
                         alt = "LinkedIn"
                       )
                     ),
                     br(),
                     "Artemis Stefani, PhD - Post Doc VU Amsterdam"
                   ),
                   p(
                     a(
                       href = "https://stress-in-action.nl/matthijs-noordzij/",
                       target = "_blank",
                       img(
                         src = "www/favicon.ico",
                         style = "width:25px; height:25px; vertical-align:middle; margin-right:5px;"
                       )
                     ),
                     a(
                       href = "https://www.linkedin.com/in/matthijs-noordzij-81a8418/",
                       target = "_blank",
                       img(
                         src = "www/linkedin_sia.png",
                         style = "width:25px; height:25px; vertical-align:middle; margin-left:5px;",
                         alt = "LinkedIn"
                       )
                     ),
                     br(),
                     "Matthijs Noordzij, Professor in Health Psychology and Technology University of Twente"
                   ),
                   p(
                     a(
                       href = "https://stress-in-action.nl/eco-de-geus/",
                       target = "_blank",
                       img(
                         src = "www/favicon.ico",
                         style = "width:25px; height:25px; vertical-align:middle; margin-right:5px;"
                       )
                     ),
                     a(
                       href = "https://www.linkedin.com/in/ecodegeus/",
                       target = "_blank",
                       img(
                         src = "www/linkedin_sia.png",
                         style = "width:25px; height:25px; vertical-align:middle; margin-left:5px;",
                         alt = "LinkedIn"
                       )
                     ),
                     br(),
                     "Eco de Geus, Professor of Biological Psychology VU Amsterdam"
                   )
               )
             )

    )
  )
  )
}

# About Module (Server)
#' @keywords internal
#' @noRd
mod_about_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # No server-side logic needed for static content
  })
}
