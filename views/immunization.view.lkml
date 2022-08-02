# The name of this view in Looker is "Immunization"
view: immunization {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.fhir_synthea.immunization`
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
  # This dimension will be called "Date" in Explore.

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: dose_quantity__code {
    type: string
    sql: ${TABLE}.doseQuantity.code ;;
    group_label: "Dose Quantity"
    group_item_label: "Code"
  }

  dimension: dose_quantity__system {
    type: string
    sql: ${TABLE}.doseQuantity.system ;;
    group_label: "Dose Quantity"
    group_item_label: "System"
  }

  dimension: dose_quantity__unit {
    type: string
    sql: ${TABLE}.doseQuantity.unit ;;
    group_label: "Dose Quantity"
    group_item_label: "Unit"
  }

  dimension: dose_quantity__value {
    type: number
    sql: ${TABLE}.doseQuantity.value ;;
    group_label: "Dose Quantity"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_dose_quantity__value {
    type: sum
    sql: ${dose_quantity__value} ;;
  }

  measure: average_dose_quantity__value {
    type: average
    sql: ${dose_quantity__value} ;;
  }

  dimension: encounter__display {
    type: string
    sql: ${TABLE}.encounter.display ;;
    group_label: "Encounter"
    group_item_label: "Display"
  }

  dimension: encounter__encounter_id {
    type: string
    sql: ${TABLE}.encounter.encounterId ;;
    group_label: "Encounter"
    group_item_label: "Encounter ID"
  }

  dimension: encounter__identifier__assigner__display {
    type: string
    sql: ${TABLE}.encounter.identifier.assigner.display ;;
    group_label: "Encounter Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: encounter__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.encounter.identifier.assigner.identifier.assigner.display ;;
    group_label: "Encounter Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: encounter__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.encounter.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Encounter Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: encounter__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.encounter.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Encounter Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: encounter__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.encounter.identifier.assigner.identifier.period.`end` ;;
    group_label: "Encounter Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: encounter__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.encounter.identifier.assigner.identifier.period.start ;;
    group_label: "Encounter Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: encounter__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.encounter.identifier.assigner.identifier.system ;;
    group_label: "Encounter Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: encounter__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.encounter.identifier.assigner.identifier.type.coding ;;
    group_label: "Encounter Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: encounter__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.encounter.identifier.assigner.identifier.type.text ;;
    group_label: "Encounter Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: encounter__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.encounter.identifier.assigner.identifier.use ;;
    group_label: "Encounter Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: encounter__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.encounter.identifier.assigner.identifier.value ;;
    group_label: "Encounter Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: encounter__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.encounter.identifier.assigner.organizationId ;;
    group_label: "Encounter Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: encounter__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.encounter.identifier.assigner.reference ;;
    group_label: "Encounter Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: encounter__identifier__period__end {
    type: string
    sql: ${TABLE}.encounter.identifier.period.`end` ;;
    group_label: "Encounter Identifier Period"
    group_item_label: "End"
  }

  dimension: encounter__identifier__period__start {
    type: string
    sql: ${TABLE}.encounter.identifier.period.start ;;
    group_label: "Encounter Identifier Period"
    group_item_label: "Start"
  }

  dimension: encounter__identifier__system {
    type: string
    sql: ${TABLE}.encounter.identifier.system ;;
    group_label: "Encounter Identifier"
    group_item_label: "System"
  }

  dimension: encounter__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.encounter.identifier.type.coding ;;
    group_label: "Encounter Identifier Type"
    group_item_label: "Coding"
  }

  dimension: encounter__identifier__type__text {
    type: string
    sql: ${TABLE}.encounter.identifier.type.text ;;
    group_label: "Encounter Identifier Type"
    group_item_label: "Text"
  }

  dimension: encounter__identifier__use {
    type: string
    sql: ${TABLE}.encounter.identifier.use ;;
    group_label: "Encounter Identifier"
    group_item_label: "Use"
  }

  dimension: encounter__identifier__value {
    type: string
    sql: ${TABLE}.encounter.identifier.value ;;
    group_label: "Encounter Identifier"
    group_item_label: "Value"
  }

  dimension: encounter__reference {
    type: string
    sql: ${TABLE}.encounter.reference ;;
    group_label: "Encounter"
    group_item_label: "Reference"
  }

  dimension: expiration_date {
    type: string
    sql: ${TABLE}.expirationDate ;;
  }

  dimension: explanation__reason {
    hidden: yes
    sql: ${TABLE}.explanation.reason ;;
    group_label: "Explanation"
    group_item_label: "Reason"
  }

  dimension: explanation__reason_not_given {
    hidden: yes
    sql: ${TABLE}.explanation.reasonNotGiven ;;
    group_label: "Explanation"
    group_item_label: "Reason Not Given"
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

  dimension: lot_number {
    type: string
    sql: ${TABLE}.lotNumber ;;
  }

  dimension: manufacturer__display {
    type: string
    sql: ${TABLE}.manufacturer.display ;;
    group_label: "Manufacturer"
    group_item_label: "Display"
  }

  dimension: manufacturer__identifier__assigner__display {
    type: string
    sql: ${TABLE}.manufacturer.identifier.assigner.display ;;
    group_label: "Manufacturer Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: manufacturer__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.manufacturer.identifier.assigner.identifier.assigner.display ;;
    group_label: "Manufacturer Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: manufacturer__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.manufacturer.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Manufacturer Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: manufacturer__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.manufacturer.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Manufacturer Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: manufacturer__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.manufacturer.identifier.assigner.identifier.period.`end` ;;
    group_label: "Manufacturer Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: manufacturer__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.manufacturer.identifier.assigner.identifier.period.start ;;
    group_label: "Manufacturer Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: manufacturer__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.manufacturer.identifier.assigner.identifier.system ;;
    group_label: "Manufacturer Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: manufacturer__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.manufacturer.identifier.assigner.identifier.type.coding ;;
    group_label: "Manufacturer Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: manufacturer__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.manufacturer.identifier.assigner.identifier.type.text ;;
    group_label: "Manufacturer Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: manufacturer__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.manufacturer.identifier.assigner.identifier.use ;;
    group_label: "Manufacturer Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: manufacturer__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.manufacturer.identifier.assigner.identifier.value ;;
    group_label: "Manufacturer Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: manufacturer__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.manufacturer.identifier.assigner.organizationId ;;
    group_label: "Manufacturer Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: manufacturer__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.manufacturer.identifier.assigner.reference ;;
    group_label: "Manufacturer Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: manufacturer__identifier__period__end {
    type: string
    sql: ${TABLE}.manufacturer.identifier.period.`end` ;;
    group_label: "Manufacturer Identifier Period"
    group_item_label: "End"
  }

  dimension: manufacturer__identifier__period__start {
    type: string
    sql: ${TABLE}.manufacturer.identifier.period.start ;;
    group_label: "Manufacturer Identifier Period"
    group_item_label: "Start"
  }

  dimension: manufacturer__identifier__system {
    type: string
    sql: ${TABLE}.manufacturer.identifier.system ;;
    group_label: "Manufacturer Identifier"
    group_item_label: "System"
  }

  dimension: manufacturer__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.manufacturer.identifier.type.coding ;;
    group_label: "Manufacturer Identifier Type"
    group_item_label: "Coding"
  }

  dimension: manufacturer__identifier__type__text {
    type: string
    sql: ${TABLE}.manufacturer.identifier.type.text ;;
    group_label: "Manufacturer Identifier Type"
    group_item_label: "Text"
  }

  dimension: manufacturer__identifier__use {
    type: string
    sql: ${TABLE}.manufacturer.identifier.use ;;
    group_label: "Manufacturer Identifier"
    group_item_label: "Use"
  }

  dimension: manufacturer__identifier__value {
    type: string
    sql: ${TABLE}.manufacturer.identifier.value ;;
    group_label: "Manufacturer Identifier"
    group_item_label: "Value"
  }

  dimension: manufacturer__organization_id {
    type: string
    sql: ${TABLE}.manufacturer.organizationId ;;
    group_label: "Manufacturer"
    group_item_label: "Organization ID"
  }

  dimension: manufacturer__reference {
    type: string
    sql: ${TABLE}.manufacturer.reference ;;
    group_label: "Manufacturer"
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

  dimension: not_given {
    type: yesno
    sql: ${TABLE}.notGiven ;;
  }

  dimension: note {
    hidden: yes
    sql: ${TABLE}.note ;;
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

  dimension: practitioner {
    hidden: yes
    sql: ${TABLE}.practitioner ;;
  }

  dimension: primary_source {
    type: yesno
    sql: ${TABLE}.primarySource ;;
  }

  dimension: reaction {
    hidden: yes
    sql: ${TABLE}.reaction ;;
  }

  dimension: report_origin__coding {
    hidden: yes
    sql: ${TABLE}.reportOrigin.coding ;;
    group_label: "Report Origin"
    group_item_label: "Coding"
  }

  dimension: report_origin__text {
    type: string
    sql: ${TABLE}.reportOrigin.text ;;
    group_label: "Report Origin"
    group_item_label: "Text"
  }

  dimension: route__coding {
    hidden: yes
    sql: ${TABLE}.route.coding ;;
    group_label: "Route"
    group_item_label: "Coding"
  }

  dimension: route__text {
    type: string
    sql: ${TABLE}.route.text ;;
    group_label: "Route"
    group_item_label: "Text"
  }

  dimension: shr_action_performed_context_extension__shr_action_status_extension__value__code {
    type: string
    sql: ${TABLE}.shr_action_PerformedContext_extension.shr_action_Status_extension.value.code ;;
    group_label: "Shr Action Performed Context Extension Shr Action Status Extension Value"
    group_item_label: "Code"
  }

  dimension: site__coding {
    hidden: yes
    sql: ${TABLE}.site.coding ;;
    group_label: "Site"
    group_item_label: "Coding"
  }

  dimension: site__text {
    type: string
    sql: ${TABLE}.site.text ;;
    group_label: "Site"
    group_item_label: "Text"
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
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

  dimension: vaccination_protocol {
    hidden: yes
    sql: ${TABLE}.vaccinationProtocol ;;
  }

  dimension: vaccine_code__coding {
    hidden: yes
    sql: ${TABLE}.vaccineCode.coding ;;
    group_label: "Vaccine Code"
    group_item_label: "Coding"
  }

  dimension: vaccine_code__text {
    type: string
    sql: ${TABLE}.vaccineCode.text ;;
    group_label: "Vaccine Code"
    group_item_label: "Text"
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

# The name of this view in Looker is "Immunization Note"
view: immunization__note {
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

  dimension: immunization__note {
    type: string
    hidden: yes
    sql: immunization__note ;;
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

# The name of this view in Looker is "Immunization Reaction"
view: immunization__reaction {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Date" in Explore.

  dimension: date {
    type: string
    sql: date ;;
  }

  dimension: detail__display {
    type: string
    sql: ${TABLE}.detail.display ;;
    group_label: "Detail"
    group_item_label: "Display"
  }

  dimension: detail__identifier__assigner__display {
    type: string
    sql: ${TABLE}.detail.identifier.assigner.display ;;
    group_label: "Detail Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: detail__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.detail.identifier.assigner.identifier.assigner.display ;;
    group_label: "Detail Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: detail__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.detail.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Detail Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: detail__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.detail.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Detail Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: detail__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.detail.identifier.assigner.identifier.period.`end` ;;
    group_label: "Detail Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: detail__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.detail.identifier.assigner.identifier.period.start ;;
    group_label: "Detail Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: detail__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.detail.identifier.assigner.identifier.system ;;
    group_label: "Detail Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: detail__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.detail.identifier.assigner.identifier.type.coding ;;
    group_label: "Detail Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: detail__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.detail.identifier.assigner.identifier.type.text ;;
    group_label: "Detail Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: detail__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.detail.identifier.assigner.identifier.use ;;
    group_label: "Detail Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: detail__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.detail.identifier.assigner.identifier.value ;;
    group_label: "Detail Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: detail__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.detail.identifier.assigner.organizationId ;;
    group_label: "Detail Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: detail__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.detail.identifier.assigner.reference ;;
    group_label: "Detail Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: detail__identifier__period__end {
    type: string
    sql: ${TABLE}.detail.identifier.period.`end` ;;
    group_label: "Detail Identifier Period"
    group_item_label: "End"
  }

  dimension: detail__identifier__period__start {
    type: string
    sql: ${TABLE}.detail.identifier.period.start ;;
    group_label: "Detail Identifier Period"
    group_item_label: "Start"
  }

  dimension: detail__identifier__system {
    type: string
    sql: ${TABLE}.detail.identifier.system ;;
    group_label: "Detail Identifier"
    group_item_label: "System"
  }

  dimension: detail__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.detail.identifier.type.coding ;;
    group_label: "Detail Identifier Type"
    group_item_label: "Coding"
  }

  dimension: detail__identifier__type__text {
    type: string
    sql: ${TABLE}.detail.identifier.type.text ;;
    group_label: "Detail Identifier Type"
    group_item_label: "Text"
  }

  dimension: detail__identifier__use {
    type: string
    sql: ${TABLE}.detail.identifier.use ;;
    group_label: "Detail Identifier"
    group_item_label: "Use"
  }

  dimension: detail__identifier__value {
    type: string
    sql: ${TABLE}.detail.identifier.value ;;
    group_label: "Detail Identifier"
    group_item_label: "Value"
  }

  dimension: detail__observation_id {
    type: string
    sql: ${TABLE}.detail.observationId ;;
    group_label: "Detail"
    group_item_label: "Observation ID"
  }

  dimension: detail__reference {
    type: string
    sql: ${TABLE}.detail.reference ;;
    group_label: "Detail"
    group_item_label: "Reference"
  }

  dimension: immunization__reaction {
    type: string
    hidden: yes
    sql: immunization__reaction ;;
  }

  dimension: reported {
    type: yesno
    sql: reported ;;
  }
}

# The name of this view in Looker is "Immunization Identifier"
view: immunization__identifier {
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

  dimension: immunization__identifier {
    type: string
    hidden: yes
    sql: immunization__identifier ;;
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

# The name of this view in Looker is "Immunization Practitioner"
view: immunization__practitioner {
  drill_fields: [actor__practitioner_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: actor__practitioner_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.actor.practitionerId ;;
    group_label: "Actor"
    group_item_label: "Practitioner ID"
  }

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

  dimension: actor__reference {
    type: string
    sql: ${TABLE}.actor.reference ;;
    group_label: "Actor"
    group_item_label: "Reference"
  }

  dimension: immunization__practitioner {
    type: string
    hidden: yes
    sql: immunization__practitioner ;;
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

# The name of this view in Looker is "Immunization Meta Profile"
view: immunization__meta__profile {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Immunization Meta Profile" in Explore.

  dimension: immunization__meta__profile {
    type: string
    sql: immunization__meta__profile ;;
  }
}

# The name of this view in Looker is "Immunization Meta Tag"
view: immunization__meta__tag {
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

# The name of this view in Looker is "Immunization Site Coding"
view: immunization__site__coding {
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

# The name of this view in Looker is "Immunization Route Coding"
view: immunization__route__coding {
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

# The name of this view in Looker is "Immunization Meta Security"
view: immunization__meta__security {
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

# The name of this view in Looker is "Immunization Vaccination Protocol"
view: immunization__vaccination_protocol {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Authority Display" in Explore.

  dimension: authority__display {
    type: string
    sql: ${TABLE}.authority.display ;;
    group_label: "Authority"
    group_item_label: "Display"
  }

  dimension: authority__identifier__assigner__display {
    type: string
    sql: ${TABLE}.authority.identifier.assigner.display ;;
    group_label: "Authority Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: authority__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.authority.identifier.assigner.identifier.assigner.display ;;
    group_label: "Authority Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: authority__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.authority.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Authority Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: authority__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.authority.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Authority Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: authority__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.authority.identifier.assigner.identifier.period.`end` ;;
    group_label: "Authority Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: authority__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.authority.identifier.assigner.identifier.period.start ;;
    group_label: "Authority Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: authority__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.authority.identifier.assigner.identifier.system ;;
    group_label: "Authority Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: authority__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.authority.identifier.assigner.identifier.type.coding ;;
    group_label: "Authority Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: authority__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.authority.identifier.assigner.identifier.type.text ;;
    group_label: "Authority Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: authority__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.authority.identifier.assigner.identifier.use ;;
    group_label: "Authority Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: authority__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.authority.identifier.assigner.identifier.value ;;
    group_label: "Authority Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: authority__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.authority.identifier.assigner.organizationId ;;
    group_label: "Authority Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: authority__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.authority.identifier.assigner.reference ;;
    group_label: "Authority Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: authority__identifier__period__end {
    type: string
    sql: ${TABLE}.authority.identifier.period.`end` ;;
    group_label: "Authority Identifier Period"
    group_item_label: "End"
  }

  dimension: authority__identifier__period__start {
    type: string
    sql: ${TABLE}.authority.identifier.period.start ;;
    group_label: "Authority Identifier Period"
    group_item_label: "Start"
  }

  dimension: authority__identifier__system {
    type: string
    sql: ${TABLE}.authority.identifier.system ;;
    group_label: "Authority Identifier"
    group_item_label: "System"
  }

  dimension: authority__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.authority.identifier.type.coding ;;
    group_label: "Authority Identifier Type"
    group_item_label: "Coding"
  }

  dimension: authority__identifier__type__text {
    type: string
    sql: ${TABLE}.authority.identifier.type.text ;;
    group_label: "Authority Identifier Type"
    group_item_label: "Text"
  }

  dimension: authority__identifier__use {
    type: string
    sql: ${TABLE}.authority.identifier.use ;;
    group_label: "Authority Identifier"
    group_item_label: "Use"
  }

  dimension: authority__identifier__value {
    type: string
    sql: ${TABLE}.authority.identifier.value ;;
    group_label: "Authority Identifier"
    group_item_label: "Value"
  }

  dimension: authority__organization_id {
    type: string
    sql: ${TABLE}.authority.organizationId ;;
    group_label: "Authority"
    group_item_label: "Organization ID"
  }

  dimension: authority__reference {
    type: string
    sql: ${TABLE}.authority.reference ;;
    group_label: "Authority"
    group_item_label: "Reference"
  }

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: dose_sequence {
    type: number
    sql: doseSequence ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_dose_sequence {
    type: sum
    sql: ${dose_sequence} ;;
  }

  measure: average_dose_sequence {
    type: average
    sql: ${dose_sequence} ;;
  }

  dimension: dose_status__coding {
    hidden: yes
    sql: ${TABLE}.doseStatus.coding ;;
    group_label: "Dose Status"
    group_item_label: "Coding"
  }

  dimension: dose_status__text {
    type: string
    sql: ${TABLE}.doseStatus.text ;;
    group_label: "Dose Status"
    group_item_label: "Text"
  }

  dimension: dose_status_reason__coding {
    hidden: yes
    sql: ${TABLE}.doseStatusReason.coding ;;
    group_label: "Dose Status Reason"
    group_item_label: "Coding"
  }

  dimension: dose_status_reason__text {
    type: string
    sql: ${TABLE}.doseStatusReason.text ;;
    group_label: "Dose Status Reason"
    group_item_label: "Text"
  }

  dimension: immunization__vaccination_protocol {
    type: string
    hidden: yes
    sql: immunization__vaccination_protocol ;;
  }

  dimension: series {
    type: string
    sql: series ;;
  }

  dimension: series_doses {
    type: number
    sql: seriesDoses ;;
  }

  dimension: target_disease {
    hidden: yes
    sql: targetDisease ;;
  }
}

# The name of this view in Looker is "Immunization Explanation Reason"
view: immunization__explanation__reason {
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

# The name of this view in Looker is "Immunization Vaccine Code Coding"
view: immunization__vaccine_code__coding {
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

# The name of this view in Looker is "Immunization Report Origin Coding"
view: immunization__report_origin__coding {
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

# The name of this view in Looker is "Immunization Identifier Type Coding"
view: immunization__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Practitioner Role Coding"
view: immunization__practitioner__role__coding {
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

# The name of this view in Looker is "Immunization Explanation Reason Coding"
view: immunization__explanation__reason__coding {
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

# The name of this view in Looker is "Immunization Explanation Reason Not Given"
view: immunization__explanation__reason_not_given {
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

# The name of this view in Looker is "Immunization Patient Identifier Type Coding"
view: immunization__patient__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Location Identifier Type Coding"
view: immunization__location__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Encounter Identifier Type Coding"
view: immunization__encounter__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Explanation Reason Not Given Coding"
view: immunization__explanation__reason_not_given__coding {
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

# The name of this view in Looker is "Immunization Vaccination Protocol Target Disease"
view: immunization__vaccination_protocol__target_disease {
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

# The name of this view in Looker is "Immunization Manufacturer Identifier Type Coding"
view: immunization__manufacturer__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Vaccination Protocol Dose Status Coding"
view: immunization__vaccination_protocol__dose_status__coding {
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

# The name of this view in Looker is "Immunization Reaction Detail Identifier Type Coding"
view: immunization__reaction__detail__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Vaccination Protocol Target Disease Coding"
view: immunization__vaccination_protocol__target_disease__coding {
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

# The name of this view in Looker is "Immunization Practitioner Actor Identifier Type Coding"
view: immunization__practitioner__actor__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Identifier Assigner Identifier Type Coding"
view: immunization__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Vaccination Protocol Dose Status Reason Coding"
view: immunization__vaccination_protocol__dose_status_reason__coding {
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

# The name of this view in Looker is "Immunization Note Author Reference Identifier Type Coding"
view: immunization__note__author__reference__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Patient Identifier Assigner Identifier Type Coding"
view: immunization__patient__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Location Identifier Assigner Identifier Type Coding"
view: immunization__location__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Encounter Identifier Assigner Identifier Type Coding"
view: immunization__encounter__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Vaccination Protocol Authority Identifier Type Coding"
view: immunization__vaccination_protocol__authority__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Manufacturer Identifier Assigner Identifier Type Coding"
view: immunization__manufacturer__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Reaction Detail Identifier Assigner Identifier Type Coding"
view: immunization__reaction__detail__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Practitioner Actor Identifier Assigner Identifier Type Coding"
view: immunization__practitioner__actor__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Note Author Reference Identifier Assigner Identifier Type Coding"
view: immunization__note__author__reference__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Immunization Vaccination Protocol Authority Identifier Assigner Identifier Type Coding"
view: immunization__vaccination_protocol__authority__identifier__assigner__identifier__type__coding {
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
