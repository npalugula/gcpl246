- dashboard: pdf_download
  title: PDF_Download_1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: R1AyJrfQB6eEuEp0has2Qb
  elements:
  - title: PDF_Download
    name: PDF_Download
    model: finance_data
    explore: sp_stocks
    type: table
    fields: [sp_stocks.symbol, sp_stocks.low, sp_stocks.open]
    sorts: [sp_stocks.symbol]
    limit: 500000
    column_limit: 50
    query_timezone: Asia/Kolkata
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
