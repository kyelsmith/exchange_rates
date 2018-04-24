connection: "exchangerates-tincandev"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: exchange_rates_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: exchange_rates_default_datagroup

explore: fixer {}

explore: xe {}
