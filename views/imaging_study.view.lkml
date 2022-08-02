# The name of this view in Looker is "Imaging Study"
view: imaging_study {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.fhir_synthea.imaging_study`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Accession Assigner Display" in Explore.

  dimension: accession__assigner__display {
    type: string
    sql: ${TABLE}.accession.assigner.display ;;
    group_label: "Accession Assigner"
    group_item_label: "Display"
  }

  dimension: accession__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.assigner.display ;;
    group_label: "Accession Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: accession__assigner__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.assigner.identifier.period.`end` ;;
    group_label: "Accession Assigner Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: accession__assigner__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.assigner.identifier.period.start ;;
    group_label: "Accession Assigner Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: accession__assigner__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.assigner.identifier.system ;;
    group_label: "Accession Assigner Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: accession__assigner__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.accession.assigner.identifier.assigner.identifier.type.coding ;;
    group_label: "Accession Assigner Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: accession__assigner__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.assigner.identifier.type.text ;;
    group_label: "Accession Assigner Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: accession__assigner__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.assigner.identifier.use ;;
    group_label: "Accession Assigner Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: accession__assigner__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.assigner.identifier.value ;;
    group_label: "Accession Assigner Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: accession__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.assigner.organizationId ;;
    group_label: "Accession Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: accession__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.assigner.reference ;;
    group_label: "Accession Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: accession__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.period.`end` ;;
    group_label: "Accession Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: accession__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.period.start ;;
    group_label: "Accession Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: accession__assigner__identifier__system {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.system ;;
    group_label: "Accession Assigner Identifier"
    group_item_label: "System"
  }

  dimension: accession__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.accession.assigner.identifier.type.coding ;;
    group_label: "Accession Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: accession__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.type.text ;;
    group_label: "Accession Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: accession__assigner__identifier__use {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.use ;;
    group_label: "Accession Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: accession__assigner__identifier__value {
    type: string
    sql: ${TABLE}.accession.assigner.identifier.value ;;
    group_label: "Accession Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: accession__assigner__organization_id {
    type: string
    sql: ${TABLE}.accession.assigner.organizationId ;;
    group_label: "Accession Assigner"
    group_item_label: "Organization ID"
  }

  dimension: accession__assigner__reference {
    type: string
    sql: ${TABLE}.accession.assigner.reference ;;
    group_label: "Accession Assigner"
    group_item_label: "Reference"
  }

  dimension: accession__period__end {
    type: string
    sql: ${TABLE}.accession.period.`end` ;;
    group_label: "Accession Period"
    group_item_label: "End"
  }

  dimension: accession__period__start {
    type: string
    sql: ${TABLE}.accession.period.start ;;
    group_label: "Accession Period"
    group_item_label: "Start"
  }

  dimension: accession__system {
    type: string
    sql: ${TABLE}.accession.system ;;
    group_label: "Accession"
    group_item_label: "System"
  }

  dimension: accession__type__coding {
    hidden: yes
    sql: ${TABLE}.accession.type.coding ;;
    group_label: "Accession Type"
    group_item_label: "Coding"
  }

  dimension: accession__type__text {
    type: string
    sql: ${TABLE}.accession.type.text ;;
    group_label: "Accession Type"
    group_item_label: "Text"
  }

  dimension: accession__use {
    type: string
    sql: ${TABLE}.accession.use ;;
    group_label: "Accession"
    group_item_label: "Use"
  }

  dimension: accession__value {
    type: string
    sql: ${TABLE}.accession.value ;;
    group_label: "Accession"
    group_item_label: "Value"
  }

  dimension: availability {
    type: string
    sql: ${TABLE}.availability ;;
  }

  dimension: based_on {
    hidden: yes
    sql: ${TABLE}.basedOn ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: endpoint {
    hidden: yes
    sql: ${TABLE}.endpoint ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: implicit_rules {
    type: string
    sql: ${TABLE}.implicitRules ;;
  }

  dimension: interpreter {
    hidden: yes
    sql: ${TABLE}.interpreter ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
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

  dimension: modality_list {
    hidden: yes
    sql: ${TABLE}.modalityList ;;
  }

  dimension: number_of_instances {
    type: number
    sql: ${TABLE}.numberOfInstances ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_of_instances {
    type: sum
    sql: ${number_of_instances} ;;
  }

  measure: average_number_of_instances {
    type: average
    sql: ${number_of_instances} ;;
  }

  dimension: number_of_series {
    type: number
    sql: ${TABLE}.numberOfSeries ;;
  }

  dimension: patient__display {
    type: string
    sql: ${TABLE}.patient.display ;;
    group_label: "Patient"
    group_item_label: "Display"
  }

  dimension: patient__identifier__assigner__display {
    type: string
    sql: ${TABLE}.patient.identifier.assigner.display ;;
    group_label: "Patient Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: patient__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.patient.identifier.assigner.identifier.assigner.display ;;
    group_label: "Patient Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: patient__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.patient.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Patient Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: patient__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.patient.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Patient Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: patient__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.patient.identifier.assigner.identifier.period.`end` ;;
    group_label: "Patient Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: patient__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.patient.identifier.assigner.identifier.period.start ;;
    group_label: "Patient Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: patient__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.patient.identifier.assigner.identifier.system ;;
    group_label: "Patient Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: patient__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.patient.identifier.assigner.identifier.type.coding ;;
    group_label: "Patient Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: patient__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.patient.identifier.assigner.identifier.type.text ;;
    group_label: "Patient Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: patient__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.patient.identifier.assigner.identifier.use ;;
    group_label: "Patient Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: patient__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.patient.identifier.assigner.identifier.value ;;
    group_label: "Patient Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: patient__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.patient.identifier.assigner.organizationId ;;
    group_label: "Patient Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: patient__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.patient.identifier.assigner.reference ;;
    group_label: "Patient Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: patient__identifier__period__end {
    type: string
    sql: ${TABLE}.patient.identifier.period.`end` ;;
    group_label: "Patient Identifier Period"
    group_item_label: "End"
  }

  dimension: patient__identifier__period__start {
    type: string
    sql: ${TABLE}.patient.identifier.period.start ;;
    group_label: "Patient Identifier Period"
    group_item_label: "Start"
  }

  dimension: patient__identifier__system {
    type: string
    sql: ${TABLE}.patient.identifier.system ;;
    group_label: "Patient Identifier"
    group_item_label: "System"
  }

  dimension: patient__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.patient.identifier.type.coding ;;
    group_label: "Patient Identifier Type"
    group_item_label: "Coding"
  }

  dimension: patient__identifier__type__text {
    type: string
    sql: ${TABLE}.patient.identifier.type.text ;;
    group_label: "Patient Identifier Type"
    group_item_label: "Text"
  }

  dimension: patient__identifier__use {
    type: string
    sql: ${TABLE}.patient.identifier.use ;;
    group_label: "Patient Identifier"
    group_item_label: "Use"
  }

  dimension: patient__identifier__value {
    type: string
    sql: ${TABLE}.patient.identifier.value ;;
    group_label: "Patient Identifier"
    group_item_label: "Value"
  }

  dimension: patient__patient_id {
    type: string
    sql: ${TABLE}.patient.patientId ;;
    group_label: "Patient"
    group_item_label: "Patient ID"
  }

  dimension: patient__reference {
    type: string
    sql: ${TABLE}.patient.reference ;;
    group_label: "Patient"
    group_item_label: "Reference"
  }

  dimension: procedure_code {
    hidden: yes
    sql: ${TABLE}.procedureCode ;;
  }

  dimension: procedure_reference {
    hidden: yes
    sql: ${TABLE}.procedureReference ;;
  }

  dimension: reason__coding {
    hidden: yes
    sql: ${TABLE}.reason.coding ;;
    group_label: "Reason"
    group_item_label: "Coding"
  }

  dimension: reason__text {
    type: string
    sql: ${TABLE}.reason.text ;;
    group_label: "Reason"
    group_item_label: "Text"
  }

  dimension: referrer__display {
    type: string
    sql: ${TABLE}.referrer.display ;;
    group_label: "Referrer"
    group_item_label: "Display"
  }

  dimension: referrer__identifier__assigner__display {
    type: string
    sql: ${TABLE}.referrer.identifier.assigner.display ;;
    group_label: "Referrer Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: referrer__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.referrer.identifier.assigner.identifier.assigner.display ;;
    group_label: "Referrer Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: referrer__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.referrer.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Referrer Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: referrer__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.referrer.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Referrer Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: referrer__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.referrer.identifier.assigner.identifier.period.`end` ;;
    group_label: "Referrer Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: referrer__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.referrer.identifier.assigner.identifier.period.start ;;
    group_label: "Referrer Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: referrer__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.referrer.identifier.assigner.identifier.system ;;
    group_label: "Referrer Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: referrer__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.referrer.identifier.assigner.identifier.type.coding ;;
    group_label: "Referrer Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: referrer__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.referrer.identifier.assigner.identifier.type.text ;;
    group_label: "Referrer Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: referrer__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.referrer.identifier.assigner.identifier.use ;;
    group_label: "Referrer Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: referrer__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.referrer.identifier.assigner.identifier.value ;;
    group_label: "Referrer Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: referrer__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.referrer.identifier.assigner.organizationId ;;
    group_label: "Referrer Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: referrer__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.referrer.identifier.assigner.reference ;;
    group_label: "Referrer Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: referrer__identifier__period__end {
    type: string
    sql: ${TABLE}.referrer.identifier.period.`end` ;;
    group_label: "Referrer Identifier Period"
    group_item_label: "End"
  }

  dimension: referrer__identifier__period__start {
    type: string
    sql: ${TABLE}.referrer.identifier.period.start ;;
    group_label: "Referrer Identifier Period"
    group_item_label: "Start"
  }

  dimension: referrer__identifier__system {
    type: string
    sql: ${TABLE}.referrer.identifier.system ;;
    group_label: "Referrer Identifier"
    group_item_label: "System"
  }

  dimension: referrer__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.referrer.identifier.type.coding ;;
    group_label: "Referrer Identifier Type"
    group_item_label: "Coding"
  }

  dimension: referrer__identifier__type__text {
    type: string
    sql: ${TABLE}.referrer.identifier.type.text ;;
    group_label: "Referrer Identifier Type"
    group_item_label: "Text"
  }

  dimension: referrer__identifier__use {
    type: string
    sql: ${TABLE}.referrer.identifier.use ;;
    group_label: "Referrer Identifier"
    group_item_label: "Use"
  }

  dimension: referrer__identifier__value {
    type: string
    sql: ${TABLE}.referrer.identifier.value ;;
    group_label: "Referrer Identifier"
    group_item_label: "Value"
  }

  dimension: referrer__practitioner_id {
    type: string
    sql: ${TABLE}.referrer.practitionerId ;;
    group_label: "Referrer"
    group_item_label: "Practitioner ID"
  }

  dimension: referrer__reference {
    type: string
    sql: ${TABLE}.referrer.reference ;;
    group_label: "Referrer"
    group_item_label: "Reference"
  }

  dimension: series {
    hidden: yes
    sql: ${TABLE}.series ;;
  }

  dimension: started {
    type: string
    sql: ${TABLE}.started ;;
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

  dimension: uid {
    type: string
    sql: ${TABLE}.uid ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

# The name of this view in Looker is "Imaging Study Series"
view: imaging_study__series {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Availability" in Explore.

  dimension: availability {
    type: string
    sql: availability ;;
  }

  dimension: body_site__code {
    type: string
    sql: ${TABLE}.bodySite.code ;;
    group_label: "Body Site"
    group_item_label: "Code"
  }

  dimension: body_site__display {
    type: string
    sql: ${TABLE}.bodySite.display ;;
    group_label: "Body Site"
    group_item_label: "Display"
  }

  dimension: body_site__system {
    type: string
    sql: ${TABLE}.bodySite.system ;;
    group_label: "Body Site"
    group_item_label: "System"
  }

  dimension: body_site__user_selected {
    type: yesno
    sql: ${TABLE}.bodySite.userSelected ;;
    group_label: "Body Site"
    group_item_label: "User Selected"
  }

  dimension: body_site__version {
    type: string
    sql: ${TABLE}.bodySite.version ;;
    group_label: "Body Site"
    group_item_label: "Version"
  }

  dimension: description {
    type: string
    sql: description ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: endpoint {
    hidden: yes
    sql: endpoint ;;
  }

  dimension: imaging_study__series {
    type: string
    hidden: yes
    sql: imaging_study__series ;;
  }

  dimension: instance {
    hidden: yes
    sql: instance ;;
  }

  dimension: laterality__code {
    type: string
    sql: ${TABLE}.laterality.code ;;
    group_label: "Laterality"
    group_item_label: "Code"
  }

  dimension: laterality__display {
    type: string
    sql: ${TABLE}.laterality.display ;;
    group_label: "Laterality"
    group_item_label: "Display"
  }

  dimension: laterality__system {
    type: string
    sql: ${TABLE}.laterality.system ;;
    group_label: "Laterality"
    group_item_label: "System"
  }

  dimension: laterality__user_selected {
    type: yesno
    sql: ${TABLE}.laterality.userSelected ;;
    group_label: "Laterality"
    group_item_label: "User Selected"
  }

  dimension: laterality__version {
    type: string
    sql: ${TABLE}.laterality.version ;;
    group_label: "Laterality"
    group_item_label: "Version"
  }

  dimension: modality__code {
    type: string
    sql: ${TABLE}.modality.code ;;
    group_label: "Modality"
    group_item_label: "Code"
  }

  dimension: modality__display {
    type: string
    sql: ${TABLE}.modality.display ;;
    group_label: "Modality"
    group_item_label: "Display"
  }

  dimension: modality__system {
    type: string
    sql: ${TABLE}.modality.system ;;
    group_label: "Modality"
    group_item_label: "System"
  }

  dimension: modality__user_selected {
    type: yesno
    sql: ${TABLE}.modality.userSelected ;;
    group_label: "Modality"
    group_item_label: "User Selected"
  }

  dimension: modality__version {
    type: string
    sql: ${TABLE}.modality.version ;;
    group_label: "Modality"
    group_item_label: "Version"
  }

  dimension: number {
    type: number
    sql: number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number {
    type: sum
    sql: ${number} ;;
  }

  measure: average_number {
    type: average
    sql: ${number} ;;
  }

  dimension: number_of_instances {
    type: number
    sql: numberOfInstances ;;
  }

  dimension: performer {
    hidden: yes
    sql: performer ;;
  }

  dimension: started {
    type: string
    sql: started ;;
  }

  dimension: uid {
    type: string
    sql: uid ;;
  }
}

# The name of this view in Looker is "Imaging Study Based On"
view: imaging_study__based_on {
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

  dimension: imaging_study__based_on {
    type: string
    hidden: yes
    sql: imaging_study__based_on ;;
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

# The name of this view in Looker is "Imaging Study Endpoint"
view: imaging_study__endpoint {
  drill_fields: [endpoint_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: endpoint_id {
    primary_key: yes
    type: string
    sql: endpointId ;;
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

  dimension: imaging_study__endpoint {
    type: string
    hidden: yes
    sql: imaging_study__endpoint ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }
}

# The name of this view in Looker is "Imaging Study Identifier"
view: imaging_study__identifier {
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

  dimension: imaging_study__identifier {
    type: string
    hidden: yes
    sql: imaging_study__identifier ;;
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

# The name of this view in Looker is "Imaging Study Interpreter"
view: imaging_study__interpreter {
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

  dimension: imaging_study__interpreter {
    type: string
    hidden: yes
    sql: imaging_study__interpreter ;;
  }

  dimension: practitioner_id {
    type: string
    sql: practitionerId ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }
}

# The name of this view in Looker is "Imaging Study Modality List"
view: imaging_study__modality_list {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: code ;;
  }

  dimension: display {
    type: string
    sql: display ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: imaging_study__modality_list {
    type: string
    hidden: yes
    sql: imaging_study__modality_list ;;
  }

  dimension: system {
    type: string
    sql: system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: userSelected ;;
  }

  dimension: version {
    type: string
    sql: version ;;
  }
}

# The name of this view in Looker is "Imaging Study Meta Profile"
view: imaging_study__meta__profile {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Imaging Study Meta Profile" in Explore.

  dimension: imaging_study__meta__profile {
    type: string
    sql: imaging_study__meta__profile ;;
  }
}

# The name of this view in Looker is "Imaging Study Procedure Code"
view: imaging_study__procedure_code {
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
  # This dimension will be called "Imaging Study Procedure Code" in Explore.

  dimension: imaging_study__procedure_code {
    type: string
    hidden: yes
    sql: imaging_study__procedure_code ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }
}

# The name of this view in Looker is "Imaging Study Meta Tag"
view: imaging_study__meta__tag {
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

# The name of this view in Looker is "Imaging Study Reason Coding"
view: imaging_study__reason__coding {
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

# The name of this view in Looker is "Imaging Study Meta Security"
view: imaging_study__meta__security {
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

# The name of this view in Looker is "Imaging Study Procedure Reference"
view: imaging_study__procedure_reference {
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

  dimension: imaging_study__procedure_reference {
    type: string
    hidden: yes
    sql: imaging_study__procedure_reference ;;
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

# The name of this view in Looker is "Imaging Study Series Instance"
view: imaging_study__series__instance {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Number" in Explore.

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number {
    type: sum
    sql: ${number} ;;
  }

  measure: average_number {
    type: average
    sql: ${number} ;;
  }

  dimension: sop_class {
    type: string
    sql: ${TABLE}.sopClass ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}.uid ;;
  }
}

# The name of this view in Looker is "Imaging Study Series Endpoint"
view: imaging_study__series__endpoint {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Display" in Explore.

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: endpoint_id {
    type: string
    sql: ${TABLE}.endpointId ;;
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

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

# The name of this view in Looker is "Imaging Study Series Performer"
view: imaging_study__series__performer {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Display" in Explore.

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
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

  dimension: practitioner_id {
    type: string
    sql: ${TABLE}.practitionerId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

# The name of this view in Looker is "Imaging Study Procedure Code Coding"
view: imaging_study__procedure_code__coding {
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

# The name of this view in Looker is "Imaging Study Accession Type Coding"
view: imaging_study__accession__type__coding {
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

# The name of this view in Looker is "Imaging Study Identifier Type Coding"
view: imaging_study__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Patient Identifier Type Coding"
view: imaging_study__patient__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Context Identifier Type Coding"
view: imaging_study__context__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Based on Identifier Type Coding"
view: imaging_study__based_on__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Referrer Identifier Type Coding"
view: imaging_study__referrer__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Endpoint Identifier Type Coding"
view: imaging_study__endpoint__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Interpreter Identifier Type Coding"
view: imaging_study__interpreter__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Series Endpoint Identifier Type Coding"
view: imaging_study__series__endpoint__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Series Performer Identifier Type Coding"
view: imaging_study__series__performer__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Accession Assigner Identifier Type Coding"
view: imaging_study__accession__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Procedure Reference Identifier Type Coding"
view: imaging_study__procedure_reference__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Identifier Assigner Identifier Type Coding"
view: imaging_study__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Patient Identifier Assigner Identifier Type Coding"
view: imaging_study__patient__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Context Identifier Assigner Identifier Type Coding"
view: imaging_study__context__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Based on Identifier Assigner Identifier Type Coding"
view: imaging_study__based_on__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Referrer Identifier Assigner Identifier Type Coding"
view: imaging_study__referrer__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Endpoint Identifier Assigner Identifier Type Coding"
view: imaging_study__endpoint__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Interpreter Identifier Assigner Identifier Type Coding"
view: imaging_study__interpreter__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Series Endpoint Identifier Assigner Identifier Type Coding"
view: imaging_study__series__endpoint__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Series Performer Identifier Assigner Identifier Type Coding"
view: imaging_study__series__performer__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Accession Assigner Identifier Assigner Identifier Type Coding"
view: imaging_study__accession__assigner__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Imaging Study Procedure Reference Identifier Assigner Identifier Type Coding"
view: imaging_study__procedure_reference__identifier__assigner__identifier__type__coding {
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
