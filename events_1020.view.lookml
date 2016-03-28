- view: events_1020
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: c_ip
    type: string
    sql: ${TABLE}.c_ip

  - dimension: cs_bytes
    type: string
    sql: ${TABLE}.cs_bytes

  - dimension: cs_host
    type: string
    sql: ${TABLE}.cs_host

  - dimension: cs_method
    type: string
    sql: ${TABLE}.cs_method

  - dimension: cs_uri_path
    type: string
    sql: ${TABLE}.cs_uri_path

  - dimension: cs_uri_query
    type: string
    sql: ${TABLE}.cs_uri_query

  - dimension: cs_uri_scheme
    type: string
    sql: ${TABLE}.cs_uri_scheme

  - dimension: cs_user_agent
    type: string
    sql: ${TABLE}.cs_user_agent

  - dimension: cs_username
    type: string
    sql: ${TABLE}.cs_username

  - dimension: date_part
    type: string
    sql: ${TABLE}.date_part

  - dimension: day
    type: int
    sql: ${TABLE}.day

  - dimension: event_type_id
    type: int
    sql: ${TABLE}.event_type_id

  - dimension: host
    type: string
    sql: ${TABLE}.host

  - dimension: location
    type: string
    sql: ${TABLE}.`location`

  - dimension: month
    type: int
    sql: ${TABLE}.month

  - dimension: rs_content_type
    type: string
    sql: ${TABLE}.rs_content_type

  - dimension: s_action
    type: string
    sql: ${TABLE}.s_action

  - dimension: s_hierarchy
    type: string
    sql: ${TABLE}.s_hierarchy

  - dimension: s_ip
    type: string
    sql: ${TABLE}.s_ip

  - dimension: s_sitename
    type: string
    sql: ${TABLE}.s_sitename

  - dimension: s_supplier_name
    type: string
    sql: ${TABLE}.s_supplier_name

  - dimension: sc_bytes
    type: string
    sql: ${TABLE}.sc_bytes

  - dimension: sc_filter_category
    type: string
    sql: ${TABLE}.sc_filter_category

  - dimension: sc_filter_result
    type: string
    sql: ${TABLE}.sc_filter_result

  - dimension: sc_status
    type: string
    sql: ${TABLE}.sc_status

  - dimension: service
    type: string
    sql: ${TABLE}.service

  - dimension: tailed_file_byte_offset
    type: string
    sql: ${TABLE}.tailed_file_byte_offset

  - dimension: tailed_file_inode
    type: string
    sql: ${TABLE}.tailed_file_inode

  - dimension: tailed_file_path
    type: string
    sql: ${TABLE}.tailed_file_path

  - dimension: time_part
    type: string
    sql: ${TABLE}.time_part

  - dimension: time_taken
    type: string
    sql: ${TABLE}.time_taken

  - dimension: timestamp
    type: string
    sql: ${TABLE}.`timestamp`

  - dimension: ts
    type: number
    sql: ${TABLE}.ts

  - dimension: x_icap_error_code
    type: string
    sql: ${TABLE}.x_icap_error_code

  - dimension: x_icap_error_details
    type: string
    sql: ${TABLE}.x_icap_error_details

  - dimension: x_virus_details
    type: string
    sql: ${TABLE}.x_virus_details

  - dimension: x_virus_id
    type: string
    sql: ${TABLE}.x_virus_id

  - dimension: year
    type: int
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [id, cs_username, s_sitename, s_supplier_name]

