# The name of this view in Looker is "Cfips Location"
view: cfips_location {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finance_data.cfips_location` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimen. sion is a groupable field that can be used to filter query results.
    # This dimension will be called "Cfips" in Explore.

  dimension: cfips {
    type: number
    sql: ${TABLE}.cfips ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cfips {
    type: sum
    sql: ${cfips} ;;  }
  measure: average_cfips {
    type: average
    sql: ${cfips} ;;  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
