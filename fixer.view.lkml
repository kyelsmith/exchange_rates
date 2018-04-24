view: fixer {
  sql_table_name: exchange_rates.Fixer ;;

  dimension: base_currency {
    type: string
    sql: ${TABLE}.baseCurrency ;;
  }

  dimension: compare_currency {
    type: string
    sql: ${TABLE}.compareCurrency ;;
  }

  dimension: compare_rate {
    type: number
    sql: ${TABLE}.compareRate ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.dateTime ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
