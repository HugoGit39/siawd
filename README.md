[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![License: GPL-3.0](https://img.shields.io/badge/License-GPL--3.0-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![License: CC BY-NC-ND 4.0](https://img.shields.io/badge/License-CC%20BY--NC--ND%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-nd/4.0/)

## About

<img align="right"
     src="https://raw.githubusercontent.com/HugoGit39/sia.project.1.wi.shiny/refs/heads/main/test/app/www/sia_hexsticker.png"
     width="200"
     alt="SIA Hex Sticker">

<p align="justify">
  The Stress in Action Wearables Database (SiA-WD) is a new, comprehensive, well-sustained database of physiological wearable devices that have application potential in behavioral research, in particular stress research. It provides a large amount of information that a researcher would look for such as the general device information, recorded signals, technical specifications and data access, combined with a systematic validity, reliability and usability review of the available literature on a device.
</p>

<p align="justify">
    <strong>
    The SiA-WD will be iteratively expanded and the information, including that for devices
    already existing in the database, updated for a period of at least ten years (2023–2033).
  </strong>
	The user-friendly tool enables researchers to conveniently select the most suitable wearable for their study.
</p>

## How to use the SiA Wearable Database Shiny App

<strong>Product Filter</strong>

<p align="justify"> The <strong>Product Filter</strong> lets you compare up to three wearables side by side. Each product is selected in two steps: first choose a <em>Manufacturer</em>, then pick a <em>Model</em> from the available options for that brand. </p> <p align="justify"> Once at least one product is selected, a comparison table is generated that transposes features into rows and selected products into columns. This makes it easy to directly compare specs, usability, and validation metrics. </p> <p align="justify"> The third product slot can be cleared using the <code>Reset Product 3</code> button. The filtered comparison can also be downloaded via the <code>Download Filtered Products</code> button. </p> <ul> <li>Product 1: <ul> <li>Manufacturer (dropdown)</li> <li>Model (dropdown)</li> </ul> </li> <li>Product 2: <ul> <li>Manufacturer (dropdown)</li> <li>Model (dropdown)</li> </ul> </li> <li>Product 3 (optional): <ul> <li>Manufacturer (dropdown)</li> <li>Model (dropdown)</li> </ul> </li> <li>Reset Product 3 (button)</li> <li>Download Filtered Products (button)</li> </ul>

<strong>Feature Filter</strong>

<p align="justify">
  The <strong>Feature Filter</strong> is a powerful, modular interface that allows filtering
  wearables across multiple dimensions related to expert evaluation, device characteristics,
  technical capabilities, measured signals, data access, and scientific evidence. All filters
  are dynamically linked: available options automatically update to reflect only valid and
  compatible combinations. Both the filtered results and the applied filter settings can be
  downloaded for reproducibility.
</p>

1. <strong>SiA Expert Score</strong> (3 filters)
<ul>
  <li>Long-Term Expert Score (slider: 0–10)</li>
  <li>Short-Term Expert Score (slider: 0–10)</li>
  <li>Exclude missing SiA scores (YES/NO switch)</li>
</ul>

2. <strong>General Device Information</strong>
<ul>
  <li>Manufacturer (multi-select dropdown)</li>
  <li>Model (multi-select dropdown)</li>
  <li>Release Year Range (slider; e.g., 2007–2024)</li>
  <li>Market Status (multi-select dropdown)</li>
  <li>Main Use (multi-select dropdown)</li>
  <li>Device Cost (€) (slider)</li>
  <li>Type (multi-select dropdown)</li>
  <li>Location (multi-select dropdown)</li>
</ul>

3. <strong>Technical Specifications</strong>
<ul>
  <li>Water Resistant (checkbox)</li>
  <li>Battery Life (hours) (slider)</li>
  <li>Charging Duration (minutes) (slider)</li>
  <li>Bio Cueing (checkbox)</li>
  <li>Bio Feedback (checkbox)</li>
</ul>

4. <strong>Signals Measured</strong>
<ul>
  <li>Accelerometer (checkbox)</li>
  <li>Blood Pressure (checkbox)</li>
  <li>Electrocardiogram (ECG) (checkbox)</li>
  <li>Electrodermal Activity (EDA) (checkbox)</li>
  <li>Electroencephalography (EEG) (checkbox)</li>
  <li>Electromyography (EMG) (checkbox)</li>
  <li>Global Positioning System (GPS) (checkbox)</li>
  <li>Gyroscope (checkbox)</li>
  <li>Impedance Cardiography (ICG) (checkbox)</li>
  <li>Photoplethysmogram (PPG) (checkbox)</li>
  <li>Respiration (checkbox)</li>
  <li>Skin Temperature (checkbox)</li>
  <li>Other Signals (multi-select dropdown)</li>
</ul>

5. <strong>Data Access</strong>
<ul>
  <li>Raw Data Available (checkbox)</li>
  <li>Internal Storage (checkbox)</li>
  <li>Server Storage (checkbox)</li>
  <li>Storage Capacity (MB) (slider)</li>
  <li>Storage Capacity (hours) (slider)</li>
  <li>GDPR Compliant (checkbox)</li>
  <li>FDA Cleared (checkbox)</li>
  <li>CE Marked (checkbox)</li>
</ul>

6. <strong>Reliability, Validity & Usability</strong>
<ul>
  <li>Reliability &amp; Validity Studies (number of studies; slider)</li>
  <li>Usability Studies (number of studies; slider)</li>
  <li>Reliability &amp; Validity Evidence Level (multi-select dropdown)</li>
  <li>Usability Evidence Level (multi-select dropdown)</li>
</ul>

<p align="justify">
  Every filter selection instantly updates the available options in other dropdowns and sliders
  to reflect valid combinations only. This guarantees a coherent, data-consistent exploration
  experience and supports transparent, reproducible comparison of wearable devices.
  The resulting table output also includes a <strong>“More Details”</strong> column, which provides
  access to more granular, device-specific information for in-depth inspection.
</p>

## Live version

<p align="justify"> 
	<strong>Live Wearable Shiny App website:</strong> <a href="https://wearables.stress-in-action.nl/" target="_blank">	https://wearables.stress-in-action.nl/</a> 
</p>

## Run the app

<p align="justify"> The SiA Wearable Database Shiny App can be run in two environments: </p> <ul> <li> <strong>Test: Local Environment</strong> <br> This version can be run directly on your local machine using R. It includes the full user interface, filtering logic, and data display features for development and testing purposes. </li> <br> <li> <strong>Production: Shiny Server Environment</strong> <br> This version is deployed on a Shiny Server and is intended for official use. It includes access to the full wearable validation pipeline and is optimized for multi-user interaction. </li> </ul> <p align="justify"> <strong>Note:</strong> For <em>both</em> the test and production versions, the email functionality is disabled unless the correct SMTP credentials are present in a private <code>.Renviron</code> file. These credentials are <strong>not</strong> included in the public repository, as they contain confidential DISC email server information. </p> <p align="justify"> To run the app locally for testing purposes, use the following R code: </p>

```r
shiny::runApp("path/to/your/app")`
```

## Repository structure

```bash
sia.project.1.wi.shiny/
├─ production/
│  └─ app/
│     ├─ data/
│     ├─ functions/
│     ├─ modules/
│     ├─ www/
│     ├─ app.R
│     └─ global.R
│
├─ test/
│  └─ app/
│     ├─ data/
│     ├─ functions/
│     ├─ modules/
│     ├─ www/
│     ├─ app.R
│     └─ global.R
│
├─ .gitignore
├─ LICENSE
├─ README.md
└─ project.1.sia.wi.shiny.Rproj
```

## Support

<p align="justify">
  If you encounter a bug, please <a href="https://github.com/HugoGit39/project.1.sia.wi/issues">submit an issue</a>.
</p>

<p align="justify">
  If you run into any problems, feel free to get in touch with the DISC via <a href="mailto:disc@stress-in-action.nl">disc@stressin-action.nl</a>.
</p>

<p align="justify">
  For detailed questions about the wearable validation pipeline database, please get in touch with a member of RT2</a>.
</p>

## Authors and Citation

<p align="justify"> This application is based on the following publication: <br> <strong> Schoenmakers M, Saygin M, Sikora M, Vaessen T, Noordzij M, de Geus E. <em>Stress in action wearables database: A database of noninvasive wearable monitors with systematic technical, reliability, validity, and usability information.</em> Behav Res Methods. 2025 May 13;57(6):171. </strong> <br> <a href="https://link.springer.com/article/10.3758/s13428-025-02685-4" target="_blank"> https://link.springer.com/article/10.3758/s13428-025-02685-4 </a> </p> <p align="justify"> Please cite this paper when publishing or sharing any analysis that uses outputs from the filters in this app. </p>

- <a href="https://stress-in-action.nl/artemis-stefani/">A. Stefani</a> - Author RT2
- <a href="https://stress-in-action.nl/myrte-schoenmakers/">M.A. Schoenmakers</a> - Author RT2
- <a href="https://stress-in-action.nl/melisa-saygin/">M. Saygin</a> - Author RT2
- <a href="https://stress-in-action.nl/magdalena-sikora/">M. Sikora</a> - Author RT2
- <a href="https://stress-in-action.nl/matthijs-noordzij/">M. Noordzij</a> - Author RT2
- <a href="https://stress-in-action.nl/eco-de-geus/">J.C.N. de Geus</a> - Author RT2

- <a href="https://stress-in-action.nl/hugo-klarenberg/">H. Klarenberg</a> - Author, app maintainer

## Resources

`Stress in Action` website: [https://stress-in-action.nl](https://stress-in-action.nl)

- <a href="https://stress-in-action.nl/terms-of-use/">Stress in Action</a> - Copyright holder 

- {bs4Dash} - [https://github.com/RinteRface/bs4Dash](https://github.com/RinteRface/bs4Dash)  
- {dplyr} - [https://github.com/tidyverse/dplyr](https://github.com/tidyverse/dplyr)   
- {emayili} - [https://github.com/datawookie/emayili](https://github.com/datawookie/emayili)  
- {fresh} - [https://github.com/dreamRs/fresh](https://github.com/dreamRs/fresh)  
- {here} - [https://github.com/r-lib/here](https://github.com/r-lib/here)  
- {htmltools} - [https://github.com/rstudio/htmltools](https://github.com/rstudio/htmltools)  
- {htmlwidgets} - [https://github.com/ramnathv/htmlwidgets](https://github.com/ramnathv/htmlwidgets)  
- {lubridate} - [https://github.com/tidyverse/lubridate](https://github.com/tidyverse/lubridate)  
- {reactable} - [https://github.com/glin/reactable](https://github.com/glin/reactable)  
- {reactablefmtr} - [https://github.com/kcuilla/reactablefmtr](https://github.com/kcuilla/reactablefmtr)  
- {rlang} - [https://github.com/r-lib/rlang](https://github.com/r-lib/rlang)  
- {scales} - [https://github.com/r-lib/scales](https://github.com/r-lib/scales)  
- {sever} - [https://github.com/JohnCoene/sever](https://github.com/JohnCoene/sever)  
- {shiny} - [https://github.com/rstudio/shiny](https://github.com/rstudio/shiny)  
- {shinycssloaders} - [https://github.com/andrewsali/shinycssloaders](https://github.com/andrewsali/shinycssloaders)  
- {shinyjs} - [https://github.com/daattali/shinyjs](https://github.com/daattali/shinyjs)  
- {shinySearchbar} - [https://github.com/jsdnrs/shiny-searchbar](https://github.com/jsdnrs/shiny-searchbar)  
- {shinyWidgets} - [https://github.com/dreamRs/shinyWidgets](https://github.com/dreamRs/shinyWidgets)








