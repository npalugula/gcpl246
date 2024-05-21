# The name of this view in Looker is "Irs 990 Ein"
view: irs_990_ein {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finance_data.irs_990_ein` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acct Pd" in Explore.

  dimension: acct_pd {
    type: number
    description: "Accounting Period"
    sql: ${TABLE}.acct_pd ;;
  }

  dimension: activity {
    type: number
    description: "Activity Codes"
    sql: ${TABLE}.activity ;;
  }

  dimension: affiliation {
    type: number
    description: "Affiliation Code"
    sql: ${TABLE}.affiliation ;;
  }

  dimension: asset_amt {
    type: number
    description: "Asset Amount"
    sql: ${TABLE}.asset_amt ;;
  }

  dimension: asset_cd {
    type: number
    description: "Asset Code"
    sql: ${TABLE}.asset_cd ;;
  }

  dimension: city {
    type: string
    description: "City"
    sql: ${TABLE}.city ;;
  }

  dimension: classification {
    type: number
    description: "Classification Code(s)"
    sql: ${TABLE}.classification ;;
  }

  dimension: deductibility {
    type: number
    description: "Deductibility Code"
    sql: ${TABLE}.deductibility ;;
  }

  dimension: ein {
    type: string
    description: "Employer Identification Number (EIN)"
    sql: ${TABLE}.ein ;;
  }

  dimension: filing_req_cd {
    type: number
    description: "Filing Requirement Code"
    sql: ${TABLE}.filing_req_cd ;;
  }

  dimension: foundation {
    type: number
    description: "Foundation Code"
    sql: ${TABLE}.foundation ;;
  }

  dimension: group {
    type: number
    description: "Group Exemption Number"
    sql: ${TABLE}.`group` ;;
  }

  dimension: ico {
    type: string
    description: "In Care of Name"
    sql: ${TABLE}.ico ;;
  }

  dimension: income_amt {
    type: number
    description: "Income Amount (includes negative sign if amount is negative)"
    sql: ${TABLE}.income_amt ;;
  }

  dimension: income_cd {
    type: number
    description: "Income Code"
    sql: ${TABLE}.income_cd ;;
  }

  dimension: name {
    type: string
    description: "Primary Name of Organization"
    sql: ${TABLE}.name ;;
  }

  dimension: ntee_cd {
    type: string
    description: "National Taxonomy of Exempt Entities (NTEE) Code"
    sql: ${TABLE}.ntee_cd ;;
  }

  dimension: organization {
    type: number
    description: "Organization Code"
    sql: ${TABLE}.organization ;;
  }

  dimension: pf_filing_req_cd {
    type: number
    description: "PF Filing Requirement Code"
    sql: ${TABLE}.pf_filing_req_cd ;;
  }

  dimension: revenue_amt {
    type: number
    description: "Form 990 Revenue Amount (includes negative sign if amount is negative)"
    sql: ${TABLE}.revenue_amt ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_revenue_amt {
    type: sum
    sql: ${revenue_amt} ;;  }
  measure: average_revenue_amt {
    type: average
    sql: ${revenue_amt} ;;  }

  dimension: ruling {
    type: number
    description: "Ruling Date"
    sql: ${TABLE}.ruling ;;
  }

  dimension: sort_name {
    type: string
    description: "Sort Name (Secondary Name Line)"
    sql: ${TABLE}.sort_name ;;
  }

  dimension: state {
    type: string
    description: "State"
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: number
    description: "Exempt Organization Status Code"
    sql: ${TABLE}.status ;;
  }

  dimension: street {
    type: string
    description: "Street Address"
    sql: ${TABLE}.street ;;
  }

  dimension: subsection {
    type: number
    description: "Subsection Code"
    sql: ${TABLE}.subsection ;;
  }

  dimension: tax_period {
    type: number
    description: "Tax Period"
    sql: ${TABLE}.tax_period ;;
  }

  dimension: zip {
    type: zipcode
    description: "Zip Code"
    sql: ${TABLE}.zip ;;
  }
  measure: count {
    type: count
    drill_fields: [sort_name, name]
  }
}
