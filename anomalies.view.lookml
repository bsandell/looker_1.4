- view: anomalies
  fields:

  - dimension: day
    type: int
    sql: ${TABLE}.day

  - dimension: event_location
    type: string
    sql: ${TABLE}.event_location

  - dimension: event_type_id
    type: int
    sql: ${TABLE}.event_type_id

  - dimension: host
    type: string
    sql: ${TABLE}.host

  - dimension: metric_name
    type: string
    sql: ${TABLE}.metric_name

  - dimension: month
    type: int
    sql: ${TABLE}.month

  - dimension: service
    type: string
    sql: ${TABLE}.service

  - dimension: severity
    type: number
    sql: ${TABLE}.severity

  - dimension: ts
    type: number
    sql: ${TABLE}.ts

  - dimension: year
    type: int
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [metric_name]

