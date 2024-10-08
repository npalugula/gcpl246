# The name of this view in Looker is "Products"
view: products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finance_data.products` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Brand" in Explore.

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cost {
    type: sum
    sql: ${cost} ;;  }
  measure: average_cost {
    type: average
    sql: ${cost} ;;  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: distribution_center_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.distribution_center_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  name,
  distribution_centers.name,
  distribution_centers.id,
  inventory_items.count,
  order_items.count,
  cost,
  department,
  retail_price
  ]
  }
  set: ext {fields:[brand]}
  set: all {fields:[detail*,sku,brand,ext*]}

  dimension: test_html_products {
    type: string
    sql: ${sku} ;;
    html:
    <div> {% if id._value == 14235 %} <br> <span style="color: red"> Data is Delayed </span> {% endif %}
    <br>{{rendered_value}}</div>
    ;;
  }

}

view: product_ext {
  extends: [products]

  dimension: brand {
    view_label: "product_ext_1"
    group_label: ""
    label: "product_ext_1"
    group_item_label: "product_ext"
  }
  dimension: brand1 {
    view_label: "product_ext_1"
    group_label: ""
    label: "product_ext_1"
    group_item_label: "product_ext"
  }
  dimension: brand2 {
    view_label: "product_ext_1"
    group_label: ""
    label: "product_ext_1"
    group_item_label: "product_ext"
  }
}
