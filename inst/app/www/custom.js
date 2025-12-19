/* 1. App info*/

/* Layout message box. */

function showSiAMessage(message, title = "Info") {

  let modal = document.getElementById('sia-message-modal');

  if (!modal) {
    modal = document.createElement('div');
    modal.id = 'sia-message-modal';
    modal.style.position = 'fixed';
    modal.style.top = '0';
    modal.style.left = '0';
    modal.style.width = '100%';
    modal.style.height = '100%';
    modal.style.backgroundColor = 'rgba(0,0,0,0.35)';
    modal.style.zIndex = '9999';
    modal.style.display = 'flex';
    modal.style.alignItems = 'center';
    modal.style.justifyContent = 'center';
    modal.style.fontFamily = 'inherit';

    const box = document.createElement('div');
    box.id = 'sia-message-box';
    box.style.backgroundColor = 'white';
    box.style.maxWidth = '420px';
    box.style.width = '90%';
    box.style.maxHeight = '80%';
    box.style.padding = '16px 18px 12px 18px';
    box.style.borderRadius = '8px';
    box.style.boxShadow = '0 2px 10px rgba(0,0,0,0.3)';
    box.style.display = 'flex';
    box.style.flexDirection = 'column';
    box.style.position = 'relative';
    box.style.fontFamily = 'inherit';

    const header = document.createElement('div');
    header.style.display = 'flex';
    header.style.justifyContent = 'flex-start';
    header.style.alignItems = 'center';

    const h = document.createElement('h4');
    h.id = 'sia-message-title';
    h.style.margin = '0';
    h.style.paddingRight = '40px';

    header.appendChild(h);
    box.appendChild(header);

    const body = document.createElement('div');
    body.id = 'sia-message-body';
    body.style.marginTop = '10px';
    body.style.whiteSpace = 'pre-wrap';
    body.style.overflowY = 'auto';
    body.style.flex = '1';
    body.style.lineHeight = '1.3';
    body.style.fontFamily = 'inherit';

    box.appendChild(body);

    // ---- footer with SiA blue Close button (bottom-right) ----
    const footer = document.createElement('div');
    footer.style.display = 'flex';
    footer.style.justifyContent = 'flex-end';
    footer.style.marginTop = '12px';

    const closeBtn = document.createElement('button');
    closeBtn.type = 'button';
    closeBtn.id = 'sia-message-close';
    closeBtn.textContent = 'Close';
    closeBtn.style.padding = '6px 16px';
    closeBtn.style.borderRadius = '4px';
    closeBtn.style.border = '1px solid #1c75bc';
    closeBtn.style.background = '#1c75bc';
    closeBtn.style.color = 'white';
    closeBtn.style.cursor = 'pointer';
    closeBtn.style.fontSize = '14px';
    closeBtn.style.fontFamily = 'inherit';
    closeBtn.style.fontWeight = '500';
    closeBtn.style.boxShadow = '0 2px 4px rgba(0,0,0,0.15)';

    // remove black focus outline / tap highlight
    closeBtn.style.outline = 'none';
    closeBtn.style.boxShadow = '0 2px 4px rgba(0,0,0,0.15)';
    closeBtn.style.webkitTapHighlightColor = 'transparent';
    closeBtn.onfocus = function () { this.blur(); };

    closeBtn.onclick = function () {
      modal.style.display = 'none';
    };

    footer.appendChild(closeBtn);
    box.appendChild(footer);

    modal.appendChild(box);
    document.body.appendChild(modal);

    // Close when clicking outside the box
    modal.addEventListener('click', function (e) {
      if (e.target === modal) modal.style.display = 'none';
    });
  }

  const titleEl = document.getElementById('sia-message-title');
titleEl.textContent = '';

if (title === 'Success') {
  const tick = document.createElement('span');
  tick.textContent = '✔';
  tick.style.color = '#44AA99';   // green
  tick.style.marginRight = '6px';
  tick.style.fontWeight = '700';

  titleEl.appendChild(tick);
}

titleEl.appendChild(document.createTextNode(title));

  document.getElementById('sia-message-body').textContent  = message;
  modal.style.display = 'flex';
}

/* This function sets up the citation copy button. */

