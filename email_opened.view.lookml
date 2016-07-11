- view: email_opened
  sql_table_name: klaviyo.email_opened
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: campaign_id
    type: string
    sql: ${TABLE}.campaign_id

  - dimension: campaign_name
    type: string
    sql: ${TABLE}.campaign_name

  - dimension: context_ip
    hidden: true
    type: string
    sql: ${TABLE}.context_ip

  - dimension: context_library_name
    hidden: true
    type: string
    sql: ${TABLE}.context_library_name

  - dimension: context_library_version
    hidden: true
    type: string
    sql: ${TABLE}.context_library_version

  - dimension: context_traits_client_id
    hidden: true
    type: number
    sql: ${TABLE}.context_traits_client_id

  - dimension: context_traits_email
    view_label: "Email Address"
    type: string
    sql: ${TABLE}.context_traits_email

  - dimension: context_user_agent
    type: string
    sql: ${TABLE}.context_user_agent

  - dimension: email_id
    type: string
    sql: ${TABLE}.email_id

  - dimension: email_subject
    type: string
    sql: ${TABLE}.email_subject

  - dimension: event
    hidden: true
    type: string
    sql: ${TABLE}.event

  - dimension: event_text
    view_label: "Event"
    type: string
    sql: ${TABLE}.event_text

  - dimension_group: original_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.original_timestamp

  - dimension_group: received
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.received_at

  - dimension_group: sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.sent_at

  - dimension_group: timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.timestamp

  - dimension: user_id
    type: string
    sql: ${TABLE}.user_id

  - dimension: uuid
    hidden: true
    type: number
    value_format_name: id
    sql: ${TABLE}.uuid

  - dimension_group: uuid_ts
    hidden: true
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.uuid_ts

  - measure: count
    type: count
    drill_fields: [id, campaign_name, context_library_name]

