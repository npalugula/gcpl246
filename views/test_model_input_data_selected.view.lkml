# The name of this view in Looker is "Test Model Input Data Selected"
view: test_model_input_data_selected {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finance_data.test_model_input_data_selected` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Irs 990 2016 Advrtpromo" in Explore.

  dimension: irs_990_2016_advrtpromo {
    type: number
    sql: ${TABLE}.irs_990_2016_advrtpromo ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_irs_990_2016_advrtpromo {
    type: sum
    sql: ${irs_990_2016_advrtpromo} ;;  }
  measure: average_irs_990_2016_advrtpromo {
    type: average
    sql: ${irs_990_2016_advrtpromo} ;;  }

  dimension: irs_990_2016_compnsatncurrofcr {
    type: number
    sql: ${TABLE}.irs_990_2016_compnsatncurrofcr ;;
  }

  dimension: irs_990_2016_count {
    type: number
    sql: ${TABLE}.irs_990_2016_count ;;
  }
  measure: count {
    type: count
  }
}