document.addEventListener("DOMContentLoaded", function () {
  const btn = document.getElementById("copy_citation_btn");
  if (btn) {
    btn.onclick = function () {
      const citation = `Schoenmakers M, Saygin M, Sikora M, Vaessen T, Noordzij M, de Geus E. Stress in action wearables database: A database of noninvasive wearable monitors with systematic technical, reliability, validity, and usability information. Behav Res Methods. 2025 May 13;57(6):171. doi: 10.3758/s13428-025-02685-4. PMID: 40360861; PMCID: PMC12075381.`;
      navigator.clipboard.writeText(citation).then(() => {
        showSiAMessage("Citations copied to clipboard!", "Success");
      });
    };
  }
});


/* LICENSE information */

$(document).ready(function () {

  setTimeout(function () {
    var button = $('.license-info-btn');
    var timer;

    button.popover({
      html: true,
      trigger: 'manual',
      placement: 'bottom',
      container: 'body',
      sanitize: false,
      template:
        '<div class="popover" role="tooltip" style="max-width:520px !important;">' +
        '<div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>',
      content: `
        <div id='license-popover'
             style='max-height:260px; overflow-y:auto; overflow-x:hidden;
                    text-align:left; line-height:1.3; width:500px; padding-right:6px;'>

          This Shiny app and its included data are licensed under the
          <b>Creative Commons Attribution–NonCommercial–NoDerivatives 4.0 International License (CC BY-NC-ND 4.0)</b>.<br><br>

          <b>You are free to:</b><br>
          • <b>Share</b> — copy and redistribute the material in any medium or format.<br>
          • <b>Use</b> — the data for research or educational purposes.<br><br>

          <b>Under the following terms:</b><br>
          • <b>Attribution</b> — You must give appropriate credit and cite the following papers:<br>
          &nbsp;&nbsp;1. Schoenmakers M, Saygin M, Sikora M, Vaessen T, Noordzij M, de Geus E.<br>
          &nbsp;&nbsp;&nbsp;&nbsp;"Stress in Action Wearables Database: A database of noninvasive wearable monitors<br>
          &nbsp;&nbsp;&nbsp;&nbsp;with systematic technical, reliability, validity, and usability information."<br>
          &nbsp;&nbsp;&nbsp;&nbsp;Behavior Research Methods (2025). doi:10.3758/s13428-025-02685-4<br>
          &nbsp;&nbsp;2. Klarenberg H. et al. (2025). "Stress in Action Wearables Shiny App."<br><br>

          • <b>NonCommercial</b> — You may not use the data for commercial purposes, including selling, advertising, or incorporating it into paid products or services.<br><br>

          • <b>NoDerivatives</b> — You may not modify, transform, or build upon the data, nor distribute modified versions.<br><br>

          <b>Full legal text:</b><br>
          <a href='https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode' target='_blank'>
            https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode
          </a>
        </div>
      `
    });

    // Show popover on hover
    button.on('mouseenter', function () {
      clearTimeout(timer);
      var btn = $(this);
      btn.popover('show');

      // Keep open when hovering the popover
      $(document).on('mouseenter', '#license-popover', function () {
        clearTimeout(timer);
      });
      $(document).on('mouseleave', '#license-popover', function () {
        timer = setTimeout(function () { btn.popover('hide'); }, 200);
      });
    });

    // Hide on mouseleave
    button.on('mouseleave', function () {
      var btn = $(this);
      timer = setTimeout(function () {
        if (!$('#license-popover:hover').length) {
          btn.popover('hide');
        }
      }, 200);
    });

  }, 800);
});

/* 2. Filters*/

// Product

