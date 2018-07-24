view: jobs_job {
  sql_table_name: cloudbolt.jobs_job ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: can_be_requeued {
    type: yesno
    sql: ${TABLE}.can_be_requeued ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_date ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_date ;;
  }

  dimension: errors {
    type: string
    sql: ${TABLE}.errors ;;
  }

  dimension: job_parameters_id {
    type: number
    sql: ${TABLE}.job_parameters_id ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: output {
    type: string
    sql: ${TABLE}.output ;;
  }

  dimension: owner_id {
    type: number
    sql: ${TABLE}.owner_id ;;
  }

  dimension: parent_job_id {
    type: number
    sql: ${TABLE}.parent_job_id ;;
  }

  dimension: prereq_job_id {
    type: number
    sql: ${TABLE}.prereq_job_id ;;
  }

  dimension: recurring_job_id {
    type: number
    sql: ${TABLE}.recurring_job_id ;;
  }

  dimension: rerun_job_id {
    type: number
    sql: ${TABLE}.rerun_job_id ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tasks_done {
    type: number
    sql: ${TABLE}.tasks_done ;;
  }

  dimension: total_tasks {
    type: number
    sql: ${TABLE}.total_tasks ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: worker_pid {
    type: number
    value_format_name: id
    sql: ${TABLE}.worker_pid ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
