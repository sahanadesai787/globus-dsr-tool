 DSR Automation Tool

**An Excel-Based Daily Sales Reporting Automation Application**

## Overview

Smart DSR Automation Tool is a Python-based web application designed to simplify the preparation of Daily Sales Reports (DSR). It processes sales order data and maps relevant information from multiple master files to generate a structured Excel report.

The application aims to reduce repetitive manual work, improve data consistency, and simplify daily reporting workflows.

## Key Features

- **Multi-File Upload:** Upload sales order reports and supporting master files through a web interface.
- **Automated Data Mapping:** Map product, category, style, size, channel, vendor cost, and week information using reference files.
- **Sales Calculations:** Calculate applicable metrics, including Total Vendor Cost, Total Quantity, Total ESP, Total MRP, and Total RGM.
- **Data Validation:** Identify missing mappings and unmatched records for review.
- **Excel Report Generation:** Generate and download the processed DSR in Excel format.
- **Daily Reusability:** Process new sales order data using the relevant master files without manually rebuilding the report each day.

## Technology Stack

| Technology | Purpose |
|---|---|
| Python | Application logic and data processing |
| Streamlit | Interactive web interface |
| Pandas | Data manipulation and transformation |
| OpenPyXL | Excel file processing and report generation |

## Application Workflow

1. Upload the daily Sales Order Report.
2. Upload the required product and reference master files.
3. Process the sales data and perform the applicable mappings.
4. Calculate the required sales metrics.
5. Review missing or unmatched records.
6. Generate and download the output DSR Excel file.

## Project Structure

```text
smart-dsr-tool/
├── app.py
├── requirements.txt
└── README.md
```

Additional files and modules may be included depending on the implementation.

## Installation and Setup

### Prerequisites

- Python 3.10 or a compatible version supported by the project dependencies
- pip package manager

### Run Locally

**1. Clone the repository**

```bash
git clone https://github.com/YOUR_USERNAME/smart-dsr-tool.git
cd smart-dsr-tool
```

Replace `YOUR_USERNAME` with your GitHub username.

**2. Install dependencies**

```bash
pip install -r requirements.txt
```

**3. Launch the application**

```bash
streamlit run app.py
```

**4. Open the application**

Open the local URL displayed in the terminal, usually `http://localhost:8501`.

## Deployment

The application can be deployed using Streamlit Community Cloud by connecting the GitHub repository, selecting the appropriate branch and application entry point, and configuring the required dependencies.

## Data