$(document).ready(function () {

  setTimeout(function () {
    var button = $('.glossary-info-btn');
    var timer;

    button.popover({
      html: true,
      trigger: 'manual',
      placement: 'bottom',
      container: 'body',
      sanitize: false,
      template:
        '<div class="popover" role="tooltip" style="max-width:450px !important;">' +
        '<div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>',
      content: `
        <div id='glossary-popover-prod'
             style='max-height:240px; overflow-y:auto; overflow-x:hidden;
                    text-align:left; line-height:1.3; width:420px; padding-right:6px;'>
          <b>Table Information</b><br><br>

          <b>SiA Expert Scores</b><br>
          • Long-Term SiA Expert Score  — Weighted technical, usability, and reliability score for extended use (>2 week).<br>
          • Short-Term SiA Expert Score — Weighted technical and validation score for short-term use (≤2 week).<br><br>

          See the Research page for details on scoring, including criteria, procedure involved, and the interrater reliability.<br><br>

          <b>General Device Information</b><br>
          • Website — Link to the official device or manufacturer page.<br>
          • Release Year — Year of official device launch.<br>
          • Market Status — Current (available for purchase), Discontinued (no longer sold), or Upcoming (soon available).<br>
          • Main Use — Primary intended application (e.g., Research, Clinical, Consumer).<br>
          • Cost (€) — Approximate one-time purchase price including accessories.<br>
          • Type — Device form factor (e.g., watch, patch, chest strap, etc.).<br>
          • Location — Where the device is worn on the body (e.g., wrist, chest, arm).<br>
          • Size (mm) — Physical dimensions (length × width × height or diameter × height).<br>
          • Weight (gr) — Device mass in grams.<br><br>

          <b>Technical Specifications</b><br>
          • Bio Cueing — Feedback cues based on physiological signals (e.g., vibration or notification).<br>
          • Bio Feedback — Physiological parameters visible to user (e.g., stress or heart rate display).<br>
          • Water Resistance — Depth and/or time rating (e.g., 3 ATM, IP67).<br>
          • Battery Life (h) — Manufacturer-stated maximum hours of operation on one charge.<br>
          • Charging Duration (min) — Minutes required for full recharge.<br><br>

          <b>Signals</b><br>
          • Accelerometer — Measures movement or steps.<br>
          • Blood Pressure (BP) — Arterial pressure measurement.<br>
          • ECG — Electrocardiogram (electrical heart activity).<br>
          • EDA — Electrodermal Activity / Galvanic Skin Response.<br>
          • EEG — Electroencephalography (brain waves).<br>
          • EMG — Electromyography (muscle activity).<br>
          • GPS — Global Positioning System (geolocation).<br>
          • Gyroscope — Measures angular velocity and rotation.<br>
          • ICG — Impedance Cardiography (stroke volume, cardiac output).<br>
          • Other Signals — Additional measured signals not listed above.<br>
          • PPG — Photoplethysmography (blood volume pulse).<br>
          • Respiration — Derived from ICG or PPG signal variability.<br>
          • Skin Temperature — Peripheral temperature measured at skin surface.<br><br>

          <b>Data Access & Storage</b><br>
          • FDA Clearance — U.S. Food and Drug Administration medical approval.<br>
          • GDPR Compliance — Compliance with EU General Data Protection Regulation.<br>
          • CE Marking — European conformity mark for medical or consumer electronics.<br><br>
          • Internal Storage — Onboard memory available for signal storage.<br>
          • Raw Data Available — Whether signal-level data can be exported.<br>
          • Server Data Storage — Data stored on remote or manufacturer servers.<br>
          • Storage (hrs) — Approximate number of hours that can be stored locally.<br>
          • Storage (MB) — Approximate storage capacity in megabytes.<br><br>

          <b>Validation, Reliability & Usability</b><br>
          • Reliability & Validity Studies (n) — Number of studies validating signal quality or reliability.<br>
          • Usability Studies (n) — Number of independent usability or adherence studies.<br>
          • Reliability & Validity Evidence Level — Evidence quality for validation and reliability (external > internal > none).<br>
          • Usability Evidence Level — Evidence quality for usability (external > internal > none).<br><br>

          For full glossary, see sidebar&nbsp;<i class="fa fa-info-circle" style="color:#1c75bc;"></i>
        </div>
      `
    });

    // Show popover on hover
    button.on('mouseenter', function () {
      clearTimeout(timer);
      var btn = $(this);
      btn.popover('show');

      // Keep open when hovering the popover
      $(document).on('mouseenter', '#glossary-popover-prod', function () {
        clearTimeout(timer);
      });
      $(document).on('mouseleave', '#glossary-popover-prod', function () {
        timer = setTimeout(function () { btn.popover('hide'); }, 200);
      });
    });

    // Hide on mouseleave
    button.on('mouseleave', function () {
      var btn = $(this);
      timer = setTimeout(function () {
        if (!$('#glossary-popover-prod:hover').length) {
          btn.popover('hide');
        }
      }, 200);
    });
  }, 800);
});


// Feature

/* 3. Data*/

