# global_data.R
# Initialize data & constants used across the app

# 1. Load .Renviron (optional) --------------------------------------------

try({
  renv_path <- app_sys("app", ".Renviron")
  if (file.exists(renv_path)) {
    readRenviron(renv_path)
  }
}, silent = TRUE)

# 2. Load data -----------------------------------------------------------

df_sia_shiny_filters <- readRDS(
  system.file("data", "df_shiny_sia_wd_filter.rds", package = "siawd")
)

df_sia_shiny_info <- readRDS(
  system.file("data", "df_shiny_sia_wd_info.rds", package = "siawd")
)

df_sia_osf <- readRDS(
  system.file("data", "df_osf_sia_wd_shiny.rds", package = "siawd")
)

glos <- readRDS(
  system.file("data", "glos.rds", package = "siawd")
)

df_codebook <- readRDS(
  system.file("data", "df_codebook.rds", package = "siawd")
)

updates <- readRDS(
  system.file("data", "updates.rds", package = "siawd")
)

# 3. Derived values -------------------------------------------------------

n_wearables <- nrow(df_sia_shiny_filters)

options(
  spinner.type  = 5,
  spinner.color = "#f15a29",
  spinner.size  = 0.5,
  hide.ui       = FALSE
)

# 4. Reactable layout: colours etc. --------------------------------------

sticky_style <- list(backgroundColor = "#f7f7f7")

# generate_alpha_palette() is defined in func_cell_layout.R
pal_num_scale <- generate_alpha_palette("#1c75bc", 100)

# 1. Define SiA score bars
bar_vars <- c("long_term_all_score", "short_term_all_score")

# 2. Numerical columns (exclude bar vars + device_id)
numeric_vars <- names(df_sia_shiny_filters)[
  sapply(df_sia_shiny_filters, is.numeric) &
    !names(df_sia_shiny_filters) %in% c(bar_vars, "device_id")
]

numeric_var_ranges <- suppressWarnings(
  lapply(numeric_vars, function(var) {
    range(df_sia_shiny_filters[[var]], na.rm = TRUE)
  })
)
names(numeric_var_ranges) <- numeric_vars

# 3. Yes/No columns (lowercase "yes"/"no")
yn_vars <- names(df_sia_shiny_filters)[
  sapply(df_sia_shiny_filters, is.character) &
    sapply(df_sia_shiny_filters,
           function(x) any(x %in% c("yes", "no"), na.rm = TRUE))
]

# 4. Character (categorical) columns
char_vars <- setdiff(
  names(df_sia_shiny_filters),
  c(bar_vars, yn_vars, numeric_vars, "device_id")
)

# 5. Mandatory fields -----------------------------------------------------

# data
fieldsMandatory_data <- c(
  "name", "email", "manufacturer", "model", "release_year",
  "market_status", "main_use", "device_cost",
  "wearable_type", "location"
)

# email
fieldsMandatory_email <- c("name", "email", "message")

# 6. Rename table variables ----------------------------------------------

rename_map <- c(
  "long_term_all_score" = "Long-Term SiA Score",
  "short_term_all_score" = "Short-Term SiA Score",
  "details" = "Details",
  "manufacturer" = "Manufacturer",
  "model" = "Model",
  "website" = "Website",
  "release_year" = "Release Year",
  "market_status" = "Market Status",
  "main_use" = "Main Use",
  "device_cost" = "Cost (€)",
  "wearable_type" = "Type",
  "location" = "Location",
  "size_mm" = "Size (mm)",
  "weight_gr" = "Weight (gr)",
  "bio_cueing_spec_boel_value" = "Bio Cueing",
  "bio_feedback_spec_boel_value" = "Bio Feedback",
  "water_resistance_spec_boel_value" = "Water Resistance",
  "battery_life_spec_num_value" = "Battery Life (hrs)",
  "charging_duration_spec_num_value" = "Charging Duration (min)",
  "accelerometer_available" = "Accelerometer",
  "bp_available" = "Blood Pressure",
  "ecg_available" = "ECG",
  "eda_available" = "EDA",
  "eeg_available" = "EEG",
  "emg_available" = "EMG",
  "gps_available" = "GPS",
  "gyroscope_available" = "Gyroscope",
  "icg_available" = "ICG",
  "other_signals_available" = "Other Signals",
  "ppg_available" = "PPG",
  "respiration_available" = "Respiration",
  "skin_temperature_available" = "Skin Temperature",
  "fda_clearance_spec_boel_value" = "FDA Clearance",
  "gdpr_compliance_spec_boel_value" = "GDPR Compliance",
  "ce_marking_spec_boel_value" = "CE Marking",
  "int_storage_met_spec_boel_value" = "Internal Storage",
  "raw_data_available_spec_boel_value" = "Raw Data Available",
  "server_data_storage_spec_boel_value" = "Server Data Storage",
  "dev_storage_cap_hr_spec_num_value" = "Storage (hrs)",
  "dev_storage_cap_mb_spec_num_value" = "Storage (MB)",
  "reliability_and_validity_n_of_studies" = "Reliability & Validity Studies (n)",
  "usability_n_of_studies" = "Usability Studies (n)",
  "reliability_and_validity_evidence_level" = "Reliability & Validity Evidence Level",
  "usability_evidence_level" = "Usability Evidence Level"
)

# 7. Submit data rename vector -------------------------------------------

rename_subm <- names(rename_map)
rename_subm <- rename_subm[!rename_subm %in% c("sia_es_long", "sia_es_short")]
rename_subm <- c(
  "name", "email", "telephone", "institution",
  rename_subm,
  "additional_information"
)

# 8. License ------------------------------------------------------------

df_license <- data.frame(
  License = c(
    "This Shiny app and its included data are licensed under the",
    "Creative Commons Attribution–NonCommercial–NoDerivatives 4.0 International License (CC BY-NC-ND 4.0).",
    "",
    "You are free to:",
    "- Share — copy and redistribute the material in any medium or format.",
    "- Use — the data for research or educational purposes.",
    "",
    "Under the following terms:",
    "- Attribution — You must give appropriate credit and cite the following papers:",
    "  1. Schoenmakers M, Saygin M, Sikora M, Vaessen T, Noordzij M, de Geus E.",
    "     \"Stress in Action Wearables Database: A database of noninvasive wearable monitors",
    "     with systematic technical, reliability, validity, and usability information.\"",
    "     Behavior Research Methods (2025). doi:10.3758/s13428-025-02685-4",
    "  2. Klarenberg H. et al. (2025). \"Stress in Action Wearables Shiny App.\"",
    "",
    "- NonCommercial — You may not use the data for commercial purposes,",
    "  including selling, advertising, or incorporating it into paid products or services.",
    "",
    "- NoDerivatives — You may not modify, transform, or build upon the data,",
    "  nor distribute modified versions.",
    "",
    "Full legal text:",
    "https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode"
  ),
  check.names = FALSE,
  stringsAsFactors = FALSE
)


# 9. Time-out message -----------------------------------------------------

disconnected <- tagList(
  p(strong("Time Out!", style = "color: #1c75bc; font-size:30px")),
  p(tags$img(src = "favicon.ico", height = 100, width = 100)),
  p("You haven't been active for over 1 hour", br(),
    "or your system went into sleep mode.", br(),
    "To help", strong("Un-Stress", style = "color: #f15a29; font-size:18px"), "the server", br(),
    "your session has ended.", style = "font-size:16px"),
  p(reload_button("Refresh")),
  p("Just hit refresh to continue", br(),
    "where you left off!", style = "font-size:16px")
)
