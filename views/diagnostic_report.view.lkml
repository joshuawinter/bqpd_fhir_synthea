# The name of this view in Looker is "Diagnostic Report"
view: diagnostic_report {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.fhir_synthea.diagnostic_report`
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
  # This dimension will be called "Category Coding" in Explore.

  dimension: category__coding {
    hidden: yes
    sql: ${TABLE}.category.coding ;;
    group_label: "Category"
    group_item_label: "Coding"
  }

  dimension: category__text {
    type: string
    sql: ${TABLE}.category.text ;;
    group_label: "Category"
    group_item_label: "Text"
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

  dimension: coded_diagnosis {
    hidden: yes
    sql: ${TABLE}.codedDiagnosis ;;
  }

  dimension: conclusion {
    type: string
    sql: ${TABLE}.conclusion ;;
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

  dimension: image {
    hidden: yes
    sql: ${TABLE}.image ;;
  }

  dimension: imaging_study {
    hidden: yes
    sql: ${TABLE}.imagingStudy ;;
  }

  dimension: implicit_rules {
    type: string
    sql: ${TABLE}.implicitRules ;;
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

  dimension: performer {
    hidden: yes
    sql: ${TABLE}.performer ;;
  }

  dimension: presented_form {
    hidden: yes
    sql: ${TABLE}.presentedForm ;;
  }

  dimension: result {
    hidden: yes
    sql: ${TABLE}.result ;;
  }

  dimension: specimen {
    hidden: yes
    sql: ${TABLE}.specimen ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}

# The name of this view in Looker is "Diagnostic Report Image"
view: diagnostic_report__image {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Comment" in Explore.

  dimension: comment {
    type: string
    sql: comment ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: diagnostic_report__image {
    type: string
    hidden: yes
    sql: diagnostic_report__image ;;
  }

  dimension: link__display {
    type: string
    sql: ${TABLE}.link.display ;;
    group_label: "Link"
    group_item_label: "Display"
  }

  dimension: link__identifier__assigner__display {
    type: string
    sql: ${TABLE}.link.identifier.assigner.display ;;
    group_label: "Link Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: link__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.link.identifier.assigner.identifier.assigner.display ;;
    group_label: "Link Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: link__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.link.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Link Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: link__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.link.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Link Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: link__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.link.identifier.assigner.identifier.period.`end` ;;
    group_label: "Link Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: link__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.link.identifier.assigner.identifier.period.start ;;
    group_label: "Link Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: link__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.link.identifier.assigner.identifier.system ;;
    group_label: "Link Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: link__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.link.identifier.assigner.identifier.type.coding ;;
    group_label: "Link Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: link__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.link.identifier.assigner.identifier.type.text ;;
    group_label: "Link Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: link__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.link.identifier.assigner.identifier.use ;;
    group_label: "Link Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: link__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.link.identifier.assigner.identifier.value ;;
    group_label: "Link Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: link__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.link.identifier.assigner.organizationId ;;
    group_label: "Link Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: link__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.link.identifier.assigner.reference ;;
    group_label: "Link Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: link__identifier__period__end {
    type: string
    sql: ${TABLE}.link.identifier.period.`end` ;;
    group_label: "Link Identifier Period"
    group_item_label: "End"
  }

  dimension: link__identifier__period__start {
    type: string
    sql: ${TABLE}.link.identifier.period.start ;;
    group_label: "Link Identifier Period"
    group_item_label: "Start"
  }

  dimension: link__identifier__system {
    type: string
    sql: ${TABLE}.link.identifier.system ;;
    group_label: "Link Identifier"
    group_item_label: "System"
  }

  dimension: link__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.link.identifier.type.coding ;;
    group_label: "Link Identifier Type"
    group_item_label: "Coding"
  }

  dimension: link__identifier__type__text {
    type: string
    sql: ${TABLE}.link.identifier.type.text ;;
    group_label: "Link Identifier Type"
    group_item_label: "Text"
  }

  dimension: link__identifier__use {
    type: string
    sql: ${TABLE}.link.identifier.use ;;
    group_label: "Link Identifier"
    group_item_label: "Use"
  }

  dimension: link__identifier__value {
    type: string
    sql: ${TABLE}.link.identifier.value ;;
    group_label: "Link Identifier"
    group_item_label: "Value"
  }

  dimension: link__media_id {
    type: string
    sql: ${TABLE}.link.mediaId ;;
    group_label: "Link"
    group_item_label: "Media ID"
  }

  dimension: link__reference {
    type: string
    sql: ${TABLE}.link.reference ;;
    group_label: "Link"
    group_item_label: "Reference"
  }
}

# The name of this view in Looker is "Diagnostic Report Result"
view: diagnostic_report__result {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: diagnostic_report__result {
    type: string
    hidden: yes
    sql: diagnostic_report__result ;;
  }

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

  dimension: observation_id {
    type: string
    sql: observationId ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }
}

# The name of this view in Looker is "Diagnostic Report Based On"
view: diagnostic_report__based_on {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Care Plan ID" in Explore.

  dimension: care_plan_id {
    type: string
    sql: carePlanId ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: diagnostic_report__based_on {
    type: string
    hidden: yes
    sql: diagnostic_report__based_on ;;
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

# The name of this view in Looker is "Diagnostic Report Specimen"
view: diagnostic_report__specimen {
  drill_fields: [specimen_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: specimen_id {
    primary_key: yes
    type: string
    sql: specimenId ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: diagnostic_report__specimen {
    type: string
    hidden: yes
    sql: diagnostic_report__specimen ;;
  }

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

  dimension: reference {
    type: string
    sql: reference ;;
  }
}

# The name of this view in Looker is "Diagnostic Report Performer"
view: diagnostic_report__performer {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Actor Display" in Explore.

  dimension: actor__display {
    type: string
    sql: ${TABLE}.actor.display ;;
    group_label: "Actor"
    group_item_label: "Display"
  }

  dimension: actor__identifier__assigner__display {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.display ;;
    group_label: "Actor Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: actor__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.assigner.display ;;
    group_label: "Actor Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: actor__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Actor Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: actor__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Actor Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: actor__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.period.`end` ;;
    group_label: "Actor Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: actor__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.period.start ;;
    group_label: "Actor Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: actor__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.system ;;
    group_label: "Actor Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: actor__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.actor.identifier.assigner.identifier.type.coding ;;
    group_label: "Actor Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: actor__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.type.text ;;
    group_label: "Actor Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: actor__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.use ;;
    group_label: "Actor Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: actor__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.value ;;
    group_label: "Actor Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: actor__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.organizationId ;;
    group_label: "Actor Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: actor__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.reference ;;
    group_label: "Actor Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: actor__identifier__period__end {
    type: string
    sql: ${TABLE}.actor.identifier.period.`end` ;;
    group_label: "Actor Identifier Period"
    group_item_label: "End"
  }

  dimension: actor__identifier__period__start {
    type: string
    sql: ${TABLE}.actor.identifier.period.start ;;
    group_label: "Actor Identifier Period"
    group_item_label: "Start"
  }

  dimension: actor__identifier__system {
    type: string
    sql: ${TABLE}.actor.identifier.system ;;
    group_label: "Actor Identifier"
    group_item_label: "System"
  }

  dimension: actor__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.actor.identifier.type.coding ;;
    group_label: "Actor Identifier Type"
    group_item_label: "Coding"
  }

  dimension: actor__identifier__type__text {
    type: string
    sql: ${TABLE}.actor.identifier.type.text ;;
    group_label: "Actor Identifier Type"
    group_item_label: "Text"
  }

  dimension: actor__identifier__use {
    type: string
    sql: ${TABLE}.actor.identifier.use ;;
    group_label: "Actor Identifier"
    group_item_label: "Use"
  }

  dimension: actor__identifier__value {
    type: string
    sql: ${TABLE}.actor.identifier.value ;;
    group_label: "Actor Identifier"
    group_item_label: "Value"
  }

  dimension: actor__organization_id {
    type: string
    sql: ${TABLE}.actor.organizationId ;;
    group_label: "Actor"
    group_item_label: "Organization ID"
  }

  dimension: actor__practitioner_id {
    type: string
    sql: ${TABLE}.actor.practitionerId ;;
    group_label: "Actor"
    group_item_label: "Practitioner ID"
  }

  dimension: actor__reference {
    type: string
    sql: ${TABLE}.actor.reference ;;
    group_label: "Actor"
    group_item_label: "Reference"
  }

  dimension: diagnostic_report__performer {
    type: string
    hidden: yes
    sql: diagnostic_report__performer ;;
  }

  dimension: role__coding {
    hidden: yes
    sql: ${TABLE}.role.coding ;;
    group_label: "Role"
    group_item_label: "Coding"
  }

  dimension: role__text {
    type: string
    sql: ${TABLE}.role.text ;;
    group_label: "Role"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "Diagnostic Report Identifier"
view: diagnostic_report__identifier {
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

  dimension: diagnostic_report__identifier {
    type: string
    hidden: yes
    sql: diagnostic_report__identifier ;;
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

# The name of this view in Looker is "Diagnostic Report Meta Profile"
view: diagnostic_report__meta__profile {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Diagnostic Report Meta Profile" in Explore.

  dimension: diagnostic_report__meta__profile {
    type: string
    sql: diagnostic_report__meta__profile ;;
  }
}

# The name of this view in Looker is "Diagnostic Report Imaging Study"
view: diagnostic_report__imaging_study {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: diagnostic_report__imaging_study {
    type: string
    hidden: yes
    sql: diagnostic_report__imaging_study ;;
  }

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

  dimension: imaging_manifest_id {
    type: string
    sql: imagingManifestId ;;
  }

  dimension: imaging_study_id {
    type: string
    sql: imagingStudyId ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }
}

# The name of this view in Looker is "Diagnostic Report Presented Form"
view: diagnostic_report__presented_form {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Content Type" in Explore.

  dimension: content_type {
    type: string
    sql: contentType ;;
  }

  dimension: creation {
    type: string
    sql: creation ;;
  }

  dimension: data {
    type: string
    sql: data ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: diagnostic_report__presented_form {
    type: string
    hidden: yes
    sql: diagnostic_report__presented_form ;;
  }

  dimension: hash {
    type: string
    sql: `hash`
      ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: size {
    type: number
    sql: size ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_size {
    type: sum
    sql: ${size} ;;
  }

  measure: average_size {
    type: average
    sql: ${size} ;;
  }

  dimension: title {
    type: string
    sql: title ;;
  }

  dimension: url {
    type: string
    sql: url ;;
  }
}

# The name of this view in Looker is "Diagnostic Report Meta Tag"
view: diagnostic_report__meta__tag {
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

# The name of this view in Looker is "Diagnostic Report Coded Diagnosis"
view: diagnostic_report__coded_diagnosis {
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
  # This dimension will be called "Diagnostic Report Coded Diagnosis" in Explore.

  dimension: diagnostic_report__coded_diagnosis {
    type: string
    hidden: yes
    sql: diagnostic_report__coded_diagnosis ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }
}

# The name of this view in Looker is "Diagnostic Report Code Coding"
view: diagnostic_report__code__coding {
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

# The name of this view in Looker is "Diagnostic Report Meta Security"
view: diagnostic_report__meta__security {
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

# The name of this view in Looker is "Diagnostic Report Category Coding"
view: diagnostic_report__category__coding {
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

# The name of this view in Looker is "Diagnostic Report Performer Role Coding"
view: diagnostic_report__performer__role__coding {
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

# The name of this view in Looker is "Diagnostic Report Coded Diagnosis Coding"
view: diagnostic_report__coded_diagnosis__coding {
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

# The name of this view in Looker is "Diagnostic Report Identifier Type Coding"
view: diagnostic_report__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Result Identifier Type Coding"
view: diagnostic_report__result__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Subject Identifier Type Coding"
view: diagnostic_report__subject__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Context Identifier Type Coding"
view: diagnostic_report__context__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Based on Identifier Type Coding"
view: diagnostic_report__based_on__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Specimen Identifier Type Coding"
view: diagnostic_report__specimen__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Image Link Identifier Type Coding"
view: diagnostic_report__image__link__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Imaging Study Identifier Type Coding"
view: diagnostic_report__imaging_study__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Performer Actor Identifier Type Coding"
view: diagnostic_report__performer__actor__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Identifier Assigner Identifier Type Coding"
view: diagnostic_report__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Result Identifier Assigner Identifier Type Coding"
view: diagnostic_report__result__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Subject Identifier Assigner Identifier Type Coding"
view: diagnostic_report__subject__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Context Identifier Assigner Identifier Type Coding"
view: diagnostic_report__context__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Based on Identifier Assigner Identifier Type Coding"
view: diagnostic_report__based_on__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Specimen Identifier Assigner Identifier Type Coding"
view: diagnostic_report__specimen__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Image Link Identifier Assigner Identifier Type Coding"
view: diagnostic_report__image__link__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Imaging Study Identifier Assigner Identifier Type Coding"
view: diagnostic_report__imaging_study__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Diagnostic Report Performer Actor Identifier Assigner Identifier Type Coding"
view: diagnostic_report__performer__actor__identifier__assigner__identifier__type__coding {
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