$(document).ready(function () {

  // delegate to document so it also works for dynamically added buttons
  var addinfoPopoverInitialized = false;

  function ensureAddinfoPopover(btn) {
    if (btn.data('bs.popover')) return;  // already initialized

    btn.popover({
      html: true,
      trigger: 'manual',
      placement: 'bottom',
      container: 'body',
      sanitize: false,
      template:
        '<div class="popover" role="tooltip" style="max-width:450px !important;">' +
        '<div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>',
      content: `
        <div id='addinfo-popover'
             style='max-height:240px; overflow-y:auto; overflow-x:hidden;
                    text-align:left; line-height:1.3; width:420px; padding-right:6px;'>
          <b>Optional additional information you can provide</b><br><br>

          <b>Costs & basic specs</b><br>
          • device_cost_info<br>
          • battery_life_spec_num_unit<br>
          • charging_duration_spec_num_unit<br>
          • charging_method_spec_char_value<br>
          • water_resistance_spec_char_value<br><br>

          <b>Signal sampling rates</b><br>
          • accelerometer_sampling_rate_max<br>
          • eda_sampling_rate_max<br>
          • ppg_sampling_rate_max<br>
          • skin_temperature_sampling_rate_max<br><br>

          <b>Signal details</b><br>
          • accelerometer_additional_info<br>
          • eda_additional_info<br>
          • other_signals_additional_info<br>
          • ppg_additional_info<br>
          • skin_temperature_additional_info<br><br>

          <b>Recording locations</b><br>
          • accelerometer_recording_location<br>
          • eda_recording_location<br>
          • ppg_recording_location<br>
          • skin_temperature_recording_location<br><br>

          <b>Compatibility & software (yes/no)</b><br>
          • android_compatible_spec_boel_value<br>
          • ios_compatible_spec_boel_value<br>
          • macos_compatible_spec_boel_value<br>
          • windows_compatible_spec_boel_value<br>
          • software_required_spec_boel_value<br>
          • software_additional_spec_boel_value<br><br>

          <b>Storage capacity</b><br>
          • dev_storage_cap_hr_spec_num_unit<br>
          • dev_storage_cap_mb_spec_num_unit<br><br>

          <b>Compatibility & software details</b><br>
          • android_compatible_spec_char_value<br>
          • ios_compatible_spec_char_value<br>
          • macos_compatible_spec_char_value<br>
          • windows_compatible_spec_char_value<br>
          • data_transfer_method_spec_char_value<br>
          • int_storage_met_spec_char_value<br>
          • server_data_storage_spec_char_value<br>
          • software_required_spec_char_value<br>
          • software_additional_spec_char_value<br>
          • parameters_available_spec_char_value<br>
          • parameters_resolution_spec_char_value<br><br>

          <b>Evidence & summaries</b><br>
          • validity_and_reliability_parameters_studied<br>
          • usability_parameters_studied<br>
          • validity_and_reliability_synthesis<br>
          • usability_synthesis<br>
          • usability_date_of_last_search<br>
          • validity_and_reliability_date_of_last_search<br><br>

          If relevant, preferred intermediary platform for data extraction and presentation (e.g. Fitrockr, Avicenna)<br><br>

          You do <b>not</b> need to provide all of these — any extra details you can share are helpful.
        </div>
      `
    });
  }

  var hideTimer = null;

  // Show popover on hover
  $(document).on('mouseenter', '.addinfo-info-btn', function () {
    var btn = $(this);
    clearTimeout(hideTimer);

    ensureAddinfoPopover(btn);
    btn.popover('show');

    $(document).on('mouseenter', '#addinfo-popover', function () {
      clearTimeout(hideTimer);
    });
    $(document).on('mouseleave', '#addinfo-popover', function () {
      hideTimer = setTimeout(function () { btn.popover('hide'); }, 200);
    });
  });

  // Hide on mouseleave
  $(document).on('mouseleave', '.addinfo-info-btn', function () {
    var btn = $(this);
    hideTimer = setTimeout(function () {
      if (!$('#addinfo-popover:hover').length) {
        btn.popover('hide');
      }
    }, 200);
  });

});


// Data submited
Shiny.addCustomMessageHandler("dataSubmitted", function(message) {
  showSiAMessage("Data submitted, thank you!", "Success");
});

/* 4. Research*/

/* 5. About*/

/* This function sets up the local install/run code copy button. */

document.addEventListener("DOMContentLoaded", function () {
  const btn = document.getElementById("copy_local_code_btn");
  if (btn) {
    btn.onclick = function () {
      const code = `# Install the SIA-WD golem package from GitHub
install.packages("remotes")
remotes::install_github("HugoGit39/siawd")

# Run the app
siawd::run_app()`;

      navigator.clipboard.writeText(code).then(() => {
        showSiAMessage("Code copied to clipboard!", "Success");
      });
    };
  }
});


/* 6. Contact*/

// Email submited
Shiny.addCustomMessageHandler("emailSubmitted", function(message) {
  showSiAMessage("Email submitted", "Success");
});






