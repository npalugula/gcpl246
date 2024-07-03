# The name of this view in Looker is "Electronics Sales"
view: electronics_sales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finance_data.Electronics_Sales` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Brand" in Explore.

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  parameter: filter_test {
    type: date
  }
  dimension: date_1 {
    type: date
    sql: {% parameter filter_test %} ;;
  }
  filter: category_filter {
    type: string
    suggest_dimension:  category
    sql: select distinct ${TABLE}.category  from ${TABLE} where ${TABLE}.category like 'C%' ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;
  }

  dimension: model_attr {
    type: string
    sql: ${TABLE}.model_attr ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_rating {
    type: sum
    sql: ${rating} ;;  }
  measure: average_rating {
    type: average
    sql: ${rating} ;;  }

  dimension: split {
    type: number
    sql: ${TABLE}.split ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: timestamp {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.timestamp ;;
  }

  dimension: user_attr {
    type: string
    sql: ${TABLE}.user_attr ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
    drill_fields: [users.last_name, users.id, users.first_name]
  }
}
