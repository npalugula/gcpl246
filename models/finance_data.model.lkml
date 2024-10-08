# Define the database connection to be used for this model.
connection: "finance_data"

# include all the views
include: "/views/**/*.view.lkml"
include: "/views/**/*.*"
# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: finance_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: finance_data_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Finance Data"

explore: electronics_sales {
  join: users {
    type: left_outer
    sql_on: ${electronics_sales.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
 # always_filter:  {
  #  filters: [brand: "Apple"]
   #}


}

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: distribution_centers {}

explore: bqml_model_info {}

explore: sp_stocks {}

explore: imdb_data {}

explore: inventory_items {
  join: products {
    type: left_outer
    fields: [products.test_html_products]
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: connection_reg_r3 {}

explore: cfips_location {}

explore: events {
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: employee {}

explore: irs_990_2013 {}

explore: irs_990_2016 {}

explore: irs_990_2012 {}

explore: irs_990_2014 {}

explore: irs_990_2015 {}

explore: irs_990_ez_2012 {}

explore: irs_990_2017 {}

explore: irs_990_ein {}

explore: irs_990_ez_2015 {}

explore: irs_990_ez_2013 {}

explore: irs_990_ez_2014 {}

explore: irs_990_ez_2017 {}

explore: irs_990_ez_2016 {}

explore: irs_990_pf_2013 {}

explore: irs_990_pf_2012 {}

explore: irs_990_pf_2014 {}

explore: order_items {
  join: users {
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${order_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: irs_990_pf_2016 {}

explore: irs_990_pf_2015 {}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: products {
  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
  hidden:  yes
  group_label: "Master Data"
  label: "Time Periods"
  description: "This explore contains the heirarchy information starting from the day"
  fields: [products.all*,products.count]
}

explore: tab {
    join: tab__addresses {
      view_label: "Tab: Addresses"
      sql: LEFT JOIN UNNEST(${tab.addresses}) as tab__addresses ;;
      relationship: one_to_many
    }
}

explore: test_model_input_data_model_training {}

explore: temporary {}

explore: users {}

explore: test_model_input_data_selected {}

explore: world_aqi {}
