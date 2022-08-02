# The name of this view in Looker is "Condition"
view: condition {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.fhir_synthea.condition`
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
  # This dimension will be called "Abatement Age Code" in Explore.

  dimension: abatement__age__code {
    type: string
    sql: ${TABLE}.abatement.age.code ;;
    group_label: "Abatement Age"
    group_item_label: "Code"
  }

  dimension: abatement__age__comparator {
    type: string
    sql: ${TABLE}.abatement.age.comparator ;;
    group_label: "Abatement Age"
    group_item_label: "Comparator"
  }

  dimension: abatement__age__system {
    type: string
    sql: ${TABLE}.abatement.age.system ;;
    group_label: "Abatement Age"
    group_item_label: "System"
  }

  dimension: abatement__age__unit {
    type: string
    sql: ${TABLE}.abatement.age.unit ;;
    group_label: "Abatement Age"
    group_item_label: "Unit"
  }

  dimension: abatement__age__value {
    type: number
    sql: ${TABLE}.abatement.age.value ;;
    group_label: "Abatement Age"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_abatement__age__value {
    type: sum
    sql: ${abatement__age__value} ;;
  }

  measure: average_abatement__age__value {
    type: average
    sql: ${abatement__age__value} ;;
  }

  dimension: abatement__boolean {
    type: yesno
    sql: ${TABLE}.abatement.boolean ;;
    group_label: "Abatement"
    group_item_label: "Boolean"
  }

  dimension: abatement__date_time {
    type: string
    sql: ${TABLE}.abatement.dateTime ;;
    group_label: "Abatement"
    group_item_label: "Date Time"
  }

  dimension: abatement__period__end {
    type: string
    sql: ${TABLE}.abatement.period.`end` ;;
    group_label: "Abatement Period"
    group_item_label: "End"
  }

  dimension: abatement__period__start {
    type: string
    sql: ${TABLE}.abatement.period.start ;;
    group_label: "Abatement Period"
    group_item_label: "Start"
  }

  dimension: abatement__range__high__code {
    type: string
    sql: ${TABLE}.abatement.`range`.high.code ;;
    group_label: "Abatement Range High"
    group_item_label: "Code"
  }

  dimension: abatement__range__high__system {
    type: string
    sql: ${TABLE}.abatement.`range`.high.system ;;
    group_label: "Abatement Range High"
    group_item_label: "System"
  }

  dimension: abatement__range__high__unit {
    type: string
    sql: ${TABLE}.abatement.`range`.high.unit ;;
    group_label: "Abatement Range High"
    group_item_label: "Unit"
  }

  dimension: abatement__range__high__value {
    type: number
    sql: ${TABLE}.abatement.`range`.high.value ;;
    group_label: "Abatement Range High"
    group_item_label: "Value"
  }

  dimension: abatement__range__low__code {
    type: string
    sql: ${TABLE}.abatement.`range`.low.code ;;
    group_label: "Abatement Range Low"
    group_item_label: "Code"
  }

  dimension: abatement__range__low__system {
    type: string
    sql: ${TABLE}.abatement.`range`.low.system ;;
    group_label: "Abatement Range Low"
    group_item_label: "System"
  }

  dimension: abatement__range__low__unit {
    type: string
    sql: ${TABLE}.abatement.`range`.low.unit ;;
    group_label: "Abatement Range Low"
    group_item_label: "Unit"
  }

  dimension: abatement__range__low__value {
    type: number
    sql: ${TABLE}.abatement.`range`.low.value ;;
    group_label: "Abatement Range Low"
    group_item_label: "Value"
  }

  dimension: abatement__string {
    type: string
    sql: ${TABLE}.abatement.string ;;
    group_label: "Abatement"
    group_item_label: "String"
  }

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

  dimension: body_site {
    hidden: yes
    sql: ${TABLE}.bodySite ;;
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

  dimension: evidence {
    hidden: yes
    sql: ${TABLE}.evidence ;;
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

  dimension: severity__coding {
    hidden: yes
    sql: ${TABLE}.severity.coding ;;
    group_label: "Severity"
    group_item_label: "Coding"
  }

  dimension: severity__text {
    type: string
    sql: ${TABLE}.severity.text ;;
    group_label: "Severity"
    group_item_label: "Text"
  }

  dimension: stage__assessment {
    hidden: yes
    sql: ${TABLE}.stage.assessment ;;
    group_label: "Stage"
    group_item_label: "Assessment"
  }

  dimension: stage__summary__coding {
    hidden: yes
    sql: ${TABLE}.stage.summary.coding ;;
    group_label: "Stage Summary"
    group_item_label: "Coding"
  }

  dimension: stage__summary__text {
    type: string
    sql: ${TABLE}.stage.summary.text ;;
    group_label: "Stage Summary"
    group_item_label: "Text"
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

  dimension: verification_status {
    type: string
    sql: ${TABLE}.verificationStatus ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

# The name of this view in Looker is "Condition Note"
view: condition__note {
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

  dimension: condition__note {
    type: string
    hidden: yes
    sql: condition__note ;;
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

# The name of this view in Looker is "Condition Evidence"
view: condition__evidence {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: code {
    hidden: yes
    sql: code ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Condition Evidence" in Explore.

  dimension: condition__evidence {
    type: string
    hidden: yes
    sql: condition__evidence ;;
  }

  dimension: detail {
    hidden: yes
    sql: detail ;;
  }
}

# The name of this view in Looker is "Condition Body Site"
view: condition__body_site {
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
  # This dimension will be called "Condition Body Site" in Explore.

  dimension: condition__body_site {
    type: string
    hidden: yes
    sql: condition__body_site ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }
}

# The name of this view in Looker is "Condition Category"
view: condition__category {
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
  # This dimension will be called "Condition Category" in Explore.

  dimension: condition__category {
    type: string
    hidden: yes
    sql: condition__category ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }
}

# The name of this view in Looker is "Condition Identifier"
view: condition__identifier {
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

  dimension: condition__identifier {
    type: string
    hidden: yes
    sql: condition__identifier ;;
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

# The name of this view in Looker is "Condition Meta Profile"
view: condition__meta__profile {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Condition Meta Profile" in Explore.

  dimension: condition__meta__profile {
    type: string
    sql: condition__meta__profile ;;
  }
}

# The name of this view in Looker is "Condition Meta Tag"
view: condition__meta__tag {
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

# The name of this view in Looker is "Condition Code Coding"
view: condition__code__coding {
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

# The name of this view in Looker is "Condition Evidence Code"
view: condition__evidence__code {
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

# The name of this view in Looker is "Condition Meta Security"
view: condition__meta__security {
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

# The name of this view in Looker is "Condition Severity Coding"
view: condition__severity__coding {
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

# The name of this view in Looker is "Condition Body Site Coding"
view: condition__body_site__coding {
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

# The name of this view in Looker is "Condition Category Coding"
view: condition__category__coding {
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

# The name of this view in Looker is "Condition Evidence Detail"
view: condition__evidence__detail {
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

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }

  dimension: resource_id {
    type: string
    sql: ${TABLE}.resourceId ;;
  }
}

# The name of this view in Looker is "Condition Stage Assessment"
view: condition__stage__assessment {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Clinical Impression ID" in Explore.

  dimension: clinical_impression_id {
    type: string
    sql: ${TABLE}.clinicalImpressionId ;;
  }

  dimension: diagnostic_report_id {
    type: string
    sql: ${TABLE}.diagnosticReportId ;;
  }

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

  dimension: observation_id {
    type: string
    sql: ${TABLE}.observationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

# The name of this view in Looker is "Condition Evidence Code Coding"
view: condition__evidence__code__coding {
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

# The name of this view in Looker is "Condition Stage Summary Coding"
view: condition__stage__summary__coding {
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

# The name of this view in Looker is "Condition Identifier Type Coding"
view: condition__identifier__type__coding {
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

# The name of this view in Looker is "Condition Subject Identifier Type Coding"
view: condition__subject__identifier__type__coding {
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

# The name of this view in Looker is "Condition Context Identifier Type Coding"
view: condition__context__identifier__type__coding {
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

# The name of this view in Looker is "Condition Asserter Identifier Type Coding"
view: condition__asserter__identifier__type__coding {
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

# The name of this view in Looker is "Condition Evidence Detail Identifier Type Coding"
view: condition__evidence__detail__identifier__type__coding {
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

# The name of this view in Looker is "Condition Stage Assessment Identifier Type Coding"
view: condition__stage__assessment__identifier__type__coding {
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

# The name of this view in Looker is "Condition Identifier Assigner Identifier Type Coding"
view: condition__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Condition Note Author Reference Identifier Type Coding"
view: condition__note__author__reference__identifier__type__coding {
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

# The name of this view in Looker is "Condition Subject Identifier Assigner Identifier Type Coding"
view: condition__subject__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Condition Context Identifier Assigner Identifier Type Coding"
view: condition__context__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Condition Asserter Identifier Assigner Identifier Type Coding"
view: condition__asserter__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Condition Evidence Detail Identifier Assigner Identifier Type Coding"
view: condition__evidence__detail__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Condition Stage Assessment Identifier Assigner Identifier Type Coding"
view: condition__stage__assessment__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Condition Note Author Reference Identifier Assigner Identifier Type Coding"
view: condition__note__author__reference__identifier__assigner__identifier__type__coding {
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
