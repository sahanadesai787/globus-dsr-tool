GLOBUS DAILY SALES REPORT AUTOMATION TOOL
========================================

WHAT THIS DOES
- Reads your Unicommerce Sales Order Report.
- Maps EAN/ICODE, style, size, Cat 1-4 and Myntra ID from Globus Cataloging.
- Maps Vendor Cost from Season Change Bucket first, then Item Master fallback.
- Maps channel names from Channel Master and dates to Week using Week Master.
- Calculates TTL QTY, TTL ESP, TTL MRP, TTL Vendor Cost and TTL RGM.
- Produces an Excel workbook with DSR, Mapping Check, Run Summary and Files Used tabs.
- Saves master files locally so they do not need to be uploaded every day.

FIRST-TIME SETUP (Windows)
1. Extract the ZIP to a normal folder, such as Documents\Globus_DSR_Tool.
2. Install Python 3.11 or newer if it is not already installed:
   https://www.python.org/downloads/
   During installation, tick the option to add Python to PATH if shown.
3. Double-click run_dsr_tool.bat.
4. On the first run, the tool creates a local .venv folder and installs its packages. Internet is needed only for this first setup (and package refreshes).
5. The tool opens in your browser at a local address on your own computer.
6. Upload these files together the first time:
   - Sales Order Report (e.g. sales order details.xlsx)
   - Item Master
   - Channel Master
   - Globus Cataloging
   - Season Change Bucket with Vendor Cost (CSV or Excel)
   - Week Master
   - Myntra MTD Sales Report is optional for the current 22-column DSR.
7. Click Generate DSR Excel and then Download DSR Excel.

DAILY USE AFTER FIRST SETUP
1. Double-click run_dsr_tool.bat.
2. Upload only today's new Sales Order Report.
3. Click Generate DSR Excel and download the output.
4. If any master file changes, upload the new version too. It replaces the saved copy for future runs.

WHERE MASTERS ARE SAVED
Master files are kept in the saved_masters folder inside this tool folder. Keep this folder if you want saved masters to persist. The app processes files locally and does not upload them to an external service.

OUTPUT WORKBOOK TABS
- DSR: the 22 columns requested for the daily report.
- Mapping Check: sales rows requiring review due to missing catalog, cost, channel or week mapping.
- Run Summary: mapping/calculation coverage counts and method notes.
- Files Used: names of the source files used for the run.

IMPORTANT MAPPING NOTES
- TTL QTY is set to 1 per source sales-order item row, following the supplied mapping instructions.
- TTL ESP follows the channel-specific rules in the supplied instructions. Currency conversion is used for NOON/NAMSHI channels as documented.
- Vendor Cost uses the current Season Change Bucket first, then Item Master fallback.
- The tool uses the first worksheet in each Excel file.
- Missing mappings are flagged rather than silently guessed. Review the Mapping Check tab before sharing the DSR.
- The current DSR has the 22 columns from your request. The optional Myntra MTD report is retained for future enhancement; Myntra ID currently maps from Globus Cataloging Style ID (column T as instructed).

TROUBLESHOOTING
- If a file is not recognized automatically, use the "Confirm file matching" section after uploading and assign the correct role.
- If a master is missing, upload it once and tick "Remember uploaded master files".
- If the tool cannot open an old .xls file, convert it to .xlsx and upload again.
