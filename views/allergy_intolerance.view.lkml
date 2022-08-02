# The name of this view in Looker is "Allergy Intolerance"
view: allergy_intolerance {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.fhir_synthea.allergy_intolerance`
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
  # This dimension will be called "Asserted Date" in Explore.

  dimension: asserted_date {
    type: string
    sql: ${TABLE}.assertedDate ;;
  }

  dimension: asserter__display {
    type: string
    sql: ${TABLE}.asserter.display ;;
    group_label: "Asserter"
    group_item_label: "Display"
  }

  dimension: asserter__identifier__assigner__display {
    type: string
    sql: ${TABLE}.asserter.identifier.assigner.display ;;
    group_label: "Asserter Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: asserter__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.asserter.identifier.assigner.identifier.assigner.display ;;
    group_label: "Asserter Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: asserter__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.asserter.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Asserter Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: asserter__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.asserter.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Asserter Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: asserter__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.asserter.identifier.assigner.identifier.period.`end` ;;
    group_label: "Asserter Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: asserter__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.asserter.identifier.assigner.identifier.period.start ;;
    group_label: "Asserter Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: asserter__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.asserter.identifier.assigner.identifier.system ;;
    group_label: "Asserter Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: asserter__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.asserter.identifier.assigner.identifier.type.coding ;;
    group_label: "Asserter Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: asserter__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.asserter.identifier.assigner.identifier.type.text ;;
    group_label: "Asserter Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: asserter__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.asserter.identifier.assigner.identifier.use ;;
    group_label: "Asserter Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: asserter__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.asserter.identifier.assigner.identifier.value ;;
    group_label: "Asserter Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: asserter__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.asserter.identifier.assigner.organizationId ;;
    group_label: "Asserter Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: asserter__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.asserter.identifier.assigner.reference ;;
    group_label: "Asserter Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: asserter__identifier__period__end {
    type: string
    sql: ${TABLE}.asserter.identifier.period.`end` ;;
    group_label: "Asserter Identifier Period"
    group_item_label: "End"
  }

  dimension: asserter__identifier__period__start {
    type: string
    sql: ${TABLE}.asserter.identifier.period.start ;;
    group_label: "Asserter Identifier Period"
    group_item_label: "Start"
  }

  dimension: asserter__identifier__system {
    type: string
    sql: ${TABLE}.asserter.identifier.system ;;
    group_label: "Asserter Identifier"
    group_item_label: "System"
  }

  dimension: asserter__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.asserter.identifier.type.coding ;;
    group_label: "Asserter Identifier Type"
    group_item_label: "Coding"
  }

  dimension: asserter__identifier__type__text {
    type: string
    sql: ${TABLE}.asserter.identifier.type.text ;;
    group_label: "Asserter Identifier Type"
    group_item_label: "Text"
  }

  dimension: asserter__identifier__use {
    type: string
    sql: ${TABLE}.asserter.identifier.use ;;
    group_label: "Asserter Identifier"
    group_item_label: "Use"
  }

  dimension: asserter__identifier__value {
    type: string
    sql: ${TABLE}.asserter.identifier.value ;;
    group_label: "Asserter Identifier"
    group_item_label: "Value"
  }

  dimension: asserter__patient_id {
    type: string
    sql: ${TABLE}.asserter.patientId ;;
    group_label: "Asserter"
    group_item_label: "Patient ID"
  }

  dimension: asserter__practitioner_id {
    type: string
    sql: ${TABLE}.asserter.practitionerId ;;
    group_label: "Asserter"
    group_item_label: "Practitioner ID"
  }

  dimension: asserter__reference {
    type: string
    sql: ${TABLE}.asserter.reference ;;
    group_label: "Asserter"
    group_item_label: "Reference"
  }

  dimension: asserter__related_person_id {
    type: string
    sql: ${TABLE}.asserter.relatedPersonId ;;
    group_label: "Asserter"
    group_item_label: "Related Person ID"
  }

  dimension: category {
    hidden: yes
    sql: ${TABLE}.category ;;
  }

  dimension: clinical_status {
    type: string
    sql: ${TABLE}.clinicalStatus ;;
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

  dimension: criticality {
    type: string
    sql: ${TABLE}.criticality ;;
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

  dimension: last_occurrence {
    type: string
    sql: ${TABLE}.lastOccurrence ;;
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

  dimension: note {
    hidden: yes
    sql: ${TABLE}.note ;;
  }

  dimension: onset__age__code {
    type: string
    sql: ${TABLE}.onset.age.code ;;
    group_label: "Onset Age"
    group_item_label: "Code"
  }

  dimension: onset__age__comparator {
    type: string
    sql: ${TABLE}.onset.age.comparator ;;
    group_label: "Onset Age"
    group_item_label: "Comparator"
  }

  dimension: onset__age__system {
    type: string
    sql: ${TABLE}.onset.age.system ;;
    group_label: "Onset Age"
    group_item_label: "System"
  }

  dimension: onset__age__unit {
    type: string
    sql: ${TABLE}.onset.age.unit ;;
    group_label: "Onset Age"
    group_item_label: "Unit"
  }

  dimension: onset__age__value {
    type: number
    sql: ${TABLE}.onset.age.value ;;
    group_label: "Onset Age"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_onset__age__value {
    type: sum
    sql: ${onset__age__value} ;;
  }

  measure: average_onset__age__value {
    type: average
    sql: ${onset__age__value} ;;
  }

  dimension: onset__date_time {
    type: string
    sql: ${TABLE}.onset.dateTime ;;
    group_label: "Onset"
    group_item_label: "Date Time"
  }

  dimension: onset__period__end {
    type: string
    sql: ${TABLE}.onset.period.`end` ;;
    group_label: "Onset Period"
    group_item_label: "End"
  }

  dimension: onset__period__start {
    type: string
    sql: ${TABLE}.onset.period.start ;;
    group_label: "Onset Period"
    group_item_label: "Start"
  }

  dimension: onset__range__high__code {
    type: string
    sql: ${TABLE}.onset.`range`.high.code ;;
    group_label: "Onset Range High"
    group_item_label: "Code"
  }

  dimension: onset__range__high__system {
    type: string
    sql: ${TABLE}.onset.`range`.high.system ;;
    group_label: "Onset Range High"
    group_item_label: "System"
  }

  dimension: onset__range__high__unit {
    type: string
    sql: ${TABLE}.onset.`range`.high.unit ;;
    group_label: "Onset Range High"
    group_item_label: "Unit"
  }

  dimension: onset__range__high__value {
    type: number
    sql: ${TABLE}.onset.`range`.high.value ;;
    group_label: "Onset Range High"
    group_item_label: "Value"
  }

  dimension: onset__range__low__code {
    type: string
    sql: ${TABLE}.onset.`range`.low.code ;;
    group_label: "Onset Range Low"
    group_item_label: "Code"
  }

  dimension: onset__range__low__system {
    type: string
    sql: ${TABLE}.onset.`range`.low.system ;;
    group_label: "Onset Range Low"
    group_item_label: "System"
  }

  dimension: onset__range__low__unit {
    type: string
    sql: ${TABLE}.onset.`range`.low.unit ;;
    group_label: "Onset Range Low"
    group_item_label: "Unit"
  }

  dimension: onset__range__low__value {
    type: number
    sql: ${TABLE}.onset.`range`.low.value ;;
    group_label: "Onset Range Low"
    group_item_label: "Value"
  }

  dimension: onset__string {
    type: string
    sql: ${TABLE}.onset.string ;;
    group_label: "Onset"
    group_item_label: "String"
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

  dimension: reaction {
    hidden: yes
    sql: ${TABLE}.reaction ;;
  }

  dimension: recorder__display {
    type: string
    sql: ${TABLE}.recorder.display ;;
    group_label: "Recorder"
    group_item_label: "Display"
  }

  dimension: recorder__identifier__assigner__display {
    type: string
    sql: ${TABLE}.recorder.identifier.assigner.display ;;
    group_label: "Recorder Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: recorder__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.recorder.identifier.assigner.identifier.assigner.display ;;
    group_label: "Recorder Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: recorder__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.recorder.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Recorder Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: recorder__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.recorder.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Recorder Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: recorder__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.recorder.identifier.assigner.identifier.period.`end` ;;
    group_label: "Recorder Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: recorder__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.recorder.identifier.assigner.identifier.period.start ;;
    group_label: "Recorder Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: recorder__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.recorder.identifier.assigner.identifier.system ;;
    group_label: "Recorder Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: recorder__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.recorder.identifier.assigner.identifier.type.coding ;;
    group_label: "Recorder Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: recorder__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.recorder.identifier.assigner.identifier.type.text ;;
    group_label: "Recorder Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: recorder__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.recorder.identifier.assigner.identifier.use ;;
    group_label: "Recorder Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: recorder__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.recorder.identifier.assigner.identifier.value ;;
    group_label: "Recorder Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: recorder__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.recorder.identifier.assigner.organizationId ;;
    group_label: "Recorder Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: recorder__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.recorder.identifier.assigner.reference ;;
    group_label: "Recorder Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: recorder__identifier__period__end {
    type: string
    sql: ${TABLE}.recorder.identifier.period.`end` ;;
    group_label: "Recorder Identifier Period"
    group_item_label: "End"
  }

  dimension: recorder__identifier__period__start {
    type: string
    sql: ${TABLE}.recorder.identifier.period.start ;;
    group_label: "Recorder Identifier Period"
    group_item_label: "Start"
  }

  dimension: recorder__identifier__system {
    type: string
    sql: ${TABLE}.recorder.identifier.system ;;
    group_label: "Recorder Identifier"
    group_item_label: "System"
  }

  dimension: recorder__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.recorder.identifier.type.coding ;;
    group_label: "Recorder Identifier Type"
    group_item_label: "Coding"
  }

  dimension: recorder__identifier__type__text {
    type: string
    sql: ${TABLE}.recorder.identifier.type.text ;;
    group_label: "Recorder Identifier Type"
    group_item_label: "Text"
  }

  dimension: recorder__identifier__use {
    type: string
    sql: ${TABLE}.recorder.identifier.use ;;
    group_label: "Recorder Identifier"
    group_item_label: "Use"
  }

  dimension: recorder__identifier__value {
    type: string
    sql: ${TABLE}.recorder.identifier.value ;;
    group_label: "Recorder Identifier"
    group_item_label: "Value"
  }

  dimension: recorder__patient_id {
    type: string
    sql: ${TABLE}.recorder.patientId ;;
    group_label: "Recorder"
    group_item_label: "Patient ID"
  }

  dimension: recorder__practitioner_id {
    type: string
    sql: ${TABLE}.recorder.practitionerId ;;
    group_label: "Recorder"
    group_item_label: "Practitioner ID"
  }

  dimension: recorder__reference {
    type: string
    sql: ${TABLE}.recorder.reference ;;
    group_label: "Recorder"
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

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: verification_status {
    type: string
    sql: ${TABLE}.verificationStatus ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

# The name of this view in Looker is "Allergy Intolerance Note"
view: allergy_intolerance__note {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: allergy_intolerance__note {
    type: string
    hidden: yes
    sql: allergy_intolerance__note ;;
  }

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

  dimension: text {
    type: string
    sql: text ;;
  }

  dimension: time {
    type: string
    sql: time ;;
  }
}

# The name of this view in Looker is "Allergy Intolerance Reaction"
view: allergy_intolerance__reaction {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: allergy_intolerance__reaction {
    type: string
    hidden: yes
    sql: allergy_intolerance__reaction ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: exposure_route__coding {
    hidden: yes
    sql: ${TABLE}.exposureRoute.coding ;;
    group_label: "Exposure Route"
    group_item_label: "Coding"
  }

  dimension: exposure_route__text {
    type: string
    sql: ${TABLE}.exposureRoute.text ;;
    group_label: "Exposure Route"
    group_item_label: "Text"
  }

  dimension: manifestation {
    hidden: yes
    sql: manifestation ;;
  }

  dimension: note {
    hidden: yes
    sql: note ;;
  }

  dimension: onset {
    type: string
    sql: onset ;;
  }

  dimension: severity {
    type: string
    sql: severity ;;
  }

  dimension: substance__coding {
    hidden: yes
    sql: ${TABLE}.substance.coding ;;
    group_label: "Substance"
    group_item_label: "Coding"
  }

  dimension: substance__text {
    type: string
    sql: ${TABLE}.substance.text ;;
    group_label: "Substance"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "Allergy Intolerance Category"
view: allergy_intolerance__category {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Allergy Intolerance Category" in Explore.

  dimension: allergy_intolerance__category {
    type: string
    sql: allergy_intolerance__category ;;
  }
}

# The name of this view in Looker is "Allergy Intolerance Identifier"
view: allergy_intolerance__identifier {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: allergy_intolerance__identifier {
    type: string
    hidden: yes
    sql: allergy_intolerance__identifier ;;
  }

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

# The name of this view in Looker is "Allergy Intolerance Meta Profile"
view: allergy_intolerance__meta__profile {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Allergy Intolerance Meta Profile" in Explore.

  dimension: allergy_intolerance__meta__profile {
    type: string
    sql: allergy_intolerance__meta__profile ;;
  }
}

# The name of this view in Looker is "Allergy Intolerance Meta Tag"
view: allergy_intolerance__meta__tag {
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

# The name of this view in Looker is "Allergy Intolerance Code Coding"
view: allergy_intolerance__code__coding {
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

# The name of this view in Looker is "Allergy Intolerance Reaction Note"
view: allergy_intolerance__reaction__note {
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

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }
}

# The name of this view in Looker is "Allergy Intolerance Meta Security"
view: allergy_intolerance__meta__security {
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

# The name of this view in Looker is "Allergy Intolerance Identifier Type Coding"
view: allergy_intolerance__identifier__type__coding {
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

# The name of this view in Looker is "Allergy Intolerance Reaction Manifestation"
view: allergy_intolerance__reaction__manifestation {
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

# The name of this view in Looker is "Allergy Intolerance Reaction Substance Coding"
view: allergy_intolerance__reaction__substance__coding {
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

# The name of this view in Looker is "Allergy Intolerance Reaction Manifestation Coding"
view: allergy_intolerance__reaction__manifestation__coding {
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

# The name of this view in Looker is "Allergy Intolerance Reaction Exposure Route Coding"
view: allergy_intolerance__reaction__exposure_route__coding {
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

# The name of this view in Looker is "Allergy Intolerance Patient Identifier Type Coding"
view: allergy_intolerance__patient__identifier__type__coding {
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

# The name of this view in Looker is "Allergy Intolerance Recorder Identifier Type Coding"
view: allergy_intolerance__recorder__identifier__type__coding {
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

# The name of this view in Looker is "Allergy Intolerance Asserter Identifier Type Coding"
view: allergy_intolerance__asserter__identifier__type__coding {
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

# The name of this view in Looker is "Allergy Intolerance Identifier Assigner Identifier Type Coding"
view: allergy_intolerance__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Allergy Intolerance Note Author Reference Identifier Type Coding"
view: allergy_intolerance__note__author__reference__identifier__type__coding {
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

# The name of this view in Looker is "Allergy Intolerance Patient Identifier Assigner Identifier Type Coding"
view: allergy_intolerance__patient__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Allergy Intolerance Recorder Identifier Assigner Identifier Type Coding"
view: allergy_intolerance__recorder__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Allergy Intolerance Asserter Identifier Assigner Identifier Type Coding"
view: allergy_intolerance__asserter__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Allergy Intolerance Reaction Note Author Reference Identifier Type Coding"
view: allergy_intolerance__reaction__note__author__reference__identifier__type__coding {
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

# The name of this view in Looker is "Allergy Intolerance Note Author Reference Identifier Assigner Identifier Type Coding"
view: allergy_intolerance__note__author__reference__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Allergy Intolerance Reaction Note Author Reference Identifier Assigner Identifier Type Coding"
view: allergy_intolerance__reaction__note__author__reference__identifier__assigner__identifier__type__coding {
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
