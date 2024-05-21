
- dashboard: maps_viz_testing
  title: maps_viz_testing
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 33jbSC8pETdpG31g4mQGwW
  elements:
  - title: maps_viz_testing
    name: maps_viz_testing
    model: finance_data
    explore: world_aqi
    type: looker_google_map
    fields: [world_aqi.lat, world_aqi.lng, world_aqi.city, world_aqi.location_1, world_aqi.average_aqi_value,
      world_aqi.co_aqi_category, world_aqi.co_aqi_value, world_aqi.country, world_aqi.aqi_value]
    filters: {}
    sorts: [world_aqi.lat]
    limit: 50
    column_limit: 50
    total: true
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map_plot_mode: lines
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_latitude: 50
    map_longitude: 2
    map_zoom: 2
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_scale_indicator: 'off'
    defaults_version: 0
    listen:
      Country: world_aqi.country
    row: 0
    col: 0
    width: 24
    height: 12
  - title: New Tile
    name: New Tile
    model: finance_data
    explore: world_aqi
    type: looker_column
    fields: [world_aqi.lat, world_aqi.lng, world_aqi.city]
    filters:
      world_aqi.city: "%m%"
    sorts: [world_aqi.lat]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: world_aqi.country
    row: 12
    col: 0
    width: 8
    height: 6
  - title: maps_viz_testing (Copy 3)
    name: maps_viz_testing (Copy 3)
    model: finance_data
    explore: world_aqi
    type: looker_google_map
    fields: [world_aqi.lat, world_aqi.lng, world_aqi.city, world_aqi.location_1]
    filters: {}
    sorts: [world_aqi.lat]
    limit: 50
    column_limit: 50
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    listen:
      Country: world_aqi.country
    row: 42
    col: 0
    width: 24
    height: 12
  - title: maps_viz_testing (Copy)
    name: maps_viz_testing (Copy)
    model: finance_data
    explore: world_aqi
    type: looker_google_map
    fields: [world_aqi.lat, world_aqi.lng, world_aqi.city, world_aqi.location_1]
    filters: {}
    sorts: [world_aqi.lat]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    listen:
      Country: world_aqi.country
    row: 18
    col: 0
    width: 24
    height: 12
  - title: maps_viz_testing (Copy 2)
    name: maps_viz_testing (Copy 2)
    model: finance_data
    explore: world_aqi
    type: looker_google_map
    fields: [world_aqi.lat, world_aqi.lng, world_aqi.city, world_aqi.location_1]
    filters: {}
    sorts: [world_aqi.lat]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map_plot_mode: areas
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    listen:
      Country: world_aqi.country
    row: 30
    col: 0
    width: 24
    height: 12
  - title: New Tile (Copy)
    name: New Tile (Copy)
    model: finance_data
    explore: world_aqi
    type: looker_column
    fields: [world_aqi.lat, world_aqi.lng, world_aqi.city]
    filters:
      world_aqi.city: "%m%"
    sorts: [world_aqi.lat]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: world_aqi.country
    row: 54
    col: 0
    width: 8
    height: 6
  - title: New Tile (Copy 2)
    name: New Tile (Copy 2)
    model: finance_data
    explore: world_aqi
    type: looker_column
    fields: [world_aqi.lat, world_aqi.lng, world_aqi.city]
    filters:
      world_aqi.city: "%m%"
    sorts: [world_aqi.lat]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: world_aqi.country
    row: 54
    col: 8
    width: 8
    height: 6
  - title: New Tile (Copy 3)
    name: New Tile (Copy 3)
    model: finance_data
    explore: world_aqi
    type: looker_column
    fields: [world_aqi.lat, world_aqi.lng, world_aqi.city]
    filters:
      world_aqi.city: "%m%"
    sorts: [world_aqi.lat]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: world_aqi.country
    row: 54
    col: 16
    width: 8
    height: 6
  - title: New Tile (Copy 4)
    name: New Tile (Copy 4)
    model: finance_data
    explore: world_aqi
    type: looker_column
    fields: [world_aqi.lat, world_aqi.lng, world_aqi.city]
    filters:
      world_aqi.city: "%m%"
    sorts: [world_aqi.lat]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Country: world_aqi.country
    row: 60
    col: 0
    width: 8
    height: 6
  - title: Maps line tile
    name: Maps line tile
    model: finance_data
    explore: world_aqi
    type: looker_google_map
    fields: [world_aqi.location_1, world_aqi.location_2, world_aqi.aqi_value]
    filters: {}
    sorts: [world_aqi.location_1]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map_plot_mode: lines
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    map: usa
    map_projection: ''
    quantize_colors: false
    listen:
      Country: world_aqi.country
    row: 60
    col: 8
    width: 8
    height: 6
  filters:
  - name: Country
    title: Country
    type: field_filter
    default_value: India
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: finance_data
    explore: world_aqi
    listens_to_filters: []
    field: world_aqi.country
