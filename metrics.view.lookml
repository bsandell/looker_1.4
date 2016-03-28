- view: metrics
  fields:

  - dimension: avg
    type: number
    sql: ${TABLE}.avg

  - dimension: count
    type: number
    sql: ${TABLE}.`count`

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

  - dimension: max
    type: number
    sql: ${TABLE}.max

  - dimension: min
    type: number
    sql: ${TABLE}.min

  - dimension: month
    type: int
    sql: ${TABLE}.month

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: service
    type: string
    sql: ${TABLE}.service

  - dimension: sum
    type: number
    sql: ${TABLE}.`sum`

  - dimension: ts
    type: number
    sql: ${TABLE}.ts

  - dimension: type
    type: int
    sql: ${TABLE}.type

  - dimension: value
    type: number
    sql: ${TABLE}.value

  - dimension: window
    type: number
    sql: ${TABLE}.window

  - dimension: window_copy
    type: number
    sql: ${TABLE}.window_copy

  - dimension: year
    type: int
    sql: ${TABLE}.year

  - measure: counts
    type: count
    drill_fields: [name]

