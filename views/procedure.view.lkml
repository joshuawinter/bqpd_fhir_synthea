# The name of this view in Looker is "Procedure"
view: procedure {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.fhir_synthea.procedure`
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
  # This dimension will be called "Body Site" in Explore.

  dimension: body_site {
    hidden: yes
    sql: ${TABLE}.bodySite ;;
  }

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

  dimension: complication {
    hidden: yes
    sql: ${TABLE}.complication ;;
  }

  dimension: complication_detail {
    hidden: yes
    sql: ${TABLE}.complicationDetail ;;
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

  dimension: definition {
    hidden: yes
    sql: ${TABLE}.definition ;;
  }

  dimension: focal_device {
    hidden: yes
    sql: ${TABLE}.focalDevice ;;
  }

  dimension: follow_up {
    hidden: yes
    sql: ${TABLE}.followUp ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: implicit_rules {
    type: string
    sql: ${TABLE}.implicitRules ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: location__display {
    type: string
    sql: ${TABLE}.location.display ;;
    group_label: "Location"
    group_item_label: "Display"
  }

  dimension: location__identifier__assigner__display {
    type: string
    sql: ${TABLE}.location.identifier.assigner.display ;;
    group_label: "Location Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: location__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.assigner.display ;;
    group_label: "Location Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: location__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Location Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: location__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Location Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: location__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.period.`end` ;;
    group_label: "Location Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: location__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.period.start ;;
    group_label: "Location Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: location__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.system ;;
    group_label: "Location Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: location__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.location.identifier.assigner.identifier.type.coding ;;
    group_label: "Location Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: location__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.type.text ;;
    group_label: "Location Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: location__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.use ;;
    group_label: "Location Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: location__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.value ;;
    group_label: "Location Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: location__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.location.identifier.assigner.organizationId ;;
    group_label: "Location Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: location__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.location.identifier.assigner.reference ;;
    group_label: "Location Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: location__identifier__period__end {
    type: string
    sql: ${TABLE}.location.identifier.period.`end` ;;
    group_label: "Location Identifier Period"
    group_item_label: "End"
  }

  dimension: location__identifier__period__start {
    type: string
    sql: ${TABLE}.location.identifier.period.start ;;
    group_label: "Location Identifier Period"
    group_item_label: "Start"
  }

  dimension: location__identifier__system {
    type: string
    sql: ${TABLE}.location.identifier.system ;;
    group_label: "Location Identifier"
    group_item_label: "System"
  }

  dimension: location__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.location.identifier.type.coding ;;
    group_label: "Location Identifier Type"
    group_item_label: "Coding"
  }

  dimension: location__identifier__type__text {
    type: string
    sql: ${TABLE}.location.identifier.type.text ;;
    group_label: "Location Identifier Type"
    group_item_label: "Text"
  }

  dimension: location__identifier__use {
    type: string
    sql: ${TABLE}.location.identifier.use ;;
    group_label: "Location Identifier"
    group_item_label: "Use"
  }

  dimension: location__identifier__value {
    type: string
    sql: ${TABLE}.location.identifier.value ;;
    group_label: "Location Identifier"
    group_item_label: "Value"
  }

  dimension: location__location_id {
    type: string
    sql: ${TABLE}.location.locationId ;;
    group_label: "Location"
    group_item_label: "Location ID"
  }

  dimension: location__reference {
    type: string
    sql: ${TABLE}.location.reference ;;
    group_label: "Location"
    group_item_label: "Reference"
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  dimension: not_done {
    type: yesno
    sql: ${TABLE}.notDone ;;
  }

  dimension: not_done_reason__coding {
    hidden: yes
    sql: ${TABLE}.notDoneReason.coding ;;
    group_label: "Not Done Reason"
    group_item_label: "Coding"
  }

  dimension: not_done_reason__text {
    type: string
    sql: ${TABLE}.notDoneReason.text ;;
    group_label: "Not Done Reason"
    group_item_label: "Text"
  }

  dimension: note {
    hidden: yes
    sql: ${TABLE}.note ;;
  }

  dimension: outcome__coding {
    hidden: yes
    sql: ${TABLE}.outcome.coding ;;
    group_label: "Outcome"
    group_item_label: "Coding"
  }

  dimension: outcome__text {
    type: string
    sql: ${TABLE}.outcome.text ;;
    group_label: "Outcome"
    group_item_label: "Text"
  }

  dimension: part_of {
    hidden: yes
    sql: ${TABLE}.partOf ;;
  }

  dimension: performed__date_time {
    type: string
    sql: ${TABLE}.performed.dateTime ;;
    group_label: "Performed"
    group_item_label: "Date Time"
  }

  dimension: performed__period__end {
    type: string
    sql: ${TABLE}.performed.period.`end` ;;
    group_label: "Performed Period"
    group_item_label: "End"
  }

  dimension: performed__period__start {
    type: string
    sql: ${TABLE}.performed.period.start ;;
    group_label: "Performed Period"
    group_item_label: "Start"
  }

  dimension: performer {
    hidden: yes
    sql: ${TABLE}.performer ;;
  }

  dimension: reason_code {
    hidden: yes
    sql: ${TABLE}.reasonCode ;;
  }

  dimension: reason_reference {
    hidden: yes
    sql: ${TABLE}.reasonReference ;;
  }

  dimension: report {
    hidden: yes
    sql: ${TABLE}.report ;;
  }

  dimension: shr_action_performed_context_extension__shr_action_status_extension__value__code {
    type: string
    sql: ${TABLE}.shr_action_PerformedContext_extension.shr_action_Status_extension.value.code ;;
    group_label: "Shr Action Performed Context Extension Shr Action Status Extension Value"
    group_item_label: "Code"
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
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

  dimension: used_code {
    hidden: yes
    sql: ${TABLE}.usedCode ;;
  }

  dimension: used_reference {
    hidden: yes
    sql: ${TABLE}.usedReference ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

# The name of this view in Looker is "Procedure Note"
view: procedure__note {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Author Reference Display" in Explore.

  dimension: author__reference__display {
    type: string
    sql: ${TABLE}.author.reference.display ;;
    group_label: "Author Reference"
    group_item_label: "Display"
  }

  dimension: author__reference__identifier__assigner__display {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.display ;;
    group_label: "Author Reference Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: author__reference__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.assigner.display ;;
    group_label: "Author Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: author__reference__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Author Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: author__reference__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Author Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: author__reference__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.period.`end` ;;
    group_label: "Author Reference Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: author__reference__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.period.start ;;
    group_label: "Author Reference Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: author__reference__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.system ;;
    group_label: "Author Reference Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: author__reference__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.type.coding ;;
    group_label: "Author Reference Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: author__reference__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.type.text ;;
    group_label: "Author Reference Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: author__reference__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.use ;;
    group_label: "Author Reference Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: author__reference__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.value ;;
    group_label: "Author Reference Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: author__reference__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.organizationId ;;
    group_label: "Author Reference Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: author__reference__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.reference ;;
    group_label: "Author Reference Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: author__reference__identifier__period__end {
    type: string
    sql: ${TABLE}.author.reference.identifier.period.`end` ;;
    group_label: "Author Reference Identifier Period"
    group_item_label: "End"
  }

  dimension: author__reference__identifier__period__start {
    type: string
    sql: ${TABLE}.author.reference.identifier.period.start ;;
    group_label: "Author Reference Identifier Period"
    group_item_label: "Start"
  }

  dimension: author__reference__identifier__system {
    type: string
    sql: ${TABLE}.author.reference.identifier.system ;;
    group_label: "Author Reference Identifier"
    group_item_label: "System"
  }

  dimension: author__reference__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.author.reference.identifier.type.coding ;;
    group_label: "Author Reference Identifier Type"
    group_item_label: "Coding"
  }

  dimension: author__reference__identifier__type__text {
    type: string
    sql: ${TABLE}.author.reference.identifier.type.text ;;
    group_label: "Author Reference Identifier Type"
    group_item_label: "Text"
  }

  dimension: author__reference__identifier__use {
    type: string
    sql: ${TABLE}.author.reference.identifier.use ;;
    group_label: "Author Reference Identifier"
    group_item_label: "Use"
  }

  dimension: author__reference__identifier__value {
    type: string
    sql: ${TABLE}.author.reference.identifier.value ;;
    group_label: "Author Reference Identifier"
    group_item_label: "Value"
  }

  dimension: author__reference__patient_id {
    type: string
    sql: ${TABLE}.author.reference.patientId ;;
    group_label: "Author Reference"
    group_item_label: "Patient ID"
  }

  dimension: author__reference__practitioner_id {
    type: string
    sql: ${TABLE}.author.reference.practitionerId ;;
    group_label: "Author Reference"
    group_item_label: "Practitioner ID"
  }

  dimension: author__reference__reference {
    type: string
    sql: ${TABLE}.author.reference.reference ;;
    group_label: "Author Reference"
    group_item_label: "Reference"
  }

  dimension: author__reference__related_person_id {
    type: string
    sql: ${TABLE}.author.reference.relatedPersonId ;;
    group_label: "Author Reference"
    group_item_label: "Related Person ID"
  }

  dimension: author__string {
    type: string
    sql: ${TABLE}.author.string ;;
    group_label: "Author"
    group_item_label: "String"
  }

  dimension: procedure__note {
    type: string
    hidden: yes
    sql: procedure__note ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }

  dimension: time {
    type: string
    sql: time ;;
  }
}

# The name of this view in Looker is "Procedure Part Of"
view: procedure__part_of {
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

  dimension: medication_administration_id {
    type: string
    sql: medicationAdministrationId ;;
  }

  dimension: observation_id {
    type: string
    sql: observationId ;;
  }

  dimension: procedure__part_of {
    type: string
    hidden: yes
    sql: procedure__part_of ;;
  }

  dimension: procedure_id {
    type: string
    sql: procedureId ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }
}

# The name of this view in Looker is "Procedure Report"
view: procedure__report {
  drill_fields: [diagnostic_report_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: diagnostic_report_id {
    primary_key: yes
    type: string
    sql: diagnosticReportId ;;
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

  dimension: procedure__report {
    type: string
    hidden: yes
    sql: procedure__report ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }
}

# The name of this view in Looker is "Procedure Based On"
view: procedure__based_on {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Care Plan ID" in Explore.

  dimension: care_plan_id {
    type: string
    sql: carePlanId ;;
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

  dimension: procedure__based_on {
    type: string
    hidden: yes
    sql: procedure__based_on ;;
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

# The name of this view in Looker is "Procedure Follow Up"
view: procedure__follow_up {
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
  # This dimension will be called "Procedure Follow Up" in Explore.

  dimension: procedure__follow_up {
    type: string
    hidden: yes
    sql: procedure__follow_up ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }
}

# The name of this view in Looker is "Procedure Used Code"
view: procedure__used_code {
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
  # This dimension will be called "Procedure Used Code" in Explore.

  dimension: procedure__used_code {
    type: string
    hidden: yes
    sql: procedure__used_code ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }
}

# The name of this view in Looker is "Procedure Body Site"
view: procedure__body_site {
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
  # This dimension will be called "Procedure Body Site" in Explore.

  dimension: procedure__body_site {
    type: string
    hidden: yes
    sql: procedure__body_site ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }
}

# The name of this view in Looker is "Procedure Performer"
view: procedure__performer {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Actor Device ID" in Explore.

  dimension: actor__device_id {
    type: string
    sql: ${TABLE}.actor.deviceId ;;
    group_label: "Actor"
    group_item_label: "Device ID"
  }

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

  dimension: actor__patient_id {
    type: string
    sql: ${TABLE}.actor.patientId ;;
    group_label: "Actor"
    group_item_label: "Patient ID"
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

  dimension: actor__related_person_id {
    type: string
    sql: ${TABLE}.actor.relatedPersonId ;;
    group_label: "Actor"
    group_item_label: "Related Person ID"
  }

  dimension: on_behalf_of__display {
    type: string
    sql: ${TABLE}.onBehalfOf.display ;;
    group_label: "On Behalf Of"
    group_item_label: "Display"
  }

  dimension: on_behalf_of__identifier__assigner__display {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.display ;;
    group_label: "On Behalf of Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.assigner.display ;;
    group_label: "On Behalf of Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "On Behalf of Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.assigner.reference ;;
    group_label: "On Behalf of Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.period.`end` ;;
    group_label: "On Behalf of Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.period.start ;;
    group_label: "On Behalf of Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.system ;;
    group_label: "On Behalf of Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.type.coding ;;
    group_label: "On Behalf of Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.type.text ;;
    group_label: "On Behalf of Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.use ;;
    group_label: "On Behalf of Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.value ;;
    group_label: "On Behalf of Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: on_behalf_of__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.organizationId ;;
    group_label: "On Behalf of Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: on_behalf_of__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.reference ;;
    group_label: "On Behalf of Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: on_behalf_of__identifier__period__end {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.period.`end` ;;
    group_label: "On Behalf of Identifier Period"
    group_item_label: "End"
  }

  dimension: on_behalf_of__identifier__period__start {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.period.start ;;
    group_label: "On Behalf of Identifier Period"
    group_item_label: "Start"
  }

  dimension: on_behalf_of__identifier__system {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.system ;;
    group_label: "On Behalf of Identifier"
    group_item_label: "System"
  }

  dimension: on_behalf_of__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.onBehalfOf.identifier.type.coding ;;
    group_label: "On Behalf of Identifier Type"
    group_item_label: "Coding"
  }

  dimension: on_behalf_of__identifier__type__text {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.type.text ;;
    group_label: "On Behalf of Identifier Type"
    group_item_label: "Text"
  }

  dimension: on_behalf_of__identifier__use {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.use ;;
    group_label: "On Behalf of Identifier"
    group_item_label: "Use"
  }

  dimension: on_behalf_of__identifier__value {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.value ;;
    group_label: "On Behalf of Identifier"
    group_item_label: "Value"
  }

  dimension: on_behalf_of__organization_id {
    type: string
    sql: ${TABLE}.onBehalfOf.organizationId ;;
    group_label: "On Behalf Of"
    group_item_label: "Organization ID"
  }

  dimension: on_behalf_of__reference {
    type: string
    sql: ${TABLE}.onBehalfOf.reference ;;
    group_label: "On Behalf Of"
    group_item_label: "Reference"
  }

  dimension: procedure__performer {
    type: string
    hidden: yes
    sql: procedure__performer ;;
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

# The name of this view in Looker is "Procedure Definition"
view: procedure__definition {
  drill_fields: [activity_definition_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: activity_definition_id {
    primary_key: yes
    type: string
    sql: activityDefinitionId ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Display" in Explore.

  dimension: display {
    type: string
    sql: display ;;
  }

  dimension: healthcare_service_id {
    type: string
    sql: healthcareServiceId ;;
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

  dimension: plan_definition_id {
    type: string
    sql: planDefinitionId ;;
  }

  dimension: procedure__definition {
    type: string
    hidden: yes
    sql: procedure__definition ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }
}

# The name of this view in Looker is "Procedure Reason Code"
view: procedure__reason_code {
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
  # This dimension will be called "Procedure Reason Code" in Explore.

  dimension: procedure__reason_code {
    type: string
    hidden: yes
    sql: procedure__reason_code ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }
}

# The name of this view in Looker is "Procedure Identifier"
view: procedure__identifier {
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

  dimension: procedure__identifier {
    type: string
    hidden: yes
    sql: procedure__identifier ;;
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

# The name of this view in Looker is "Procedure Focal Device"
view: procedure__focal_device {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: action__coding {
    hidden: yes
    sql: ${TABLE}.action.coding ;;
    group_label: "Action"
    group_item_label: "Coding"
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Action Text" in Explore.

  dimension: action__text {
    type: string
    sql: ${TABLE}.action.text ;;
    group_label: "Action"
    group_item_label: "Text"
  }

  dimension: manipulated__device_id {
    type: string
    sql: ${TABLE}.manipulated.deviceId ;;
    group_label: "Manipulated"
    group_item_label: "Device ID"
  }

  dimension: manipulated__display {
    type: string
    sql: ${TABLE}.manipulated.display ;;
    group_label: "Manipulated"
    group_item_label: "Display"
  }

  dimension: manipulated__identifier__assigner__display {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.display ;;
    group_label: "Manipulated Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: manipulated__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.assigner.display ;;
    group_label: "Manipulated Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: manipulated__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Manipulated Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: manipulated__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Manipulated Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: manipulated__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.period.`end` ;;
    group_label: "Manipulated Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: manipulated__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.period.start ;;
    group_label: "Manipulated Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: manipulated__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.system ;;
    group_label: "Manipulated Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: manipulated__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.type.coding ;;
    group_label: "Manipulated Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: manipulated__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.type.text ;;
    group_label: "Manipulated Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: manipulated__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.use ;;
    group_label: "Manipulated Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: manipulated__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.value ;;
    group_label: "Manipulated Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: manipulated__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.organizationId ;;
    group_label: "Manipulated Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: manipulated__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.reference ;;
    group_label: "Manipulated Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: manipulated__identifier__period__end {
    type: string
    sql: ${TABLE}.manipulated.identifier.period.`end` ;;
    group_label: "Manipulated Identifier Period"
    group_item_label: "End"
  }

  dimension: manipulated__identifier__period__start {
    type: string
    sql: ${TABLE}.manipulated.identifier.period.start ;;
    group_label: "Manipulated Identifier Period"
    group_item_label: "Start"
  }

  dimension: manipulated__identifier__system {
    type: string
    sql: ${TABLE}.manipulated.identifier.system ;;
    group_label: "Manipulated Identifier"
    group_item_label: "System"
  }

  dimension: manipulated__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.manipulated.identifier.type.coding ;;
    group_label: "Manipulated Identifier Type"
    group_item_label: "Coding"
  }

  dimension: manipulated__identifier__type__text {
    type: string
    sql: ${TABLE}.manipulated.identifier.type.text ;;
    group_label: "Manipulated Identifier Type"
    group_item_label: "Text"
  }

  dimension: manipulated__identifier__use {
    type: string
    sql: ${TABLE}.manipulated.identifier.use ;;
    group_label: "Manipulated Identifier"
    group_item_label: "Use"
  }

  dimension: manipulated__identifier__value {
    type: string
    sql: ${TABLE}.manipulated.identifier.value ;;
    group_label: "Manipulated Identifier"
    group_item_label: "Value"
  }

  dimension: manipulated__reference {
    type: string
    sql: ${TABLE}.manipulated.reference ;;
    group_label: "Manipulated"
    group_item_label: "Reference"
  }

  dimension: procedure__focal_device {
    type: string
    hidden: yes
    sql: procedure__focal_device ;;
  }
}

# The name of this view in Looker is "Procedure Complication"
view: procedure__complication {
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
  # This dimension will be called "Procedure Complication" in Explore.

  dimension: procedure__complication {
    type: string
    hidden: yes
    sql: procedure__complication ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }
}

# The name of this view in Looker is "Procedure Meta Profile"
view: procedure__meta__profile {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Procedure Meta Profile" in Explore.

  dimension: procedure__meta__profile {
    type: string
    sql: procedure__meta__profile ;;
  }
}

# The name of this view in Looker is "Procedure Used Reference"
view: procedure__used_reference {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Device ID" in Explore.

  dimension: device_id {
    type: string
    sql: deviceId ;;
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

  dimension: medication_id {
    type: string
    sql: medicationId ;;
  }

  dimension: procedure__used_reference {
    type: string
    hidden: yes
    sql: procedure__used_reference ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }

  dimension: substance_id {
    type: string
    sql: substanceId ;;
  }
}

# The name of this view in Looker is "Procedure Meta Tag"
view: procedure__meta__tag {
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

# The name of this view in Looker is "Procedure Reason Reference"
view: procedure__reason_reference {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Condition ID" in Explore.

  dimension: condition_id {
    type: string
    sql: conditionId ;;
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

  dimension: observation_id {
    type: string
    sql: observationId ;;
  }

  dimension: procedure__reason_reference {
    type: string
    hidden: yes
    sql: procedure__reason_reference ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }
}

# The name of this view in Looker is "Procedure Code Coding"
view: procedure__code__coding {
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

# The name of this view in Looker is "Procedure Complication Detail"
view: procedure__complication_detail {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Condition ID" in Explore.

  dimension: condition_id {
    type: string
    sql: conditionId ;;
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

  dimension: procedure__complication_detail {
    type: string
    hidden: yes
    sql: procedure__complication_detail ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }
}

# The name of this view in Looker is "Procedure Meta Security"
view: procedure__meta__security {
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

# The name of this view in Looker is "Procedure Outcome Coding"
view: procedure__outcome__coding {
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

# The name of this view in Looker is "Procedure Follow Up Coding"
view: procedure__follow_up__coding {
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

# The name of this view in Looker is "Procedure Used Code Coding"
view: procedure__used_code__coding {
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

# The name of this view in Looker is "Procedure Body Site Coding"
view: procedure__body_site__coding {
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

# The name of this view in Looker is "Procedure Category Coding"
view: procedure__category__coding {
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

# The name of this view in Looker is "Procedure Reason Code Coding"
view: procedure__reason_code__coding {
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

# The name of this view in Looker is "Procedure Complication Coding"
view: procedure__complication__coding {
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

# The name of this view in Looker is "Procedure Not Done Reason Coding"
view: procedure__not_done_reason__coding {
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

# The name of this view in Looker is "Procedure Performer Role Coding"
view: procedure__performer__role__coding {
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

# The name of this view in Looker is "Procedure Identifier Type Coding"
view: procedure__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Focal Device Action Coding"
view: procedure__focal_device__action__coding {
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

# The name of this view in Looker is "Procedure Part of Identifier Type Coding"
view: procedure__part_of__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Report Identifier Type Coding"
view: procedure__report__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Subject Identifier Type Coding"
view: procedure__subject__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Context Identifier Type Coding"
view: procedure__context__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Based on Identifier Type Coding"
view: procedure__based_on__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Location Identifier Type Coding"
view: procedure__location__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Definition Identifier Type Coding"
view: procedure__definition__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Used Reference Identifier Type Coding"
view: procedure__used_reference__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Reason Reference Identifier Type Coding"
view: procedure__reason_reference__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Performer Actor Identifier Type Coding"
view: procedure__performer__actor__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Complication Detail Identifier Type Coding"
view: procedure__complication_detail__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Identifier Assigner Identifier Type Coding"
view: procedure__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Performer on Behalf of Identifier Type Coding"
view: procedure__performer__on_behalf_of__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Note Author Reference Identifier Type Coding"
view: procedure__note__author__reference__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Focal Device Manipulated Identifier Type Coding"
view: procedure__focal_device__manipulated__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Part of Identifier Assigner Identifier Type Coding"
view: procedure__part_of__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Report Identifier Assigner Identifier Type Coding"
view: procedure__report__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Subject Identifier Assigner Identifier Type Coding"
view: procedure__subject__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Context Identifier Assigner Identifier Type Coding"
view: procedure__context__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Based on Identifier Assigner Identifier Type Coding"
view: procedure__based_on__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Location Identifier Assigner Identifier Type Coding"
view: procedure__location__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Definition Identifier Assigner Identifier Type Coding"
view: procedure__definition__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Used Reference Identifier Assigner Identifier Type Coding"
view: procedure__used_reference__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Reason Reference Identifier Assigner Identifier Type Coding"
view: procedure__reason_reference__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Performer Actor Identifier Assigner Identifier Type Coding"
view: procedure__performer__actor__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Complication Detail Identifier Assigner Identifier Type Coding"
view: procedure__complication_detail__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Performer on Behalf of Identifier Assigner Identifier Type Coding"
view: procedure__performer__on_behalf_of__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Note Author Reference Identifier Assigner Identifier Type Coding"
view: procedure__note__author__reference__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Procedure Focal Device Manipulated Identifier Assigner Identifier Type Coding"
view: procedure__focal_device__manipulated__identifier__assigner__identifier__type__coding {
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
