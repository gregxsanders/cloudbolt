- connection: cloudboltx

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- datagroup: cloudbolt_default_datagroup
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"

- persist_with: cloudbolt_default_datagroup

