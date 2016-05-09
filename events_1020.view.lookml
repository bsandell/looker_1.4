- view: events_1020
  suggestions: false
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: c_ip
    type: string
    sql: ${TABLE}.attr_c_ip

  - dimension: cs_bytes
    type: string
    sql: ${TABLE}.attr_cs_bytes

  - dimension: cs_host
    type: string
    sql: ${TABLE}.attr_cs_host

  - dimension: cs_method
    type: string
    sql: ${TABLE}.attr_cs_method

  - dimension: cs_uri_path
    type: string
    sql: ${TABLE}.attr_cs_uri_path

  - dimension: cs_uri_query
    type: string
    sql: ${TABLE}.attr_cs_uri_query

  - dimension: cs_uri_scheme
    type: string
    sql: ${TABLE}.attr_cs_uri_scheme

  - dimension: cs_user_agent
    type: string
    sql: ${TABLE}.attr_cs_user_agent

  - dimension: cs_username
    type: string
    sql: ${TABLE}.attr_cs_username

  - dimension: date_part
    type: string
    sql: ${TABLE}.attr_date_part

  - dimension: day
    type: number
    sql: ${TABLE}.day

  - dimension: event_type_id
    type: number
    sql: ${TABLE}.event_type_id

  - dimension: host
    type: string
    sql: ${TABLE}.host

  - dimension: location
    type: string
    sql: ${TABLE}.`location`

  - dimension: month
    type: number
    sql: ${TABLE}.month

  - dimension: rs_content_type
    type: string
    sql: ${TABLE}.attr_rs_content_type

  - dimension: s_action
    type: string
    sql: ${TABLE}.attr_s_action

  - dimension: s_hierarchy
    type: string
    sql: ${TABLE}.attr_s_hierarchy

  - dimension: s_ip
    type: string
    sql: ${TABLE}.attr_s_ip

  - dimension: s_sitename
    type: string
    sql: ${TABLE}.attr_s_sitename

  - dimension: s_supplier_name
    type: string
    sql: ${TABLE}.attr_s_supplier_name

  - dimension: sc_bytes
    type: string
    sql: ${TABLE}.attr_sc_bytes

  - dimension: sc_filter_category
    type: string
    sql: ${TABLE}.attr_sc_filter_category

  - dimension: sc_filter_result
    type: string
    sql: ${TABLE}.attr_sc_filter_result

  - dimension: sc_status
    type: string
    sql: ${TABLE}.attr_sc_status

  - dimension: service
    type: string
    sql: ${TABLE}.service

  - dimension: tailed_file_byte_offset
    type: string
    sql: ${TABLE}.attr_tailed_file_byte_offset

  - dimension: tailed_file_inode
    type: string
    sql: ${TABLE}.attr_tailed_file_inode

  - dimension: tailed_file_path
    type: string
    sql: ${TABLE}.attr_tailed_file_path

  - dimension: time_part
    type: string
    sql: ${TABLE}.attr_time_part

  - dimension: time_taken
    type: string
    sql: ${TABLE}.attr_time_taken

  - dimension: timestamp
    type: string
    sql: ${TABLE}.`timestamp`

  - dimension: ts
    type: number
    sql: ${TABLE}.ts

  - dimension: x_icap_error_code
    type: string
    sql: ${TABLE}.attr_x_icap_error_code

  - dimension: x_icap_error_details
    type: string
    sql: ${TABLE}.attr_x_icap_error_details

  - dimension: x_virus_details
    type: string
    sql: ${TABLE}.attr_x_virus_details

  - dimension: x_virus_id
    type: string
    sql: ${TABLE}.attr_x_virus_id
    
  - dimension: geoip_data
    type: string
    sql: ${TABLE}.attr_geoip
    
  - dimension: geoip_city
    type: string
    sql: ${TABLE}.attr_geoip_city
    
  - dimension: geoip_country
    type: string
    sql: ${TABLE}.attr_geoip_country
    
  - dimension: geoip_latitude
    type: string
    sql: ${TABLE}.attr_geoip_latitude
    
  - dimension: geoip_longitude
    type: string
    sql: ${TABLE}.attr_geoip_longitude

  - dimension: geoip_zipcode
    type: string
    sql: ${TABLE}.attr_geoip_zipcode

  - dimension: geoip_timezone
    type: string
    sql: ${TABLE}.attr_geoip_timezone

  - dimension: ip_location
    type: location
    sql_latitude: ${geoip_latitude}
    sql_longitude: ${geoip_longitude}
    
  - dimension: year
    type: number
    sql: ${TABLE}.year
    
  - dimension: previous_day_year
    type: int
    sql: extract(year from days_sub(now(), 1))
    
  - dimension: previous_day_month
    type: int
    sql: extract(month from days_sub(now(), 1))

  - dimension: previous_day_day
    type: int
    sql: extract(day from days_sub(now(), 1))
    
  - dimension: is_yesterday_ts
    type: yesno
    sql: from_unixtime(round(${ts}/1000),"yyyy-MM-dd") = trunc(subdate(now(), 1), 'HH')
    
  - dimension: is_yesterday
    type: yesno
    sql: (${previous_day_year} = ${year}) AND (${previous_day_month} = ${month}) AND (${previous_day_day} = ${day})

  - measure: count
    type: count
    drill_fields: [id, cs_username, s_sitename, s_supplier_name]

