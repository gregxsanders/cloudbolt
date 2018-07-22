connection: "cloudboltx"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: cloudbolt_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: jobs {}

persist_with: cloudbolt_default_datagroup
