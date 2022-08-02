# The name of this view in Looker is "Observation"
view: observation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.fhir_synthea.observation`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: based_on {
    hidden: yes
    sql: ${TABLE}.basedOn ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Body Site Coding" in Explore.

  dimension: body_site__coding {
    hidden: yes
    sql: ${TABLE}.bodySite.coding ;;
    group_label: "Body Site"
    group_item_label: "Coding"
  }

  dimension: body_site__text {
    type: string
    sql: ${TABLE}.bodySite.text ;;
    group_label: "Body Site"
    group_item_label: "Text"
  }

  dimension: category {
    hidden: yes
    sql: ${TABLE}.category ;;
  }

  dimension: code__coding {
    hidden: yes
    sql: ${TABLE}.code.coding ;;
    group_label: "Code"
    group_item_label: "Coding"
  }

  dimension: code__text {
    type: string
    sql: ${TABLE}.code.text ;;
    group_label: "Code"
    group_item_label: "Text"
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension: component {
    hidden: yes
    sql: ${TABLE}.component ;;
  }

  dimension: context__display {
    type: string
    sql: ${TABLE}.context.display ;;
    group_label: "Context"
    group_item_label: "Display"
  }

  dimension: context__encounter_id {
    type: string
    sql: ${TABLE}.context.encounterId ;;
    group_label: "Context"
    group_item_label: "Encounter ID"
  }

  dimension: context__episode_of_care_id {
    type: string
    sql: ${TABLE}.context.episodeOfCareId ;;
    group_label: "Context"
    group_item_label: "Episode of Care ID"
  }

  dimension: context__identifier__assigner__display {
    type: string
    sql: ${TABLE}.context.identifier.assigner.display ;;
    group_label: "Context Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: context__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.assigner.display ;;
    group_label: "Context Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: context__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Context Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: context__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Context Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: context__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.period.`end` ;;
    group_label: "Context Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: context__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.period.start ;;
    group_label: "Context Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: context__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.system ;;
    group_label: "Context Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: context__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.context.identifier.assigner.identifier.type.coding ;;
    group_label: "Context Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: context__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.type.text ;;
    group_label: "Context Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: context__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.use ;;
    group_label: "Context Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: context__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.value ;;
    group_label: "Context Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: context__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.context.identifier.assigner.organizationId ;;
    group_label: "Context Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: context__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.context.identifier.assigner.reference ;;
    group_label: "Context Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: context__identifier__period__end {
    type: string
    sql: ${TABLE}.context.identifier.period.`end` ;;
    group_label: "Context Identifier Period"
    group_item_label: "End"
  }

  dimension: context__identifier__period__start {
    type: string
    sql: ${TABLE}.context.identifier.period.start ;;
    group_label: "Context Identifier Period"
    group_item_label: "Start"
  }

  dimension: context__identifier__system {
    type: string
    sql: ${TABLE}.context.identifier.system ;;
    group_label: "Context Identifier"
    group_item_label: "System"
  }

  dimension: context__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.context.identifier.type.coding ;;
    group_label: "Context Identifier Type"
    group_item_label: "Coding"
  }

  dimension: context__identifier__type__text {
    type: string
    sql: ${TABLE}.context.identifier.type.text ;;
    group_label: "Context Identifier Type"
    group_item_label: "Text"
  }

  dimension: context__identifier__use {
    type: string
    sql: ${TABLE}.context.identifier.use ;;
    group_label: "Context Identifier"
    group_item_label: "Use"
  }

  dimension: context__identifier__value {
    type: string
    sql: ${TABLE}.context.identifier.value ;;
    group_label: "Context Identifier"
    group_item_label: "Value"
  }

  dimension: context__reference {
    type: string
    sql: ${TABLE}.context.reference ;;
    group_label: "Context"
    group_item_label: "Reference"
  }

  dimension: data_absent_reason__coding {
    hidden: yes
    sql: ${TABLE}.dataAbsentReason.coding ;;
    group_label: "Data Absent Reason"
    group_item_label: "Coding"
  }

  dimension: data_absent_reason__text {
    type: string
    sql: ${TABLE}.dataAbsentReason.text ;;
    group_label: "Data Absent Reason"
    group_item_label: "Text"
  }

  dimension: device__device_id {
    type: string
    sql: ${TABLE}.device.deviceId ;;
    group_label: "Device"
    group_item_label: "Device ID"
  }

  dimension: device__device_metric_id {
    type: string
    sql: ${TABLE}.device.deviceMetricId ;;
    group_label: "Device"
    group_item_label: "Device Metric ID"
  }

  dimension: device__display {
    type: string
    sql: ${TABLE}.device.display ;;
    group_label: "Device"
    group_item_label: "Display"
  }

  dimension: device__identifier__assigner__display {
    type: string
    sql: ${TABLE}.device.identifier.assigner.display ;;
    group_label: "Device Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: device__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.device.identifier.assigner.identifier.assigner.display ;;
    group_label: "Device Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: device__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.device.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Device Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: device__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.device.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Device Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: device__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.device.identifier.assigner.identifier.period.`end` ;;
    group_label: "Device Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: device__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.device.identifier.assigner.identifier.period.start ;;
    group_label: "Device Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: device__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.device.identifier.assigner.identifier.system ;;
    group_label: "Device Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: device__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.device.identifier.assigner.identifier.type.coding ;;
    group_label: "Device Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: device__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.device.identifier.assigner.identifier.type.text ;;
    group_label: "Device Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: device__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.device.identifier.assigner.identifier.use ;;
    group_label: "Device Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: device__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.device.identifier.assigner.identifier.value ;;
    group_label: "Device Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: device__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.device.identifier.assigner.organizationId ;;
    group_label: "Device Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: device__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.device.identifier.assigner.reference ;;
    group_label: "Device Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: device__identifier__period__end {
    type: string
    sql: ${TABLE}.device.identifier.period.`end` ;;
    group_label: "Device Identifier Period"
    group_item_label: "End"
  }

  dimension: device__identifier__period__start {
    type: string
    sql: ${TABLE}.device.identifier.period.start ;;
    group_label: "Device Identifier Period"
    group_item_label: "Start"
  }

  dimension: device__identifier__system {
    type: string
    sql: ${TABLE}.device.identifier.system ;;
    group_label: "Device Identifier"
    group_item_label: "System"
  }

  dimension: device__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.device.identifier.type.coding ;;
    group_label: "Device Identifier Type"
    group_item_label: "Coding"
  }

  dimension: device__identifier__type__text {
    type: string
    sql: ${TABLE}.device.identifier.type.text ;;
    group_label: "Device Identifier Type"
    group_item_label: "Text"
  }

  dimension: device__identifier__use {
    type: string
    sql: ${TABLE}.device.identifier.use ;;
    group_label: "Device Identifier"
    group_item_label: "Use"
  }

  dimension: device__identifier__value {
    type: string
    sql: ${TABLE}.device.identifier.value ;;
    group_label: "Device Identifier"
    group_item_label: "Value"
  }

  dimension: device__reference {
    type: string
    sql: ${TABLE}.device.reference ;;
    group_label: "Device"
    group_item_label: "Reference"
  }

  dimension: effective__date_time {
    type: string
    sql: ${TABLE}.effective.dateTime ;;
    group_label: "Effective"
    group_item_label: "Date Time"
  }

  dimension: effective__period__end {
    type: string
    sql: ${TABLE}.effective.period.`end` ;;
    group_label: "Effective Period"
    group_item_label: "End"
  }

  dimension: effective__period__start {
    type: string
    sql: ${TABLE}.effective.period.start ;;
    group_label: "Effective Period"
    group_item_label: "Start"
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: implicit_rules {
    type: string
    sql: ${TABLE}.implicitRules ;;
  }

  dimension: interpretation__coding {
    hidden: yes
    sql: ${TABLE}.interpretation.coding ;;
    group_label: "Interpretation"
    group_item_label: "Coding"
  }

  dimension: interpretation__text {
    type: string
    sql: ${TABLE}.interpretation.text ;;
    group_label: "Interpretation"
    group_item_label: "Text"
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: issued {
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
    sql: ${TABLE}.issued ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension_group: meta__last_updated {
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
    sql: ${TABLE}.meta.lastUpdated ;;
  }

  dimension: meta__profile {
    hidden: yes
    sql: ${TABLE}.meta.profile ;;
    group_label: "Meta"
    group_item_label: "Profile"
  }

  dimension: meta__security {
    hidden: yes
    sql: ${TABLE}.meta.security ;;
    group_label: "Meta"
    group_item_label: "Security"
  }

  dimension: meta__tag {
    hidden: yes
    sql: ${TABLE}.meta.tag ;;
    group_label: "Meta"
    group_item_label: "Tag"
  }

  dimension: meta__version_id {
    type: string
    sql: ${TABLE}.meta.versionId ;;
    group_label: "Meta"
    group_item_label: "Version ID"
  }

  dimension: method__coding {
    hidden: yes
    sql: ${TABLE}.method.coding ;;
    group_label: "Method"
    group_item_label: "Coding"
  }

  dimension: method__text {
    type: string
    sql: ${TABLE}.method.text ;;
    group_label: "Method"
    group_item_label: "Text"
  }

  dimension: performer {
    hidden: yes
    sql: ${TABLE}.performer ;;
  }

  dimension: reference_range {
    hidden: yes
    sql: ${TABLE}.referenceRange ;;
  }

  dimension: related {
    hidden: yes
    sql: ${TABLE}.related ;;
  }

  dimension: specimen__display {
    type: string
    sql: ${TABLE}.specimen.display ;;
    group_label: "Specimen"
    group_item_label: "Display"
  }

  dimension: specimen__identifier__assigner__display {
    type: string
    sql: ${TABLE}.specimen.identifier.assigner.display ;;
    group_label: "Specimen Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: specimen__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.specimen.identifier.assigner.identifier.assigner.display ;;
    group_label: "Specimen Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: specimen__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.specimen.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Specimen Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: specimen__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.specimen.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Specimen Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: specimen__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.specimen.identifier.assigner.identifier.period.`end` ;;
    group_label: "Specimen Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: specimen__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.specimen.identifier.assigner.identifier.period.start ;;
    group_label: "Specimen Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: specimen__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.specimen.identifier.assigner.identifier.system ;;
    group_label: "Specimen Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: specimen__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.specimen.identifier.assigner.identifier.type.coding ;;
    group_label: "Specimen Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: specimen__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.specimen.identifier.assigner.identifier.type.text ;;
    group_label: "Specimen Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: specimen__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.specimen.identifier.assigner.identifier.use ;;
    group_label: "Specimen Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: specimen__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.specimen.identifier.assigner.identifier.value ;;
    group_label: "Specimen Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: specimen__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.specimen.identifier.assigner.organizationId ;;
    group_label: "Specimen Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: specimen__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.specimen.identifier.assigner.reference ;;
    group_label: "Specimen Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: specimen__identifier__period__end {
    type: string
    sql: ${TABLE}.specimen.identifier.period.`end` ;;
    group_label: "Specimen Identifier Period"
    group_item_label: "End"
  }

  dimension: specimen__identifier__period__start {
    type: string
    sql: ${TABLE}.specimen.identifier.period.start ;;
    group_label: "Specimen Identifier Period"
    group_item_label: "Start"
  }

  dimension: specimen__identifier__system {
    type: string
    sql: ${TABLE}.specimen.identifier.system ;;
    group_label: "Specimen Identifier"
    group_item_label: "System"
  }

  dimension: specimen__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.specimen.identifier.type.coding ;;
    group_label: "Specimen Identifier Type"
    group_item_label: "Coding"
  }

  dimension: specimen__identifier__type__text {
    type: string
    sql: ${TABLE}.specimen.identifier.type.text ;;
    group_label: "Specimen Identifier Type"
    group_item_label: "Text"
  }

  dimension: specimen__identifier__use {
    type: string
    sql: ${TABLE}.specimen.identifier.use ;;
    group_label: "Specimen Identifier"
    group_item_label: "Use"
  }

  dimension: specimen__identifier__value {
    type: string
    sql: ${TABLE}.specimen.identifier.value ;;
    group_label: "Specimen Identifier"
    group_item_label: "Value"
  }

  dimension: specimen__reference {
    type: string
    sql: ${TABLE}.specimen.reference ;;
    group_label: "Specimen"
    group_item_label: "Reference"
  }

  dimension: specimen__specimen_id {
    type: string
    sql: ${TABLE}.specimen.specimenId ;;
    group_label: "Specimen"
    group_item_label: "Specimen ID"
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subject__device_id {
    type: string
    sql: ${TABLE}.subject.deviceId ;;
    group_label: "Subject"
    group_item_label: "Device ID"
  }

  dimension: subject__display {
    type: string
    sql: ${TABLE}.subject.display ;;
    group_label: "Subject"
    group_item_label: "Display"
  }

  dimension: subject__group_id {
    type: string
    sql: ${TABLE}.subject.groupId ;;
    group_label: "Subject"
    group_item_label: "Group ID"
  }

  dimension: subject__identifier__assigner__display {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.display ;;
    group_label: "Subject Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: subject__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.assigner.display ;;
    group_label: "Subject Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: subject__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Subject Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: subject__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Subject Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: subject__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.period.`end` ;;
    group_label: "Subject Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: subject__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.period.start ;;
    group_label: "Subject Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: subject__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.system ;;
    group_label: "Subject Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: subject__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.subject.identifier.assigner.identifier.type.coding ;;
    group_label: "Subject Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: subject__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.type.text ;;
    group_label: "Subject Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: subject__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.use ;;
    group_label: "Subject Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: subject__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.value ;;
    group_label: "Subject Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: subject__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.organizationId ;;
    group_label: "Subject Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: subject__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.reference ;;
    group_label: "Subject Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: subject__identifier__period__end {
    type: string
    sql: ${TABLE}.subject.identifier.period.`end` ;;
    group_label: "Subject Identifier Period"
    group_item_label: "End"
  }

  dimension: subject__identifier__period__start {
    type: string
    sql: ${TABLE}.subject.identifier.period.start ;;
    group_label: "Subject Identifier Period"
    group_item_label: "Start"
  }

  dimension: subject__identifier__system {
    type: string
    sql: ${TABLE}.subject.identifier.system ;;
    group_label: "Subject Identifier"
    group_item_label: "System"
  }

  dimension: subject__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.subject.identifier.type.coding ;;
    group_label: "Subject Identifier Type"
    group_item_label: "Coding"
  }

  dimension: subject__identifier__type__text {
    type: string
    sql: ${TABLE}.subject.identifier.type.text ;;
    group_label: "Subject Identifier Type"
    group_item_label: "Text"
  }

  dimension: subject__identifier__use {
    type: string
    sql: ${TABLE}.subject.identifier.use ;;
    group_label: "Subject Identifier"
    group_item_label: "Use"
  }

  dimension: subject__identifier__value {
    type: string
    sql: ${TABLE}.subject.identifier.value ;;
    group_label: "Subject Identifier"
    group_item_label: "Value"
  }

  dimension: subject__location_id {
    type: string
    sql: ${TABLE}.subject.locationId ;;
    group_label: "Subject"
    group_item_label: "Location ID"
  }

  dimension: subject__patient_id {
    type: string
    sql: ${TABLE}.subject.patientId ;;
    group_label: "Subject"
    group_item_label: "Patient ID"
  }

  dimension: subject__reference {
    type: string
    sql: ${TABLE}.subject.reference ;;
    group_label: "Subject"
    group_item_label: "Reference"
  }

  dimension: text__div {
    type: string
    sql: ${TABLE}.text.div ;;
    group_label: "Text"
    group_item_label: "Div"
  }

  dimension: text__status {
    type: string
    sql: ${TABLE}.text.status ;;
    group_label: "Text"
    group_item_label: "Status"
  }

  dimension: value__attachment__content_type {
    type: string
    sql: ${TABLE}.value.attachment.contentType ;;
    group_label: "Value Attachment"
    group_item_label: "Content Type"
  }

  dimension: value__attachment__creation {
    type: string
    sql: ${TABLE}.value.attachment.creation ;;
    group_label: "Value Attachment"
    group_item_label: "Creation"
  }

  dimension: value__attachment__data {
    type: string
    sql: ${TABLE}.value.attachment.data ;;
    group_label: "Value Attachment"
    group_item_label: "Data"
  }

  dimension: value__attachment__hash {
    type: string
    sql: ${TABLE}.value.attachment.`hash` ;;
    group_label: "Value Attachment"
    group_item_label: "Hash"
  }

  dimension: value__attachment__language {
    type: string
    sql: ${TABLE}.value.attachment.language ;;
    group_label: "Value Attachment"
    group_item_label: "Language"
  }

  dimension: value__attachment__size {
    type: number
    sql: ${TABLE}.value.attachment.size ;;
    group_label: "Value Attachment"
    group_item_label: "Size"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_value__attachment__size {
    type: sum
    sql: ${value__attachment__size} ;;
  }

  measure: average_value__attachment__size {
    type: average
    sql: ${value__attachment__size} ;;
  }

  dimension: value__attachment__title {
    type: string
    sql: ${TABLE}.value.attachment.title ;;
    group_label: "Value Attachment"
    group_item_label: "Title"
  }

  dimension: value__attachment__url {
    type: string
    sql: ${TABLE}.value.attachment.url ;;
    group_label: "Value Attachment"
    group_item_label: "URL"
  }

  dimension: value__boolean {
    type: yesno
    sql: ${TABLE}.value.boolean ;;
    group_label: "Value"
    group_item_label: "Boolean"
  }

  dimension: value__codeable_concept__coding {
    hidden: yes
    sql: ${TABLE}.value.codeableConcept.coding ;;
    group_label: "Value Codeable Concept"
    group_item_label: "Coding"
  }

  dimension: value__codeable_concept__text {
    type: string
    sql: ${TABLE}.value.codeableConcept.text ;;
    group_label: "Value Codeable Concept"
    group_item_label: "Text"
  }

  dimension: value__date_time {
    type: string
    sql: ${TABLE}.value.dateTime ;;
    group_label: "Value"
    group_item_label: "Date Time"
  }

  dimension: value__period__end {
    type: string
    sql: ${TABLE}.value.period.`end` ;;
    group_label: "Value Period"
    group_item_label: "End"
  }

  dimension: value__period__start {
    type: string
    sql: ${TABLE}.value.period.start ;;
    group_label: "Value Period"
    group_item_label: "Start"
  }

  dimension: value__quantity__code {
    type: string
    sql: ${TABLE}.value.quantity.code ;;
    group_label: "Value Quantity"
    group_item_label: "Code"
  }

  dimension: value__quantity__comparator {
    type: string
    sql: ${TABLE}.value.quantity.comparator ;;
    group_label: "Value Quantity"
    group_item_label: "Comparator"
  }

  dimension: value__quantity__system {
    type: string
    sql: ${TABLE}.value.quantity.system ;;
    group_label: "Value Quantity"
    group_item_label: "System"
  }

  dimension: value__quantity__unit {
    type: string
    sql: ${TABLE}.value.quantity.unit ;;
    group_label: "Value Quantity"
    group_item_label: "Unit"
  }

  dimension: value__quantity__value {
    type: number
    sql: ${TABLE}.value.quantity.value ;;
    group_label: "Value Quantity"
    group_item_label: "Value"
  }

  dimension: value__range__high__code {
    type: string
    sql: ${TABLE}.value.`range`.high.code ;;
    group_label: "Value Range High"
    group_item_label: "Code"
  }

  dimension: value__range__high__system {
    type: string
    sql: ${TABLE}.value.`range`.high.system ;;
    group_label: "Value Range High"
    group_item_label: "System"
  }

  dimension: value__range__high__unit {
    type: string
    sql: ${TABLE}.value.`range`.high.unit ;;
    group_label: "Value Range High"
    group_item_label: "Unit"
  }

  dimension: value__range__high__value {
    type: number
    sql: ${TABLE}.value.`range`.high.value ;;
    group_label: "Value Range High"
    group_item_label: "Value"
  }

  dimension: value__range__low__code {
    type: string
    sql: ${TABLE}.value.`range`.low.code ;;
    group_label: "Value Range Low"
    group_item_label: "Code"
  }

  dimension: value__range__low__system {
    type: string
    sql: ${TABLE}.value.`range`.low.system ;;
    group_label: "Value Range Low"
    group_item_label: "System"
  }

  dimension: value__range__low__unit {
    type: string
    sql: ${TABLE}.value.`range`.low.unit ;;
    group_label: "Value Range Low"
    group_item_label: "Unit"
  }

  dimension: value__range__low__value {
    type: number
    sql: ${TABLE}.value.`range`.low.value ;;
    group_label: "Value Range Low"
    group_item_label: "Value"
  }

  dimension: value__ratio__denominator__code {
    type: string
    sql: ${TABLE}.value.ratio.denominator.code ;;
    group_label: "Value Ratio Denominator"
    group_item_label: "Code"
  }

  dimension: value__ratio__denominator__comparator {
    type: string
    sql: ${TABLE}.value.ratio.denominator.comparator ;;
    group_label: "Value Ratio Denominator"
    group_item_label: "Comparator"
  }

  dimension: value__ratio__denominator__system {
    type: string
    sql: ${TABLE}.value.ratio.denominator.system ;;
    group_label: "Value Ratio Denominator"
    group_item_label: "System"
  }

  dimension: value__ratio__denominator__unit {
    type: string
    sql: ${TABLE}.value.ratio.denominator.unit ;;
    group_label: "Value Ratio Denominator"
    group_item_label: "Unit"
  }

  dimension: value__ratio__denominator__value {
    type: number
    sql: ${TABLE}.value.ratio.denominator.value ;;
    group_label: "Value Ratio Denominator"
    group_item_label: "Value"
  }

  dimension: value__ratio__numerator__code {
    type: string
    sql: ${TABLE}.value.ratio.numerator.code ;;
    group_label: "Value Ratio Numerator"
    group_item_label: "Code"
  }

  dimension: value__ratio__numerator__comparator {
    type: string
    sql: ${TABLE}.value.ratio.numerator.comparator ;;
    group_label: "Value Ratio Numerator"
    group_item_label: "Comparator"
  }

  dimension: value__ratio__numerator__system {
    type: string
    sql: ${TABLE}.value.ratio.numerator.system ;;
    group_label: "Value Ratio Numerator"
    group_item_label: "System"
  }

  dimension: value__ratio__numerator__unit {
    type: string
    sql: ${TABLE}.value.ratio.numerator.unit ;;
    group_label: "Value Ratio Numerator"
    group_item_label: "Unit"
  }

  dimension: value__ratio__numerator__value {
    type: number
    sql: ${TABLE}.value.ratio.numerator.value ;;
    group_label: "Value Ratio Numerator"
    group_item_label: "Value"
  }

  dimension: value__sampled_data__data {
    type: string
    sql: ${TABLE}.value.sampledData.data ;;
    group_label: "Value Sampled Data"
    group_item_label: "Data"
  }

  dimension: value__sampled_data__dimensions {
    type: number
    sql: ${TABLE}.value.sampledData.dimensions ;;
    group_label: "Value Sampled Data"
    group_item_label: "Dimensions"
  }

  dimension: value__sampled_data__factor {
    type: number
    sql: ${TABLE}.value.sampledData.factor ;;
    group_label: "Value Sampled Data"
    group_item_label: "Factor"
  }

  dimension: value__sampled_data__lower_limit {
    type: number
    sql: ${TABLE}.value.sampledData.lowerLimit ;;
    group_label: "Value Sampled Data"
    group_item_label: "Lower Limit"
  }

  dimension: value__sampled_data__origin__code {
    type: string
    sql: ${TABLE}.value.sampledData.origin.code ;;
    group_label: "Value Sampled Data Origin"
    group_item_label: "Code"
  }

  dimension: value__sampled_data__origin__system {
    type: string
    sql: ${TABLE}.value.sampledData.origin.system ;;
    group_label: "Value Sampled Data Origin"
    group_item_label: "System"
  }

  dimension: value__sampled_data__origin__unit {
    type: string
    sql: ${TABLE}.value.sampledData.origin.unit ;;
    group_label: "Value Sampled Data Origin"
    group_item_label: "Unit"
  }

  dimension: value__sampled_data__origin__value {
    type: number
    sql: ${TABLE}.value.sampledData.origin.value ;;
    group_label: "Value Sampled Data Origin"
    group_item_label: "Value"
  }

  dimension: value__sampled_data__period {
    type: number
    sql: ${TABLE}.value.sampledData.period ;;
    group_label: "Value Sampled Data"
    group_item_label: "Period"
  }

  dimension: value__sampled_data__upper_limit {
    type: number
    sql: ${TABLE}.value.sampledData.upperLimit ;;
    group_label: "Value Sampled Data"
    group_item_label: "Upper Limit"
  }

  dimension: value__string {
    type: string
    sql: ${TABLE}.value.string ;;
    group_label: "Value"
    group_item_label: "String"
  }

  dimension: value__time {
    type: string
    sql: ${TABLE}.value.time ;;
    group_label: "Value"
    group_item_label: "Time"
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

# The name of this view in Looker is "Observation Related"
view: observation__related {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: observation__related {
    type: string
    hidden: yes
    sql: observation__related ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Target Display" in Explore.

  dimension: target__display {
    type: string
    sql: ${TABLE}.target.display ;;
    group_label: "Target"
    group_item_label: "Display"
  }

  dimension: target__identifier__assigner__display {
    type: string
    sql: ${TABLE}.target.identifier.assigner.display ;;
    group_label: "Target Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: target__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.target.identifier.assigner.identifier.assigner.display ;;
    group_label: "Target Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: target__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.target.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Target Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: target__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.target.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Target Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: target__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.target.identifier.assigner.identifier.period.`end` ;;
    group_label: "Target Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: target__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.target.identifier.assigner.identifier.period.start ;;
    group_label: "Target Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: target__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.target.identifier.assigner.identifier.system ;;
    group_label: "Target Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: target__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.target.identifier.assigner.identifier.type.coding ;;
    group_label: "Target Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: target__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.target.identifier.assigner.identifier.type.text ;;
    group_label: "Target Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: target__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.target.identifier.assigner.identifier.use ;;
    group_label: "Target Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: target__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.target.identifier.assigner.identifier.value ;;
    group_label: "Target Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: target__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.target.identifier.assigner.organizationId ;;
    group_label: "Target Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: target__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.target.identifier.assigner.reference ;;
    group_label: "Target Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: target__identifier__period__end {
    type: string
    sql: ${TABLE}.target.identifier.period.`end` ;;
    group_label: "Target Identifier Period"
    group_item_label: "End"
  }

  dimension: target__identifier__period__start {
    type: string
    sql: ${TABLE}.target.identifier.period.start ;;
    group_label: "Target Identifier Period"
    group_item_label: "Start"
  }

  dimension: target__identifier__system {
    type: string
    sql: ${TABLE}.target.identifier.system ;;
    group_label: "Target Identifier"
    group_item_label: "System"
  }

  dimension: target__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.target.identifier.type.coding ;;
    group_label: "Target Identifier Type"
    group_item_label: "Coding"
  }

  dimension: target__identifier__type__text {
    type: string
    sql: ${TABLE}.target.identifier.type.text ;;
    group_label: "Target Identifier Type"
    group_item_label: "Text"
  }

  dimension: target__identifier__use {
    type: string
    sql: ${TABLE}.target.identifier.use ;;
    group_label: "Target Identifier"
    group_item_label: "Use"
  }

  dimension: target__identifier__value {
    type: string
    sql: ${TABLE}.target.identifier.value ;;
    group_label: "Target Identifier"
    group_item_label: "Value"
  }

  dimension: target__observation_id {
    type: string
    sql: ${TABLE}.target.observationId ;;
    group_label: "Target"
    group_item_label: "Observation ID"
  }

  dimension: target__questionnaire_response_id {
    type: string
    sql: ${TABLE}.target.questionnaireResponseId ;;
    group_label: "Target"
    group_item_label: "Questionnaire Response ID"
  }

  dimension: target__reference {
    type: string
    sql: ${TABLE}.target.reference ;;
    group_label: "Target"
    group_item_label: "Reference"
  }

  dimension: target__sequence_id {
    type: string
    sql: ${TABLE}.target.sequenceId ;;
    group_label: "Target"
    group_item_label: "Sequence ID"
  }

  dimension: type {
    type: string
    sql: type ;;
  }
}

# The name of this view in Looker is "Observation Based On"
view: observation__based_on {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Care Plan ID" in Explore.

  dimension: care_plan_id {
    type: string
    sql: carePlanId ;;
  }

  dimension: device_request_id {
    type: string
    sql: deviceRequestId ;;
  }

  dimension: display {
    type: string
    sql: display ;;
  }

  dimension: identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.display ;;
    group_label: "Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.display ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.`end` ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.start ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.system ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.assigner.identifier.type.coding ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.type.text ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.use ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.value ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.reference ;;
    group_label: "Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.period.`end` ;;
    group_label: "Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.period.start ;;
    group_label: "Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__system {
    type: string
    sql: ${TABLE}.identifier.system ;;
    group_label: "Identifier"
    group_item_label: "System"
  }

  dimension: identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.type.coding ;;
    group_label: "Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.type.text ;;
    group_label: "Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__use {
    type: string
    sql: ${TABLE}.identifier.use ;;
    group_label: "Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__value {
    type: string
    sql: ${TABLE}.identifier.value ;;
    group_label: "Identifier"
    group_item_label: "Value"
  }

  dimension: immunization_recommendation_id {
    type: string
    sql: immunizationRecommendationId ;;
  }

  dimension: medication_request_id {
    type: string
    sql: medicationRequestId ;;
  }

  dimension: nutrition_order_id {
    type: string
    sql: nutritionOrderId ;;
  }

  dimension: observation__based_on {
    type: string
    hidden: yes
    sql: observation__based_on ;;
  }

  dimension: procedure_request_id {
    type: string
    sql: procedureRequestId ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }

  dimension: referral_request_id {
    type: string
    sql: referralRequestId ;;
  }
}

# The name of this view in Looker is "Observation Category"
view: observation__category {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: coding {
    hidden: yes
    sql: coding ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Observation Category" in Explore.

  dimension: observation__category {
    type: string
    hidden: yes
    sql: observation__category ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }
}

# The name of this view in Looker is "Observation Performer"
view: observation__performer {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Display" in Explore.

  dimension: display {
    type: string
    sql: display ;;
  }

  dimension: identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.display ;;
    group_label: "Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.display ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.`end` ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.start ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.system ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.assigner.identifier.type.coding ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.type.text ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.use ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.value ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.reference ;;
    group_label: "Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.period.`end` ;;
    group_label: "Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.period.start ;;
    group_label: "Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__system {
    type: string
    sql: ${TABLE}.identifier.system ;;
    group_label: "Identifier"
    group_item_label: "System"
  }

  dimension: identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.type.coding ;;
    group_label: "Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.type.text ;;
    group_label: "Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__use {
    type: string
    sql: ${TABLE}.identifier.use ;;
    group_label: "Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__value {
    type: string
    sql: ${TABLE}.identifier.value ;;
    group_label: "Identifier"
    group_item_label: "Value"
  }

  dimension: observation__performer {
    type: string
    hidden: yes
    sql: observation__performer ;;
  }

  dimension: organization_id {
    type: string
    sql: organizationId ;;
  }

  dimension: patient_id {
    type: string
    sql: patientId ;;
  }

  dimension: practitioner_id {
    type: string
    sql: practitionerId ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }

  dimension: related_person_id {
    type: string
    sql: relatedPersonId ;;
  }
}

# The name of this view in Looker is "Observation Component"
view: observation__component {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: code__coding {
    hidden: yes
    sql: ${TABLE}.code.coding ;;
    group_label: "Code"
    group_item_label: "Coding"
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code Text" in Explore.

  dimension: code__text {
    type: string
    sql: ${TABLE}.code.text ;;
    group_label: "Code"
    group_item_label: "Text"
  }

  dimension: data_absent_reason__coding {
    hidden: yes
    sql: ${TABLE}.dataAbsentReason.coding ;;
    group_label: "Data Absent Reason"
    group_item_label: "Coding"
  }

  dimension: data_absent_reason__text {
    type: string
    sql: ${TABLE}.dataAbsentReason.text ;;
    group_label: "Data Absent Reason"
    group_item_label: "Text"
  }

  dimension: interpretation__coding {
    hidden: yes
    sql: ${TABLE}.interpretation.coding ;;
    group_label: "Interpretation"
    group_item_label: "Coding"
  }

  dimension: interpretation__text {
    type: string
    sql: ${TABLE}.interpretation.text ;;
    group_label: "Interpretation"
    group_item_label: "Text"
  }

  dimension: observation__component {
    type: string
    hidden: yes
    sql: observation__component ;;
  }

  dimension: reference_range {
    hidden: yes
    sql: referenceRange ;;
  }

  dimension: value__attachment__content_type {
    type: string
    sql: ${TABLE}.value.attachment.contentType ;;
    group_label: "Value Attachment"
    group_item_label: "Content Type"
  }

  dimension: value__attachment__creation {
    type: string
    sql: ${TABLE}.value.attachment.creation ;;
    group_label: "Value Attachment"
    group_item_label: "Creation"
  }

  dimension: value__attachment__data {
    type: string
    sql: ${TABLE}.value.attachment.data ;;
    group_label: "Value Attachment"
    group_item_label: "Data"
  }

  dimension: value__attachment__hash {
    type: string
    sql: ${TABLE}.value.attachment.`hash` ;;
    group_label: "Value Attachment"
    group_item_label: "Hash"
  }

  dimension: value__attachment__language {
    type: string
    sql: ${TABLE}.value.attachment.language ;;
    group_label: "Value Attachment"
    group_item_label: "Language"
  }

  dimension: value__attachment__size {
    type: number
    sql: ${TABLE}.value.attachment.size ;;
    group_label: "Value Attachment"
    group_item_label: "Size"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_value__attachment__size {
    type: sum
    sql: ${value__attachment__size} ;;
  }

  measure: average_value__attachment__size {
    type: average
    sql: ${value__attachment__size} ;;
  }

  dimension: value__attachment__title {
    type: string
    sql: ${TABLE}.value.attachment.title ;;
    group_label: "Value Attachment"
    group_item_label: "Title"
  }

  dimension: value__attachment__url {
    type: string
    sql: ${TABLE}.value.attachment.url ;;
    group_label: "Value Attachment"
    group_item_label: "URL"
  }

  dimension: value__codeable_concept__coding {
    hidden: yes
    sql: ${TABLE}.value.codeableConcept.coding ;;
    group_label: "Value Codeable Concept"
    group_item_label: "Coding"
  }

  dimension: value__codeable_concept__text {
    type: string
    sql: ${TABLE}.value.codeableConcept.text ;;
    group_label: "Value Codeable Concept"
    group_item_label: "Text"
  }

  dimension: value__date_time {
    type: string
    sql: ${TABLE}.value.dateTime ;;
    group_label: "Value"
    group_item_label: "Date Time"
  }

  dimension: value__period__end {
    type: string
    sql: ${TABLE}.value.period.`end` ;;
    group_label: "Value Period"
    group_item_label: "End"
  }

  dimension: value__period__start {
    type: string
    sql: ${TABLE}.value.period.start ;;
    group_label: "Value Period"
    group_item_label: "Start"
  }

  dimension: value__quantity__code {
    type: string
    sql: ${TABLE}.value.quantity.code ;;
    group_label: "Value Quantity"
    group_item_label: "Code"
  }

  dimension: value__quantity__comparator {
    type: string
    sql: ${TABLE}.value.quantity.comparator ;;
    group_label: "Value Quantity"
    group_item_label: "Comparator"
  }

  dimension: value__quantity__system {
    type: string
    sql: ${TABLE}.value.quantity.system ;;
    group_label: "Value Quantity"
    group_item_label: "System"
  }

  dimension: value__quantity__unit {
    type: string
    sql: ${TABLE}.value.quantity.unit ;;
    group_label: "Value Quantity"
    group_item_label: "Unit"
  }

  dimension: value__quantity__value {
    type: number
    sql: ${TABLE}.value.quantity.value ;;
    group_label: "Value Quantity"
    group_item_label: "Value"
  }

  dimension: value__range__high__code {
    type: string
    sql: ${TABLE}.value.`range`.high.code ;;
    group_label: "Value Range High"
    group_item_label: "Code"
  }

  dimension: value__range__high__system {
    type: string
    sql: ${TABLE}.value.`range`.high.system ;;
    group_label: "Value Range High"
    group_item_label: "System"
  }

  dimension: value__range__high__unit {
    type: string
    sql: ${TABLE}.value.`range`.high.unit ;;
    group_label: "Value Range High"
    group_item_label: "Unit"
  }

  dimension: value__range__high__value {
    type: number
    sql: ${TABLE}.value.`range`.high.value ;;
    group_label: "Value Range High"
    group_item_label: "Value"
  }

  dimension: value__range__low__code {
    type: string
    sql: ${TABLE}.value.`range`.low.code ;;
    group_label: "Value Range Low"
    group_item_label: "Code"
  }

  dimension: value__range__low__system {
    type: string
    sql: ${TABLE}.value.`range`.low.system ;;
    group_label: "Value Range Low"
    group_item_label: "System"
  }

  dimension: value__range__low__unit {
    type: string
    sql: ${TABLE}.value.`range`.low.unit ;;
    group_label: "Value Range Low"
    group_item_label: "Unit"
  }

  dimension: value__range__low__value {
    type: number
    sql: ${TABLE}.value.`range`.low.value ;;
    group_label: "Value Range Low"
    group_item_label: "Value"
  }

  dimension: value__ratio__denominator__code {
    type: string
    sql: ${TABLE}.value.ratio.denominator.code ;;
    group_label: "Value Ratio Denominator"
    group_item_label: "Code"
  }

  dimension: value__ratio__denominator__comparator {
    type: string
    sql: ${TABLE}.value.ratio.denominator.comparator ;;
    group_label: "Value Ratio Denominator"
    group_item_label: "Comparator"
  }

  dimension: value__ratio__denominator__system {
    type: string
    sql: ${TABLE}.value.ratio.denominator.system ;;
    group_label: "Value Ratio Denominator"
    group_item_label: "System"
  }

  dimension: value__ratio__denominator__unit {
    type: string
    sql: ${TABLE}.value.ratio.denominator.unit ;;
    group_label: "Value Ratio Denominator"
    group_item_label: "Unit"
  }

  dimension: value__ratio__denominator__value {
    type: number
    sql: ${TABLE}.value.ratio.denominator.value ;;
    group_label: "Value Ratio Denominator"
    group_item_label: "Value"
  }

  dimension: value__ratio__numerator__code {
    type: string
    sql: ${TABLE}.value.ratio.numerator.code ;;
    group_label: "Value Ratio Numerator"
    group_item_label: "Code"
  }

  dimension: value__ratio__numerator__comparator {
    type: string
    sql: ${TABLE}.value.ratio.numerator.comparator ;;
    group_label: "Value Ratio Numerator"
    group_item_label: "Comparator"
  }

  dimension: value__ratio__numerator__system {
    type: string
    sql: ${TABLE}.value.ratio.numerator.system ;;
    group_label: "Value Ratio Numerator"
    group_item_label: "System"
  }

  dimension: value__ratio__numerator__unit {
    type: string
    sql: ${TABLE}.value.ratio.numerator.unit ;;
    group_label: "Value Ratio Numerator"
    group_item_label: "Unit"
  }

  dimension: value__ratio__numerator__value {
    type: number
    sql: ${TABLE}.value.ratio.numerator.value ;;
    group_label: "Value Ratio Numerator"
    group_item_label: "Value"
  }

  dimension: value__sampled_data__data {
    type: string
    sql: ${TABLE}.value.sampledData.data ;;
    group_label: "Value Sampled Data"
    group_item_label: "Data"
  }

  dimension: value__sampled_data__dimensions {
    type: number
    sql: ${TABLE}.value.sampledData.dimensions ;;
    group_label: "Value Sampled Data"
    group_item_label: "Dimensions"
  }

  dimension: value__sampled_data__factor {
    type: number
    sql: ${TABLE}.value.sampledData.factor ;;
    group_label: "Value Sampled Data"
    group_item_label: "Factor"
  }

  dimension: value__sampled_data__lower_limit {
    type: number
    sql: ${TABLE}.value.sampledData.lowerLimit ;;
    group_label: "Value Sampled Data"
    group_item_label: "Lower Limit"
  }

  dimension: value__sampled_data__origin__code {
    type: string
    sql: ${TABLE}.value.sampledData.origin.code ;;
    group_label: "Value Sampled Data Origin"
    group_item_label: "Code"
  }

  dimension: value__sampled_data__origin__system {
    type: string
    sql: ${TABLE}.value.sampledData.origin.system ;;
    group_label: "Value Sampled Data Origin"
    group_item_label: "System"
  }

  dimension: value__sampled_data__origin__unit {
    type: string
    sql: ${TABLE}.value.sampledData.origin.unit ;;
    group_label: "Value Sampled Data Origin"
    group_item_label: "Unit"
  }

  dimension: value__sampled_data__origin__value {
    type: number
    sql: ${TABLE}.value.sampledData.origin.value ;;
    group_label: "Value Sampled Data Origin"
    group_item_label: "Value"
  }

  dimension: value__sampled_data__period {
    type: number
    sql: ${TABLE}.value.sampledData.period ;;
    group_label: "Value Sampled Data"
    group_item_label: "Period"
  }

  dimension: value__sampled_data__upper_limit {
    type: number
    sql: ${TABLE}.value.sampledData.upperLimit ;;
    group_label: "Value Sampled Data"
    group_item_label: "Upper Limit"
  }

  dimension: value__string {
    type: string
    sql: ${TABLE}.value.string ;;
    group_label: "Value"
    group_item_label: "String"
  }

  dimension: value__time {
    type: string
    sql: ${TABLE}.value.time ;;
    group_label: "Value"
    group_item_label: "Time"
  }
}

# The name of this view in Looker is "Observation Identifier"
view: observation__identifier {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Assigner Display" in Explore.

  dimension: assigner__display {
    type: string
    sql: ${TABLE}.assigner.display ;;
    group_label: "Assigner"
    group_item_label: "Display"
  }

  dimension: assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.assigner.identifier.assigner.display ;;
    group_label: "Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.assigner.identifier.assigner.organizationId ;;
    group_label: "Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.assigner.identifier.assigner.reference ;;
    group_label: "Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.assigner.identifier.period.`end` ;;
    group_label: "Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.assigner.identifier.period.start ;;
    group_label: "Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: assigner__identifier__system {
    type: string
    sql: ${TABLE}.assigner.identifier.system ;;
    group_label: "Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.assigner.identifier.type.coding ;;
    group_label: "Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.assigner.identifier.type.text ;;
    group_label: "Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: assigner__identifier__use {
    type: string
    sql: ${TABLE}.assigner.identifier.use ;;
    group_label: "Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: assigner__identifier__value {
    type: string
    sql: ${TABLE}.assigner.identifier.value ;;
    group_label: "Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: assigner__organization_id {
    type: string
    sql: ${TABLE}.assigner.organizationId ;;
    group_label: "Assigner"
    group_item_label: "Organization ID"
  }

  dimension: assigner__reference {
    type: string
    sql: ${TABLE}.assigner.reference ;;
    group_label: "Assigner"
    group_item_label: "Reference"
  }

  dimension: observation__identifier {
    type: string
    hidden: yes
    sql: observation__identifier ;;
  }

  dimension: period__end {
    type: string
    sql: ${TABLE}.period.`end` ;;
    group_label: "Period"
    group_item_label: "End"
  }

  dimension: period__start {
    type: string
    sql: ${TABLE}.period.start ;;
    group_label: "Period"
    group_item_label: "Start"
  }

  dimension: system {
    type: string
    sql: system ;;
  }

  dimension: type__coding {
    hidden: yes
    sql: ${TABLE}.type.coding ;;
    group_label: "Type"
    group_item_label: "Coding"
  }

  dimension: type__text {
    type: string
    sql: ${TABLE}.type.text ;;
    group_label: "Type"
    group_item_label: "Text"
  }

  dimension: use {
    type: string
    sql: use ;;
  }

  dimension: value {
    type: string
    sql: value ;;
  }
}

# The name of this view in Looker is "Observation Meta Profile"
view: observation__meta__profile {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Observation Meta Profile" in Explore.

  dimension: observation__meta__profile {
    type: string
    sql: observation__meta__profile ;;
  }
}

# The name of this view in Looker is "Observation Meta Tag"
view: observation__meta__tag {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Reference Range"
view: observation__reference_range {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age High Code" in Explore.

  dimension: age__high__code {
    type: string
    sql: ${TABLE}.age.high.code ;;
    group_label: "Age High"
    group_item_label: "Code"
  }

  dimension: age__high__system {
    type: string
    sql: ${TABLE}.age.high.system ;;
    group_label: "Age High"
    group_item_label: "System"
  }

  dimension: age__high__unit {
    type: string
    sql: ${TABLE}.age.high.unit ;;
    group_label: "Age High"
    group_item_label: "Unit"
  }

  dimension: age__high__value {
    type: number
    sql: ${TABLE}.age.high.value ;;
    group_label: "Age High"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_age__high__value {
    type: sum
    sql: ${age__high__value} ;;
  }

  measure: average_age__high__value {
    type: average
    sql: ${age__high__value} ;;
  }

  dimension: age__low__code {
    type: string
    sql: ${TABLE}.age.low.code ;;
    group_label: "Age Low"
    group_item_label: "Code"
  }

  dimension: age__low__system {
    type: string
    sql: ${TABLE}.age.low.system ;;
    group_label: "Age Low"
    group_item_label: "System"
  }

  dimension: age__low__unit {
    type: string
    sql: ${TABLE}.age.low.unit ;;
    group_label: "Age Low"
    group_item_label: "Unit"
  }

  dimension: age__low__value {
    type: number
    sql: ${TABLE}.age.low.value ;;
    group_label: "Age Low"
    group_item_label: "Value"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: applies_to {
    hidden: yes
    sql: appliesTo ;;
  }

  dimension: high__code {
    type: string
    sql: ${TABLE}.high.code ;;
    group_label: "High"
    group_item_label: "Code"
  }

  dimension: high__system {
    type: string
    sql: ${TABLE}.high.system ;;
    group_label: "High"
    group_item_label: "System"
  }

  dimension: high__unit {
    type: string
    sql: ${TABLE}.high.unit ;;
    group_label: "High"
    group_item_label: "Unit"
  }

  dimension: high__value {
    type: number
    sql: ${TABLE}.high.value ;;
    group_label: "High"
    group_item_label: "Value"
  }

  dimension: low__code {
    type: string
    sql: ${TABLE}.low.code ;;
    group_label: "Low"
    group_item_label: "Code"
  }

  dimension: low__system {
    type: string
    sql: ${TABLE}.low.system ;;
    group_label: "Low"
    group_item_label: "System"
  }

  dimension: low__unit {
    type: string
    sql: ${TABLE}.low.unit ;;
    group_label: "Low"
    group_item_label: "Unit"
  }

  dimension: low__value {
    type: number
    sql: ${TABLE}.low.value ;;
    group_label: "Low"
    group_item_label: "Value"
  }

  dimension: observation__reference_range {
    type: string
    hidden: yes
    sql: observation__reference_range ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }

  dimension: type__coding {
    hidden: yes
    sql: ${TABLE}.type.coding ;;
    group_label: "Type"
    group_item_label: "Coding"
  }

  dimension: type__text {
    type: string
    sql: ${TABLE}.type.text ;;
    group_label: "Type"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "Observation Code Coding"
view: observation__code__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Method Coding"
view: observation__method__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Meta Security"
view: observation__meta__security {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Body Site Coding"
view: observation__body_site__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Category Coding"
view: observation__category__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Component Code Coding"
view: observation__component__code__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Interpretation Coding"
view: observation__interpretation__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Identifier Type Coding"
view: observation__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Data Absent Reason Coding"
view: observation__data_absent_reason__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Reference Range Applies To"
view: observation__reference_range__applies_to {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Text" in Explore.

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

# The name of this view in Looker is "Observation Component Reference Range"
view: observation__component__reference_range {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age High Code" in Explore.

  dimension: age__high__code {
    type: string
    sql: ${TABLE}.age.high.code ;;
    group_label: "Age High"
    group_item_label: "Code"
  }

  dimension: age__high__system {
    type: string
    sql: ${TABLE}.age.high.system ;;
    group_label: "Age High"
    group_item_label: "System"
  }

  dimension: age__high__unit {
    type: string
    sql: ${TABLE}.age.high.unit ;;
    group_label: "Age High"
    group_item_label: "Unit"
  }

  dimension: age__high__value {
    type: number
    sql: ${TABLE}.age.high.value ;;
    group_label: "Age High"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_age__high__value {
    type: sum
    sql: ${age__high__value} ;;
  }

  measure: average_age__high__value {
    type: average
    sql: ${age__high__value} ;;
  }

  dimension: age__low__code {
    type: string
    sql: ${TABLE}.age.low.code ;;
    group_label: "Age Low"
    group_item_label: "Code"
  }

  dimension: age__low__system {
    type: string
    sql: ${TABLE}.age.low.system ;;
    group_label: "Age Low"
    group_item_label: "System"
  }

  dimension: age__low__unit {
    type: string
    sql: ${TABLE}.age.low.unit ;;
    group_label: "Age Low"
    group_item_label: "Unit"
  }

  dimension: age__low__value {
    type: number
    sql: ${TABLE}.age.low.value ;;
    group_label: "Age Low"
    group_item_label: "Value"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: applies_to {
    hidden: yes
    sql: ${TABLE}.appliesTo ;;
  }

  dimension: high__code {
    type: string
    sql: ${TABLE}.high.code ;;
    group_label: "High"
    group_item_label: "Code"
  }

  dimension: high__system {
    type: string
    sql: ${TABLE}.high.system ;;
    group_label: "High"
    group_item_label: "System"
  }

  dimension: high__unit {
    type: string
    sql: ${TABLE}.high.unit ;;
    group_label: "High"
    group_item_label: "Unit"
  }

  dimension: high__value {
    type: number
    sql: ${TABLE}.high.value ;;
    group_label: "High"
    group_item_label: "Value"
  }

  dimension: low__code {
    type: string
    sql: ${TABLE}.low.code ;;
    group_label: "Low"
    group_item_label: "Code"
  }

  dimension: low__system {
    type: string
    sql: ${TABLE}.low.system ;;
    group_label: "Low"
    group_item_label: "System"
  }

  dimension: low__unit {
    type: string
    sql: ${TABLE}.low.unit ;;
    group_label: "Low"
    group_item_label: "Unit"
  }

  dimension: low__value {
    type: number
    sql: ${TABLE}.low.value ;;
    group_label: "Low"
    group_item_label: "Value"
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: type__coding {
    hidden: yes
    sql: ${TABLE}.type.coding ;;
    group_label: "Type"
    group_item_label: "Coding"
  }

  dimension: type__text {
    type: string
    sql: ${TABLE}.type.text ;;
    group_label: "Type"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "Observation Reference Range Type Coding"
view: observation__reference_range__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Value Codeable Concept Coding"
view: observation__value__codeable_concept__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Device Identifier Type Coding"
view: observation__device__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Subject Identifier Type Coding"
view: observation__subject__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Context Identifier Type Coding"
view: observation__context__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Based on Identifier Type Coding"
view: observation__based_on__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Specimen Identifier Type Coding"
view: observation__specimen__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Reference Range Applies to Coding"
view: observation__reference_range__applies_to__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Component Interpretation Coding"
view: observation__component__interpretation__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Performer Identifier Type Coding"
view: observation__performer__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Component Data Absent Reason Coding"
view: observation__component__data_absent_reason__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Component Reference Range Applies To"
view: observation__component__reference_range__applies_to {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Text" in Explore.

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

# The name of this view in Looker is "Observation Component Reference Range Type Coding"
view: observation__component__reference_range__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Related Target Identifier Type Coding"
view: observation__related__target__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Component Value Codeable Concept Coding"
view: observation__component__value__codeable_concept__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Component Reference Range Applies to Coding"
view: observation__component__reference_range__applies_to__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Identifier Assigner Identifier Type Coding"
view: observation__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Device Identifier Assigner Identifier Type Coding"
view: observation__device__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Subject Identifier Assigner Identifier Type Coding"
view: observation__subject__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Context Identifier Assigner Identifier Type Coding"
view: observation__context__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Based on Identifier Assigner Identifier Type Coding"
view: observation__based_on__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Specimen Identifier Assigner Identifier Type Coding"
view: observation__specimen__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Performer Identifier Assigner Identifier Type Coding"
view: observation__performer__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Observation Related Target Identifier Assigner Identifier Type Coding"
view: observation__related__target__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}
