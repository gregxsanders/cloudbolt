view: jobs {
  sql_table_name: jobs_job ;;
  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: job_parameters_id {
    type: number
    sql: ${TABLE}.job_parameters_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: owner_id {
    type: number
    sql: ${TABLE}.owner_id ;;
  }
  dimension_group: start_date {
    type: time
    timeframes: [raw, date, time]
    sql: ${TABLE}.start_date ;;
  }

  dimension_group: end_date {
    type: time
    timeframes: [raw, date, time]
    sql: ${TABLE}.end_date ;;
  }

  dimension_group: created_date {
    type: time
    timeframes: [raw, date, time]
    sql: ${TABLE}.created_date ;;
  }

  dimension: output {
    type: string
    sql: ${TABLE}.output ;;
  }
  dimension: errors {
    type: string
    sql: ${TABLE}.errors ;;
  }
  dimension: tasks_done {
    type: number
    sql: ${TABLE}.tasks_done ;;
  }
  dimension: total_tasks {
    type: number
    sql: ${TABLE}.total_tasks ;;
  }
  dimension: rerun_job_id {
    type: number
    sql: ${TABLE}.rerun_job_id ;;
  }
  dimension: prereq_job_id {
    type: number
    sql: ${TABLE}.prereq_job_id ;;
  }

  dimension: parent_job_id {
    type: number
    sql: ${TABLE}.parent_job_id ;;
  }

  dimension: recurring_job_id {
    type: number
    sql: ${TABLE}.recurring_job_id ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: worker_pid {
    type: number
    sql: ${TABLE}.worker_pid ;;
  }

  dimension: can_be_requeued {
    type: number
    sql: ${TABLE}.can_be_requeued ;;
  }

  measure: count {
    type: count
  }



}

# id
# job_parameters_id
# type
# status
# owner_id
# start_date
# end_date
# output
# errors
# tasks_done
# total_tasks
# rerun_job_id
# prereq_job_id
# parent_job_id
# recurring_job_id
# label
# created_date
# worker_pid
# can_be_requeued
#
# int(11)
# int(11)
# varchar(50)
# varchar(10)
# int(11)
# datetime
# datetime
# longtext
# longtext
# int(10) unsigned
# int(10) unsigned
# int(11)
# int(11)
# int(11)
# int(11)
# varchar(256)
# datetime(6)
# int(10) unsigned
# tinyint(1)
