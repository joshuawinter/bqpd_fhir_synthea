# The name of this view in Looker is "Medication Request"
view: medication_request {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.fhir_synthea.medication_request`
    ;;
  drill_fields: [prior_prescription__medication_request_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: prior_prescription__medication_request_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.priorPrescription.medicationRequestId ;;
    group_label: "Prior Prescription"
    group_item_label: "Medication Request ID"
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Authored On" in Explore.

  dimension: authored_on {
    type: string
    sql: ${TABLE}.authoredOn ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: based_on {
    hidden: yes
    sql: ${TABLE}.basedOn ;;
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

  dimension: detected_issue {
    hidden: yes
    sql: ${TABLE}.detectedIssue ;;
  }

  dimension: dispense_request__expected_supply_duration__code {
    type: string
    sql: ${TABLE}.dispenseRequest.expectedSupplyDuration.code ;;
    group_label: "Dispense Request Expected Supply Duration"
    group_item_label: "Code"
  }

  dimension: dispense_request__expected_supply_duration__comparator {
    type: string
    sql: ${TABLE}.dispenseRequest.expectedSupplyDuration.comparator ;;
    group_label: "Dispense Request Expected Supply Duration"
    group_item_label: "Comparator"
  }

  dimension: dispense_request__expected_supply_duration__system {
    type: string
    sql: ${TABLE}.dispenseRequest.expectedSupplyDuration.system ;;
    group_label: "Dispense Request Expected Supply Duration"
    group_item_label: "System"
  }

  dimension: dispense_request__expected_supply_duration__unit {
    type: string
    sql: ${TABLE}.dispenseRequest.expectedSupplyDuration.unit ;;
    group_label: "Dispense Request Expected Supply Duration"
    group_item_label: "Unit"
  }

  dimension: dispense_request__expected_supply_duration__value {
    type: number
    sql: ${TABLE}.dispenseRequest.expectedSupplyDuration.value ;;
    group_label: "Dispense Request Expected Supply Duration"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_dispense_request__expected_supply_duration__value {
    type: sum
    sql: ${dispense_request__expected_supply_duration__value} ;;
  }

  measure: average_dispense_request__expected_supply_duration__value {
    type: average
    sql: ${dispense_request__expected_supply_duration__value} ;;
  }

  dimension: dispense_request__number_of_repeats_allowed {
    type: number
    sql: ${TABLE}.dispenseRequest.numberOfRepeatsAllowed ;;
    group_label: "Dispense Request"
    group_item_label: "Number of Repeats Allowed"
  }

  dimension: dispense_request__performer__display {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.display ;;
    group_label: "Dispense Request Performer"
    group_item_label: "Display"
  }

  dimension: dispense_request__performer__identifier__assigner__display {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.assigner.display ;;
    group_label: "Dispense Request Performer Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: dispense_request__performer__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.assigner.identifier.assigner.display ;;
    group_label: "Dispense Request Performer Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: dispense_request__performer__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Dispense Request Performer Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: dispense_request__performer__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Dispense Request Performer Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: dispense_request__performer__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.assigner.identifier.period.`end` ;;
    group_label: "Dispense Request Performer Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: dispense_request__performer__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.assigner.identifier.period.start ;;
    group_label: "Dispense Request Performer Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: dispense_request__performer__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.assigner.identifier.system ;;
    group_label: "Dispense Request Performer Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: dispense_request__performer__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.dispenseRequest.performer.identifier.assigner.identifier.type.coding ;;
    group_label: "Dispense Request Performer Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: dispense_request__performer__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.assigner.identifier.type.text ;;
    group_label: "Dispense Request Performer Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: dispense_request__performer__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.assigner.identifier.use ;;
    group_label: "Dispense Request Performer Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: dispense_request__performer__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.assigner.identifier.value ;;
    group_label: "Dispense Request Performer Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: dispense_request__performer__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.assigner.organizationId ;;
    group_label: "Dispense Request Performer Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: dispense_request__performer__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.assigner.reference ;;
    group_label: "Dispense Request Performer Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: dispense_request__performer__identifier__period__end {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.period.`end` ;;
    group_label: "Dispense Request Performer Identifier Period"
    group_item_label: "End"
  }

  dimension: dispense_request__performer__identifier__period__start {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.period.start ;;
    group_label: "Dispense Request Performer Identifier Period"
    group_item_label: "Start"
  }

  dimension: dispense_request__performer__identifier__system {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.system ;;
    group_label: "Dispense Request Performer Identifier"
    group_item_label: "System"
  }

  dimension: dispense_request__performer__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.dispenseRequest.performer.identifier.type.coding ;;
    group_label: "Dispense Request Performer Identifier Type"
    group_item_label: "Coding"
  }

  dimension: dispense_request__performer__identifier__type__text {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.type.text ;;
    group_label: "Dispense Request Performer Identifier Type"
    group_item_label: "Text"
  }

  dimension: dispense_request__performer__identifier__use {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.use ;;
    group_label: "Dispense Request Performer Identifier"
    group_item_label: "Use"
  }

  dimension: dispense_request__performer__identifier__value {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.identifier.value ;;
    group_label: "Dispense Request Performer Identifier"
    group_item_label: "Value"
  }

  dimension: dispense_request__performer__organization_id {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.organizationId ;;
    group_label: "Dispense Request Performer"
    group_item_label: "Organization ID"
  }

  dimension: dispense_request__performer__reference {
    type: string
    sql: ${TABLE}.dispenseRequest.performer.reference ;;
    group_label: "Dispense Request Performer"
    group_item_label: "Reference"
  }

  dimension: dispense_request__quantity__code {
    type: string
    sql: ${TABLE}.dispenseRequest.quantity.code ;;
    group_label: "Dispense Request Quantity"
    group_item_label: "Code"
  }

  dimension: dispense_request__quantity__system {
    type: string
    sql: ${TABLE}.dispenseRequest.quantity.system ;;
    group_label: "Dispense Request Quantity"
    group_item_label: "System"
  }

  dimension: dispense_request__quantity__unit {
    type: string
    sql: ${TABLE}.dispenseRequest.quantity.unit ;;
    group_label: "Dispense Request Quantity"
    group_item_label: "Unit"
  }

  dimension: dispense_request__quantity__value {
    type: number
    sql: ${TABLE}.dispenseRequest.quantity.value ;;
    group_label: "Dispense Request Quantity"
    group_item_label: "Value"
  }

  dimension: dispense_request__validity_period__end {
    type: string
    sql: ${TABLE}.dispenseRequest.validityPeriod.`end` ;;
    group_label: "Dispense Request Validity Period"
    group_item_label: "End"
  }

  dimension: dispense_request__validity_period__start {
    type: string
    sql: ${TABLE}.dispenseRequest.validityPeriod.start ;;
    group_label: "Dispense Request Validity Period"
    group_item_label: "Start"
  }

  dimension: dosage_instruction {
    hidden: yes
    sql: ${TABLE}.dosageInstruction ;;
  }

  dimension: event_history {
    hidden: yes
    sql: ${TABLE}.eventHistory ;;
  }

  dimension: group_identifier__assigner__display {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.display ;;
    group_label: "Group Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: group_identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.assigner.display ;;
    group_label: "Group Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: group_identifier__assigner__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.assigner.identifier.period.`end` ;;
    group_label: "Group Identifier Assigner Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: group_identifier__assigner__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.assigner.identifier.period.start ;;
    group_label: "Group Identifier Assigner Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: group_identifier__assigner__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.assigner.identifier.system ;;
    group_label: "Group Identifier Assigner Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: group_identifier__assigner__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.groupIdentifier.assigner.identifier.assigner.identifier.type.coding ;;
    group_label: "Group Identifier Assigner Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: group_identifier__assigner__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.assigner.identifier.type.text ;;
    group_label: "Group Identifier Assigner Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: group_identifier__assigner__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.assigner.identifier.use ;;
    group_label: "Group Identifier Assigner Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: group_identifier__assigner__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.assigner.identifier.value ;;
    group_label: "Group Identifier Assigner Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: group_identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Group Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: group_identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.assigner.reference ;;
    group_label: "Group Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: group_identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.period.`end` ;;
    group_label: "Group Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: group_identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.period.start ;;
    group_label: "Group Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: group_identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.system ;;
    group_label: "Group Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: group_identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.groupIdentifier.assigner.identifier.type.coding ;;
    group_label: "Group Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: group_identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.type.text ;;
    group_label: "Group Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: group_identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.use ;;
    group_label: "Group Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: group_identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.identifier.value ;;
    group_label: "Group Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: group_identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.organizationId ;;
    group_label: "Group Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: group_identifier__assigner__reference {
    type: string
    sql: ${TABLE}.groupIdentifier.assigner.reference ;;
    group_label: "Group Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: group_identifier__period__end {
    type: string
    sql: ${TABLE}.groupIdentifier.period.`end` ;;
    group_label: "Group Identifier Period"
    group_item_label: "End"
  }

  dimension: group_identifier__period__start {
    type: string
    sql: ${TABLE}.groupIdentifier.period.start ;;
    group_label: "Group Identifier Period"
    group_item_label: "Start"
  }

  dimension: group_identifier__system {
    type: string
    sql: ${TABLE}.groupIdentifier.system ;;
    group_label: "Group Identifier"
    group_item_label: "System"
  }

  dimension: group_identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.groupIdentifier.type.coding ;;
    group_label: "Group Identifier Type"
    group_item_label: "Coding"
  }

  dimension: group_identifier__type__text {
    type: string
    sql: ${TABLE}.groupIdentifier.type.text ;;
    group_label: "Group Identifier Type"
    group_item_label: "Text"
  }

  dimension: group_identifier__use {
    type: string
    sql: ${TABLE}.groupIdentifier.use ;;
    group_label: "Group Identifier"
    group_item_label: "Use"
  }

  dimension: group_identifier__value {
    type: string
    sql: ${TABLE}.groupIdentifier.value ;;
    group_label: "Group Identifier"
    group_item_label: "Value"
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: implicit_rules {
    type: string
    sql: ${TABLE}.implicitRules ;;
  }

  dimension: intent {
    type: string
    sql: ${TABLE}.intent ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: medication__codeable_concept__coding {
    hidden: yes
    sql: ${TABLE}.medication.codeableConcept.coding ;;
    group_label: "Medication Codeable Concept"
    group_item_label: "Coding"
  }

  dimension: medication__codeable_concept__text {
    type: string
    sql: ${TABLE}.medication.codeableConcept.text ;;
    group_label: "Medication Codeable Concept"
    group_item_label: "Text"
  }

  dimension: medication__reference__display {
    type: string
    sql: ${TABLE}.medication.reference.display ;;
    group_label: "Medication Reference"
    group_item_label: "Display"
  }

  dimension: medication__reference__identifier__assigner__display {
    type: string
    sql: ${TABLE}.medication.reference.identifier.assigner.display ;;
    group_label: "Medication Reference Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: medication__reference__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.medication.reference.identifier.assigner.identifier.assigner.display ;;
    group_label: "Medication Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: medication__reference__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.medication.reference.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Medication Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: medication__reference__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.medication.reference.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Medication Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: medication__reference__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.medication.reference.identifier.assigner.identifier.period.`end` ;;
    group_label: "Medication Reference Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: medication__reference__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.medication.reference.identifier.assigner.identifier.period.start ;;
    group_label: "Medication Reference Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: medication__reference__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.medication.reference.identifier.assigner.identifier.system ;;
    group_label: "Medication Reference Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: medication__reference__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.medication.reference.identifier.assigner.identifier.type.coding ;;
    group_label: "Medication Reference Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: medication__reference__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.medication.reference.identifier.assigner.identifier.type.text ;;
    group_label: "Medication Reference Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: medication__reference__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.medication.reference.identifier.assigner.identifier.use ;;
    group_label: "Medication Reference Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: medication__reference__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.medication.reference.identifier.assigner.identifier.value ;;
    group_label: "Medication Reference Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: medication__reference__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.medication.reference.identifier.assigner.organizationId ;;
    group_label: "Medication Reference Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: medication__reference__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.medication.reference.identifier.assigner.reference ;;
    group_label: "Medication Reference Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: medication__reference__identifier__period__end {
    type: string
    sql: ${TABLE}.medication.reference.identifier.period.`end` ;;
    group_label: "Medication Reference Identifier Period"
    group_item_label: "End"
  }

  dimension: medication__reference__identifier__period__start {
    type: string
    sql: ${TABLE}.medication.reference.identifier.period.start ;;
    group_label: "Medication Reference Identifier Period"
    group_item_label: "Start"
  }

  dimension: medication__reference__identifier__system {
    type: string
    sql: ${TABLE}.medication.reference.identifier.system ;;
    group_label: "Medication Reference Identifier"
    group_item_label: "System"
  }

  dimension: medication__reference__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.medication.reference.identifier.type.coding ;;
    group_label: "Medication Reference Identifier Type"
    group_item_label: "Coding"
  }

  dimension: medication__reference__identifier__type__text {
    type: string
    sql: ${TABLE}.medication.reference.identifier.type.text ;;
    group_label: "Medication Reference Identifier Type"
    group_item_label: "Text"
  }

  dimension: medication__reference__identifier__use {
    type: string
    sql: ${TABLE}.medication.reference.identifier.use ;;
    group_label: "Medication Reference Identifier"
    group_item_label: "Use"
  }

  dimension: medication__reference__identifier__value {
    type: string
    sql: ${TABLE}.medication.reference.identifier.value ;;
    group_label: "Medication Reference Identifier"
    group_item_label: "Value"
  }

  dimension: medication__reference__medication_id {
    type: string
    sql: ${TABLE}.medication.reference.medicationId ;;
    group_label: "Medication Reference"
    group_item_label: "Medication ID"
  }

  dimension: medication__reference__reference {
    type: string
    sql: ${TABLE}.medication.reference.reference ;;
    group_label: "Medication Reference"
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

  dimension: note {
    hidden: yes
    sql: ${TABLE}.note ;;
  }

  dimension: prior_prescription__display {
    type: string
    sql: ${TABLE}.priorPrescription.display ;;
    group_label: "Prior Prescription"
    group_item_label: "Display"
  }

  dimension: prior_prescription__identifier__assigner__display {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.assigner.display ;;
    group_label: "Prior Prescription Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: prior_prescription__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.assigner.identifier.assigner.display ;;
    group_label: "Prior Prescription Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: prior_prescription__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Prior Prescription Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: prior_prescription__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Prior Prescription Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: prior_prescription__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.assigner.identifier.period.`end` ;;
    group_label: "Prior Prescription Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: prior_prescription__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.assigner.identifier.period.start ;;
    group_label: "Prior Prescription Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: prior_prescription__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.assigner.identifier.system ;;
    group_label: "Prior Prescription Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: prior_prescription__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.priorPrescription.identifier.assigner.identifier.type.coding ;;
    group_label: "Prior Prescription Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: prior_prescription__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.assigner.identifier.type.text ;;
    group_label: "Prior Prescription Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: prior_prescription__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.assigner.identifier.use ;;
    group_label: "Prior Prescription Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: prior_prescription__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.assigner.identifier.value ;;
    group_label: "Prior Prescription Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: prior_prescription__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.assigner.organizationId ;;
    group_label: "Prior Prescription Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: prior_prescription__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.assigner.reference ;;
    group_label: "Prior Prescription Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: prior_prescription__identifier__period__end {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.period.`end` ;;
    group_label: "Prior Prescription Identifier Period"
    group_item_label: "End"
  }

  dimension: prior_prescription__identifier__period__start {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.period.start ;;
    group_label: "Prior Prescription Identifier Period"
    group_item_label: "Start"
  }

  dimension: prior_prescription__identifier__system {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.system ;;
    group_label: "Prior Prescription Identifier"
    group_item_label: "System"
  }

  dimension: prior_prescription__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.priorPrescription.identifier.type.coding ;;
    group_label: "Prior Prescription Identifier Type"
    group_item_label: "Coding"
  }

  dimension: prior_prescription__identifier__type__text {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.type.text ;;
    group_label: "Prior Prescription Identifier Type"
    group_item_label: "Text"
  }

  dimension: prior_prescription__identifier__use {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.use ;;
    group_label: "Prior Prescription Identifier"
    group_item_label: "Use"
  }

  dimension: prior_prescription__identifier__value {
    type: string
    sql: ${TABLE}.priorPrescription.identifier.value ;;
    group_label: "Prior Prescription Identifier"
    group_item_label: "Value"
  }

  dimension: prior_prescription__reference {
    type: string
    sql: ${TABLE}.priorPrescription.reference ;;
    group_label: "Prior Prescription"
    group_item_label: "Reference"
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: reason_code {
    hidden: yes
    sql: ${TABLE}.reasonCode ;;
  }

  dimension: reason_reference {
    hidden: yes
    sql: ${TABLE}.reasonReference ;;
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

  dimension: requester__agent__device_id {
    type: string
    sql: ${TABLE}.requester.agent.deviceId ;;
    group_label: "Requester Agent"
    group_item_label: "Device ID"
  }

  dimension: requester__agent__display {
    type: string
    sql: ${TABLE}.requester.agent.display ;;
    group_label: "Requester Agent"
    group_item_label: "Display"
  }

  dimension: requester__agent__identifier__assigner__display {
    type: string
    sql: ${TABLE}.requester.agent.identifier.assigner.display ;;
    group_label: "Requester Agent Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: requester__agent__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.requester.agent.identifier.assigner.identifier.assigner.display ;;
    group_label: "Requester Agent Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: requester__agent__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.requester.agent.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Requester Agent Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: requester__agent__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.requester.agent.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Requester Agent Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: requester__agent__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.requester.agent.identifier.assigner.identifier.period.`end` ;;
    group_label: "Requester Agent Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: requester__agent__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.requester.agent.identifier.assigner.identifier.period.start ;;
    group_label: "Requester Agent Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: requester__agent__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.requester.agent.identifier.assigner.identifier.system ;;
    group_label: "Requester Agent Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: requester__agent__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.requester.agent.identifier.assigner.identifier.type.coding ;;
    group_label: "Requester Agent Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: requester__agent__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.requester.agent.identifier.assigner.identifier.type.text ;;
    group_label: "Requester Agent Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: requester__agent__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.requester.agent.identifier.assigner.identifier.use ;;
    group_label: "Requester Agent Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: requester__agent__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.requester.agent.identifier.assigner.identifier.value ;;
    group_label: "Requester Agent Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: requester__agent__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.requester.agent.identifier.assigner.organizationId ;;
    group_label: "Requester Agent Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: requester__agent__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.requester.agent.identifier.assigner.reference ;;
    group_label: "Requester Agent Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: requester__agent__identifier__period__end {
    type: string
    sql: ${TABLE}.requester.agent.identifier.period.`end` ;;
    group_label: "Requester Agent Identifier Period"
    group_item_label: "End"
  }

  dimension: requester__agent__identifier__period__start {
    type: string
    sql: ${TABLE}.requester.agent.identifier.period.start ;;
    group_label: "Requester Agent Identifier Period"
    group_item_label: "Start"
  }

  dimension: requester__agent__identifier__system {
    type: string
    sql: ${TABLE}.requester.agent.identifier.system ;;
    group_label: "Requester Agent Identifier"
    group_item_label: "System"
  }

  dimension: requester__agent__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.requester.agent.identifier.type.coding ;;
    group_label: "Requester Agent Identifier Type"
    group_item_label: "Coding"
  }

  dimension: requester__agent__identifier__type__text {
    type: string
    sql: ${TABLE}.requester.agent.identifier.type.text ;;
    group_label: "Requester Agent Identifier Type"
    group_item_label: "Text"
  }

  dimension: requester__agent__identifier__use {
    type: string
    sql: ${TABLE}.requester.agent.identifier.use ;;
    group_label: "Requester Agent Identifier"
    group_item_label: "Use"
  }

  dimension: requester__agent__identifier__value {
    type: string
    sql: ${TABLE}.requester.agent.identifier.value ;;
    group_label: "Requester Agent Identifier"
    group_item_label: "Value"
  }

  dimension: requester__agent__organization_id {
    type: string
    sql: ${TABLE}.requester.agent.organizationId ;;
    group_label: "Requester Agent"
    group_item_label: "Organization ID"
  }

  dimension: requester__agent__patient_id {
    type: string
    sql: ${TABLE}.requester.agent.patientId ;;
    group_label: "Requester Agent"
    group_item_label: "Patient ID"
  }

  dimension: requester__agent__practitioner_id {
    type: string
    sql: ${TABLE}.requester.agent.practitionerId ;;
    group_label: "Requester Agent"
    group_item_label: "Practitioner ID"
  }

  dimension: requester__agent__reference {
    type: string
    sql: ${TABLE}.requester.agent.reference ;;
    group_label: "Requester Agent"
    group_item_label: "Reference"
  }

  dimension: requester__agent__related_person_id {
    type: string
    sql: ${TABLE}.requester.agent.relatedPersonId ;;
    group_label: "Requester Agent"
    group_item_label: "Related Person ID"
  }

  dimension: requester__on_behalf_of__display {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.display ;;
    group_label: "Requester on Behalf Of"
    group_item_label: "Display"
  }

  dimension: requester__on_behalf_of__identifier__assigner__display {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.assigner.display ;;
    group_label: "Requester on Behalf of Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: requester__on_behalf_of__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.assigner.identifier.assigner.display ;;
    group_label: "Requester on Behalf of Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: requester__on_behalf_of__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Requester on Behalf of Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: requester__on_behalf_of__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Requester on Behalf of Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: requester__on_behalf_of__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.assigner.identifier.period.`end` ;;
    group_label: "Requester on Behalf of Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: requester__on_behalf_of__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.assigner.identifier.period.start ;;
    group_label: "Requester on Behalf of Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: requester__on_behalf_of__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.assigner.identifier.system ;;
    group_label: "Requester on Behalf of Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: requester__on_behalf_of__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.requester.onBehalfOf.identifier.assigner.identifier.type.coding ;;
    group_label: "Requester on Behalf of Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: requester__on_behalf_of__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.assigner.identifier.type.text ;;
    group_label: "Requester on Behalf of Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: requester__on_behalf_of__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.assigner.identifier.use ;;
    group_label: "Requester on Behalf of Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: requester__on_behalf_of__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.assigner.identifier.value ;;
    group_label: "Requester on Behalf of Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: requester__on_behalf_of__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.assigner.organizationId ;;
    group_label: "Requester on Behalf of Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: requester__on_behalf_of__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.assigner.reference ;;
    group_label: "Requester on Behalf of Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: requester__on_behalf_of__identifier__period__end {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.period.`end` ;;
    group_label: "Requester on Behalf of Identifier Period"
    group_item_label: "End"
  }

  dimension: requester__on_behalf_of__identifier__period__start {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.period.start ;;
    group_label: "Requester on Behalf of Identifier Period"
    group_item_label: "Start"
  }

  dimension: requester__on_behalf_of__identifier__system {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.system ;;
    group_label: "Requester on Behalf of Identifier"
    group_item_label: "System"
  }

  dimension: requester__on_behalf_of__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.requester.onBehalfOf.identifier.type.coding ;;
    group_label: "Requester on Behalf of Identifier Type"
    group_item_label: "Coding"
  }

  dimension: requester__on_behalf_of__identifier__type__text {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.type.text ;;
    group_label: "Requester on Behalf of Identifier Type"
    group_item_label: "Text"
  }

  dimension: requester__on_behalf_of__identifier__use {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.use ;;
    group_label: "Requester on Behalf of Identifier"
    group_item_label: "Use"
  }

  dimension: requester__on_behalf_of__identifier__value {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.identifier.value ;;
    group_label: "Requester on Behalf of Identifier"
    group_item_label: "Value"
  }

  dimension: requester__on_behalf_of__organization_id {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.organizationId ;;
    group_label: "Requester on Behalf Of"
    group_item_label: "Organization ID"
  }

  dimension: requester__on_behalf_of__reference {
    type: string
    sql: ${TABLE}.requester.onBehalfOf.reference ;;
    group_label: "Requester on Behalf Of"
    group_item_label: "Reference"
  }

  dimension: shr_action_requested_context_extension__shr_action_request_intent_extension__value__code {
    type: string
    sql: ${TABLE}.shr_action_RequestedContext_extension.shr_action_RequestIntent_extension.value.code ;;
    group_label: "Shr Action Requested Context Extension Shr Action Request Intent Extension Value"
    group_item_label: "Code"
  }

  dimension: shr_action_requested_context_extension__shr_action_status_extension__value__code {
    type: string
    sql: ${TABLE}.shr_action_RequestedContext_extension.shr_action_Status_extension.value.code ;;
    group_label: "Shr Action Requested Context Extension Shr Action Status Extension Value"
    group_item_label: "Code"
  }

  dimension: shr_base_action_code_extension__value__codeable_concept__coding {
    hidden: yes
    sql: ${TABLE}.shr_base_ActionCode_extension.value.codeableConcept.coding ;;
    group_label: "Shr Base Action Code Extension Value Codeable Concept"
    group_item_label: "Coding"
  }

  dimension: shr_base_action_code_extension__value__codeable_concept__text {
    type: string
    sql: ${TABLE}.shr_base_ActionCode_extension.value.codeableConcept.text ;;
    group_label: "Shr Base Action Code Extension Value Codeable Concept"
    group_item_label: "Text"
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

  dimension: substitution__allowed {
    type: yesno
    sql: ${TABLE}.substitution.allowed ;;
    group_label: "Substitution"
    group_item_label: "Allowed"
  }

  dimension: substitution__reason__coding {
    hidden: yes
    sql: ${TABLE}.substitution.reason.coding ;;
    group_label: "Substitution Reason"
    group_item_label: "Coding"
  }

  dimension: substitution__reason__text {
    type: string
    sql: ${TABLE}.substitution.reason.text ;;
    group_label: "Substitution Reason"
    group_item_label: "Text"
  }

  dimension: supporting_information {
    hidden: yes
    sql: ${TABLE}.supportingInformation ;;
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
    drill_fields: [prior_prescription__medication_request_id]
  }
}

# The name of this view in Looker is "Medication Request Note"
view: medication_request__note {
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

  dimension: medication_request__note {
    type: string
    hidden: yes
    sql: medication_request__note ;;
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

# The name of this view in Looker is "Medication Request Based On"
view: medication_request__based_on {
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

  dimension: medication_request__based_on {
    type: string
    hidden: yes
    sql: medication_request__based_on ;;
  }

  dimension: medication_request_id {
    type: string
    sql: medicationRequestId ;;
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

# The name of this view in Looker is "Medication Request Definition"
view: medication_request__definition {
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

  dimension: medication_request__definition {
    type: string
    hidden: yes
    sql: medication_request__definition ;;
  }

  dimension: plan_definition_id {
    type: string
    sql: planDefinitionId ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }
}

# The name of this view in Looker is "Medication Request Reason Code"
view: medication_request__reason_code {
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
  # This dimension will be called "Medication Request Reason Code" in Explore.

  dimension: medication_request__reason_code {
    type: string
    hidden: yes
    sql: medication_request__reason_code ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }
}

# The name of this view in Looker is "Medication Request Identifier"
view: medication_request__identifier {
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

  dimension: medication_request__identifier {
    type: string
    hidden: yes
    sql: medication_request__identifier ;;
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

# The name of this view in Looker is "Medication Request Meta Profile"
view: medication_request__meta__profile {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Medication Request Meta Profile" in Explore.

  dimension: medication_request__meta__profile {
    type: string
    sql: medication_request__meta__profile ;;
  }
}

# The name of this view in Looker is "Medication Request Event History"
view: medication_request__event_history {
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

  dimension: medication_request__event_history {
    type: string
    hidden: yes
    sql: medication_request__event_history ;;
  }

  dimension: provenance_id {
    type: string
    sql: provenanceId ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }
}

# The name of this view in Looker is "Medication Request Detected Issue"
view: medication_request__detected_issue {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Detected Issue ID" in Explore.

  dimension: detected_issue_id {
    type: string
    sql: detectedIssueId ;;
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

  dimension: medication_request__detected_issue {
    type: string
    hidden: yes
    sql: medication_request__detected_issue ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }
}

# The name of this view in Looker is "Medication Request Meta Tag"
view: medication_request__meta__tag {
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

# The name of this view in Looker is "Medication Request Reason Reference"
view: medication_request__reason_reference {
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

  dimension: medication_request__reason_reference {
    type: string
    hidden: yes
    sql: medication_request__reason_reference ;;
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

# The name of this view in Looker is "Medication Request Dosage Instruction"
view: medication_request__dosage_instruction {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: additional_instruction {
    hidden: yes
    sql: additionalInstruction ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "As Needed Boolean" in Explore.

  dimension: as_needed__boolean {
    type: yesno
    sql: ${TABLE}.asNeeded.boolean ;;
    group_label: "As Needed"
    group_item_label: "Boolean"
  }

  dimension: as_needed__codeable_concept__coding {
    hidden: yes
    sql: ${TABLE}.asNeeded.codeableConcept.coding ;;
    group_label: "As Needed Codeable Concept"
    group_item_label: "Coding"
  }

  dimension: as_needed__codeable_concept__text {
    type: string
    sql: ${TABLE}.asNeeded.codeableConcept.text ;;
    group_label: "As Needed Codeable Concept"
    group_item_label: "Text"
  }

  dimension: dose__quantity__code {
    type: string
    sql: ${TABLE}.dose.quantity.code ;;
    group_label: "Dose Quantity"
    group_item_label: "Code"
  }

  dimension: dose__quantity__system {
    type: string
    sql: ${TABLE}.dose.quantity.system ;;
    group_label: "Dose Quantity"
    group_item_label: "System"
  }

  dimension: dose__quantity__unit {
    type: string
    sql: ${TABLE}.dose.quantity.unit ;;
    group_label: "Dose Quantity"
    group_item_label: "Unit"
  }

  dimension: dose__quantity__value {
    type: number
    sql: ${TABLE}.dose.quantity.value ;;
    group_label: "Dose Quantity"
    group_item_label: "Value"
  }

  dimension: dose__range__high__code {
    type: string
    sql: ${TABLE}.dose.`range`.high.code ;;
    group_label: "Dose Range High"
    group_item_label: "Code"
  }

  dimension: dose__range__high__system {
    type: string
    sql: ${TABLE}.dose.`range`.high.system ;;
    group_label: "Dose Range High"
    group_item_label: "System"
  }

  dimension: dose__range__high__unit {
    type: string
    sql: ${TABLE}.dose.`range`.high.unit ;;
    group_label: "Dose Range High"
    group_item_label: "Unit"
  }

  dimension: dose__range__high__value {
    type: number
    sql: ${TABLE}.dose.`range`.high.value ;;
    group_label: "Dose Range High"
    group_item_label: "Value"
  }

  dimension: dose__range__low__code {
    type: string
    sql: ${TABLE}.dose.`range`.low.code ;;
    group_label: "Dose Range Low"
    group_item_label: "Code"
  }

  dimension: dose__range__low__system {
    type: string
    sql: ${TABLE}.dose.`range`.low.system ;;
    group_label: "Dose Range Low"
    group_item_label: "System"
  }

  dimension: dose__range__low__unit {
    type: string
    sql: ${TABLE}.dose.`range`.low.unit ;;
    group_label: "Dose Range Low"
    group_item_label: "Unit"
  }

  dimension: dose__range__low__value {
    type: number
    sql: ${TABLE}.dose.`range`.low.value ;;
    group_label: "Dose Range Low"
    group_item_label: "Value"
  }

  dimension: max_dose_per_administration__code {
    type: string
    sql: ${TABLE}.maxDosePerAdministration.code ;;
    group_label: "Max Dose per Administration"
    group_item_label: "Code"
  }

  dimension: max_dose_per_administration__system {
    type: string
    sql: ${TABLE}.maxDosePerAdministration.system ;;
    group_label: "Max Dose per Administration"
    group_item_label: "System"
  }

  dimension: max_dose_per_administration__unit {
    type: string
    sql: ${TABLE}.maxDosePerAdministration.unit ;;
    group_label: "Max Dose per Administration"
    group_item_label: "Unit"
  }

  dimension: max_dose_per_administration__value {
    type: number
    sql: ${TABLE}.maxDosePerAdministration.value ;;
    group_label: "Max Dose per Administration"
    group_item_label: "Value"
  }

  dimension: max_dose_per_lifetime__code {
    type: string
    sql: ${TABLE}.maxDosePerLifetime.code ;;
    group_label: "Max Dose per Lifetime"
    group_item_label: "Code"
  }

  dimension: max_dose_per_lifetime__system {
    type: string
    sql: ${TABLE}.maxDosePerLifetime.system ;;
    group_label: "Max Dose per Lifetime"
    group_item_label: "System"
  }

  dimension: max_dose_per_lifetime__unit {
    type: string
    sql: ${TABLE}.maxDosePerLifetime.unit ;;
    group_label: "Max Dose per Lifetime"
    group_item_label: "Unit"
  }

  dimension: max_dose_per_lifetime__value {
    type: number
    sql: ${TABLE}.maxDosePerLifetime.value ;;
    group_label: "Max Dose per Lifetime"
    group_item_label: "Value"
  }

  dimension: max_dose_per_period__denominator__code {
    type: string
    sql: ${TABLE}.maxDosePerPeriod.denominator.code ;;
    group_label: "Max Dose per Period Denominator"
    group_item_label: "Code"
  }

  dimension: max_dose_per_period__denominator__comparator {
    type: string
    sql: ${TABLE}.maxDosePerPeriod.denominator.comparator ;;
    group_label: "Max Dose per Period Denominator"
    group_item_label: "Comparator"
  }

  dimension: max_dose_per_period__denominator__system {
    type: string
    sql: ${TABLE}.maxDosePerPeriod.denominator.system ;;
    group_label: "Max Dose per Period Denominator"
    group_item_label: "System"
  }

  dimension: max_dose_per_period__denominator__unit {
    type: string
    sql: ${TABLE}.maxDosePerPeriod.denominator.unit ;;
    group_label: "Max Dose per Period Denominator"
    group_item_label: "Unit"
  }

  dimension: max_dose_per_period__denominator__value {
    type: number
    sql: ${TABLE}.maxDosePerPeriod.denominator.value ;;
    group_label: "Max Dose per Period Denominator"
    group_item_label: "Value"
  }

  dimension: max_dose_per_period__numerator__code {
    type: string
    sql: ${TABLE}.maxDosePerPeriod.numerator.code ;;
    group_label: "Max Dose per Period Numerator"
    group_item_label: "Code"
  }

  dimension: max_dose_per_period__numerator__comparator {
    type: string
    sql: ${TABLE}.maxDosePerPeriod.numerator.comparator ;;
    group_label: "Max Dose per Period Numerator"
    group_item_label: "Comparator"
  }

  dimension: max_dose_per_period__numerator__system {
    type: string
    sql: ${TABLE}.maxDosePerPeriod.numerator.system ;;
    group_label: "Max Dose per Period Numerator"
    group_item_label: "System"
  }

  dimension: max_dose_per_period__numerator__unit {
    type: string
    sql: ${TABLE}.maxDosePerPeriod.numerator.unit ;;
    group_label: "Max Dose per Period Numerator"
    group_item_label: "Unit"
  }

  dimension: max_dose_per_period__numerator__value {
    type: number
    sql: ${TABLE}.maxDosePerPeriod.numerator.value ;;
    group_label: "Max Dose per Period Numerator"
    group_item_label: "Value"
  }

  dimension: medication_request__dosage_instruction {
    type: string
    hidden: yes
    sql: medication_request__dosage_instruction ;;
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

  dimension: patient_instruction {
    type: string
    sql: patientInstruction ;;
  }

  dimension: rate__quantity__code {
    type: string
    sql: ${TABLE}.rate.quantity.code ;;
    group_label: "Rate Quantity"
    group_item_label: "Code"
  }

  dimension: rate__quantity__system {
    type: string
    sql: ${TABLE}.rate.quantity.system ;;
    group_label: "Rate Quantity"
    group_item_label: "System"
  }

  dimension: rate__quantity__unit {
    type: string
    sql: ${TABLE}.rate.quantity.unit ;;
    group_label: "Rate Quantity"
    group_item_label: "Unit"
  }

  dimension: rate__quantity__value {
    type: number
    sql: ${TABLE}.rate.quantity.value ;;
    group_label: "Rate Quantity"
    group_item_label: "Value"
  }

  dimension: rate__range__high__code {
    type: string
    sql: ${TABLE}.rate.`range`.high.code ;;
    group_label: "Rate Range High"
    group_item_label: "Code"
  }

  dimension: rate__range__high__system {
    type: string
    sql: ${TABLE}.rate.`range`.high.system ;;
    group_label: "Rate Range High"
    group_item_label: "System"
  }

  dimension: rate__range__high__unit {
    type: string
    sql: ${TABLE}.rate.`range`.high.unit ;;
    group_label: "Rate Range High"
    group_item_label: "Unit"
  }

  dimension: rate__range__high__value {
    type: number
    sql: ${TABLE}.rate.`range`.high.value ;;
    group_label: "Rate Range High"
    group_item_label: "Value"
  }

  dimension: rate__range__low__code {
    type: string
    sql: ${TABLE}.rate.`range`.low.code ;;
    group_label: "Rate Range Low"
    group_item_label: "Code"
  }

  dimension: rate__range__low__system {
    type: string
    sql: ${TABLE}.rate.`range`.low.system ;;
    group_label: "Rate Range Low"
    group_item_label: "System"
  }

  dimension: rate__range__low__unit {
    type: string
    sql: ${TABLE}.rate.`range`.low.unit ;;
    group_label: "Rate Range Low"
    group_item_label: "Unit"
  }

  dimension: rate__range__low__value {
    type: number
    sql: ${TABLE}.rate.`range`.low.value ;;
    group_label: "Rate Range Low"
    group_item_label: "Value"
  }

  dimension: rate__ratio__denominator__code {
    type: string
    sql: ${TABLE}.rate.ratio.denominator.code ;;
    group_label: "Rate Ratio Denominator"
    group_item_label: "Code"
  }

  dimension: rate__ratio__denominator__comparator {
    type: string
    sql: ${TABLE}.rate.ratio.denominator.comparator ;;
    group_label: "Rate Ratio Denominator"
    group_item_label: "Comparator"
  }

  dimension: rate__ratio__denominator__system {
    type: string
    sql: ${TABLE}.rate.ratio.denominator.system ;;
    group_label: "Rate Ratio Denominator"
    group_item_label: "System"
  }

  dimension: rate__ratio__denominator__unit {
    type: string
    sql: ${TABLE}.rate.ratio.denominator.unit ;;
    group_label: "Rate Ratio Denominator"
    group_item_label: "Unit"
  }

  dimension: rate__ratio__denominator__value {
    type: number
    sql: ${TABLE}.rate.ratio.denominator.value ;;
    group_label: "Rate Ratio Denominator"
    group_item_label: "Value"
  }

  dimension: rate__ratio__numerator__code {
    type: string
    sql: ${TABLE}.rate.ratio.numerator.code ;;
    group_label: "Rate Ratio Numerator"
    group_item_label: "Code"
  }

  dimension: rate__ratio__numerator__comparator {
    type: string
    sql: ${TABLE}.rate.ratio.numerator.comparator ;;
    group_label: "Rate Ratio Numerator"
    group_item_label: "Comparator"
  }

  dimension: rate__ratio__numerator__system {
    type: string
    sql: ${TABLE}.rate.ratio.numerator.system ;;
    group_label: "Rate Ratio Numerator"
    group_item_label: "System"
  }

  dimension: rate__ratio__numerator__unit {
    type: string
    sql: ${TABLE}.rate.ratio.numerator.unit ;;
    group_label: "Rate Ratio Numerator"
    group_item_label: "Unit"
  }

  dimension: rate__ratio__numerator__value {
    type: number
    sql: ${TABLE}.rate.ratio.numerator.value ;;
    group_label: "Rate Ratio Numerator"
    group_item_label: "Value"
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

  dimension: sequence {
    type: number
    sql: sequence ;;
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

  dimension: text {
    type: string
    sql: text ;;
  }

  dimension: timing__code__coding {
    hidden: yes
    sql: ${TABLE}.timing.code.coding ;;
    group_label: "Timing Code"
    group_item_label: "Coding"
  }

  dimension: timing__code__text {
    type: string
    sql: ${TABLE}.timing.code.text ;;
    group_label: "Timing Code"
    group_item_label: "Text"
  }

  dimension: timing__event {
    hidden: yes
    sql: ${TABLE}.timing.event ;;
    group_label: "Timing"
    group_item_label: "Event"
  }

  dimension: timing__repeat__bounds__duration__code {
    type: string
    sql: ${TABLE}.timing.repeat.bounds.duration.code ;;
    group_label: "Timing Repeat Bounds Duration"
    group_item_label: "Code"
  }

  dimension: timing__repeat__bounds__duration__comparator {
    type: string
    sql: ${TABLE}.timing.repeat.bounds.duration.comparator ;;
    group_label: "Timing Repeat Bounds Duration"
    group_item_label: "Comparator"
  }

  dimension: timing__repeat__bounds__duration__system {
    type: string
    sql: ${TABLE}.timing.repeat.bounds.duration.system ;;
    group_label: "Timing Repeat Bounds Duration"
    group_item_label: "System"
  }

  dimension: timing__repeat__bounds__duration__unit {
    type: string
    sql: ${TABLE}.timing.repeat.bounds.duration.unit ;;
    group_label: "Timing Repeat Bounds Duration"
    group_item_label: "Unit"
  }

  dimension: timing__repeat__bounds__duration__value {
    type: number
    sql: ${TABLE}.timing.repeat.bounds.duration.value ;;
    group_label: "Timing Repeat Bounds Duration"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_timing__repeat__bounds__duration__value {
    type: sum
    sql: ${timing__repeat__bounds__duration__value} ;;
  }

  measure: average_timing__repeat__bounds__duration__value {
    type: average
    sql: ${timing__repeat__bounds__duration__value} ;;
  }

  dimension: timing__repeat__bounds__period__end {
    type: string
    sql: ${TABLE}.timing.repeat.bounds.period.`end` ;;
    group_label: "Timing Repeat Bounds Period"
    group_item_label: "End"
  }

  dimension: timing__repeat__bounds__period__start {
    type: string
    sql: ${TABLE}.timing.repeat.bounds.period.start ;;
    group_label: "Timing Repeat Bounds Period"
    group_item_label: "Start"
  }

  dimension: timing__repeat__bounds__range__high__code {
    type: string
    sql: ${TABLE}.timing.repeat.bounds.`range`.high.code ;;
    group_label: "Timing Repeat Bounds Range High"
    group_item_label: "Code"
  }

  dimension: timing__repeat__bounds__range__high__system {
    type: string
    sql: ${TABLE}.timing.repeat.bounds.`range`.high.system ;;
    group_label: "Timing Repeat Bounds Range High"
    group_item_label: "System"
  }

  dimension: timing__repeat__bounds__range__high__unit {
    type: string
    sql: ${TABLE}.timing.repeat.bounds.`range`.high.unit ;;
    group_label: "Timing Repeat Bounds Range High"
    group_item_label: "Unit"
  }

  dimension: timing__repeat__bounds__range__high__value {
    type: number
    sql: ${TABLE}.timing.repeat.bounds.`range`.high.value ;;
    group_label: "Timing Repeat Bounds Range High"
    group_item_label: "Value"
  }

  dimension: timing__repeat__bounds__range__low__code {
    type: string
    sql: ${TABLE}.timing.repeat.bounds.`range`.low.code ;;
    group_label: "Timing Repeat Bounds Range Low"
    group_item_label: "Code"
  }

  dimension: timing__repeat__bounds__range__low__system {
    type: string
    sql: ${TABLE}.timing.repeat.bounds.`range`.low.system ;;
    group_label: "Timing Repeat Bounds Range Low"
    group_item_label: "System"
  }

  dimension: timing__repeat__bounds__range__low__unit {
    type: string
    sql: ${TABLE}.timing.repeat.bounds.`range`.low.unit ;;
    group_label: "Timing Repeat Bounds Range Low"
    group_item_label: "Unit"
  }

  dimension: timing__repeat__bounds__range__low__value {
    type: number
    sql: ${TABLE}.timing.repeat.bounds.`range`.low.value ;;
    group_label: "Timing Repeat Bounds Range Low"
    group_item_label: "Value"
  }

  dimension: timing__repeat__count {
    type: number
    sql: ${TABLE}.timing.repeat.count ;;
    group_label: "Timing Repeat"
    group_item_label: "Count"
  }

  dimension: timing__repeat__count_max {
    type: number
    sql: ${TABLE}.timing.repeat.countMax ;;
    group_label: "Timing Repeat"
    group_item_label: "Count Max"
  }

  dimension: timing__repeat__day_of_week {
    hidden: yes
    sql: ${TABLE}.timing.repeat.dayOfWeek ;;
    group_label: "Timing Repeat"
    group_item_label: "Day of Week"
  }

  dimension: timing__repeat__duration {
    type: number
    sql: ${TABLE}.timing.repeat.duration ;;
    group_label: "Timing Repeat"
    group_item_label: "Duration"
  }

  dimension: timing__repeat__duration_max {
    type: number
    sql: ${TABLE}.timing.repeat.durationMax ;;
    group_label: "Timing Repeat"
    group_item_label: "Duration Max"
  }

  dimension: timing__repeat__duration_unit {
    type: string
    sql: ${TABLE}.timing.repeat.durationUnit ;;
    group_label: "Timing Repeat"
    group_item_label: "Duration Unit"
  }

  dimension: timing__repeat__frequency {
    type: number
    sql: ${TABLE}.timing.repeat.frequency ;;
    group_label: "Timing Repeat"
    group_item_label: "Frequency"
  }

  dimension: timing__repeat__frequency_max {
    type: number
    sql: ${TABLE}.timing.repeat.frequencyMax ;;
    group_label: "Timing Repeat"
    group_item_label: "Frequency Max"
  }

  dimension: timing__repeat__offset {
    type: number
    sql: ${TABLE}.timing.repeat.offset ;;
    group_label: "Timing Repeat"
    group_item_label: "Offset"
  }

  dimension: timing__repeat__period {
    type: number
    sql: ${TABLE}.timing.repeat.period ;;
    group_label: "Timing Repeat"
    group_item_label: "Period"
  }

  dimension: timing__repeat__period_max {
    type: number
    sql: ${TABLE}.timing.repeat.periodMax ;;
    group_label: "Timing Repeat"
    group_item_label: "Period Max"
  }

  dimension: timing__repeat__period_unit {
    type: string
    sql: ${TABLE}.timing.repeat.periodUnit ;;
    group_label: "Timing Repeat"
    group_item_label: "Period Unit"
  }

  dimension: timing__repeat__time_of_day {
    hidden: yes
    sql: ${TABLE}.timing.repeat.timeOfDay ;;
    group_label: "Timing Repeat"
    group_item_label: "Time of Day"
  }

  dimension: timing__repeat__when {
    hidden: yes
    sql: ${TABLE}.timing.repeat.`when` ;;
    group_label: "Timing Repeat"
    group_item_label: "When"
  }
}

# The name of this view in Looker is "Medication Request Meta Security"
view: medication_request__meta__security {
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

# The name of this view in Looker is "Medication Request Category Coding"
view: medication_request__category__coding {
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

# The name of this view in Looker is "Medication Request Supporting Information"
view: medication_request__supporting_information {
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

  dimension: medication_request__supporting_information {
    type: string
    hidden: yes
    sql: medication_request__supporting_information ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }

  dimension: resource_id {
    type: string
    sql: resourceId ;;
  }
}

# The name of this view in Looker is "Medication Request Reason Code Coding"
view: medication_request__reason_code__coding {
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

# The name of this view in Looker is "Medication Request Identifier Type Coding"
view: medication_request__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Dosage Instruction Timing Event"
view: medication_request__dosage_instruction__timing__event {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Medication Request Dosage Instruction Timing Event" in Explore.

  dimension: medication_request__dosage_instruction__timing__event {
    type: string
    sql: medication_request__dosage_instruction__timing__event ;;
  }
}

# The name of this view in Looker is "Medication Request Substitution Reason Coding"
view: medication_request__substitution__reason__coding {
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

# The name of this view in Looker is "Medication Request Group Identifier Type Coding"
view: medication_request__group_identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Dosage Instruction Site Coding"
view: medication_request__dosage_instruction__site__coding {
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

# The name of this view in Looker is "Medication Request Subject Identifier Type Coding"
view: medication_request__subject__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Context Identifier Type Coding"
view: medication_request__context__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Based on Identifier Type Coding"
view: medication_request__based_on__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Dosage Instruction Route Coding"
view: medication_request__dosage_instruction__route__coding {
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

# The name of this view in Looker is "Medication Request Recorder Identifier Type Coding"
view: medication_request__recorder__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Dosage Instruction Method Coding"
view: medication_request__dosage_instruction__method__coding {
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

# The name of this view in Looker is "Medication Request Definition Identifier Type Coding"
view: medication_request__definition__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Medication Codeable Concept Coding"
view: medication_request__medication__codeable_concept__coding {
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

# The name of this view in Looker is "Medication Request Dosage Instruction Timing Repeat When"
view: medication_request__dosage_instruction__timing__repeat__when {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Medication Request Dosage Instruction Timing Repeat When" in Explore.

  dimension: medication_request__dosage_instruction__timing__repeat__when {
    type: string
    sql: medication_request__dosage_instruction__timing__repeat__when ;;
  }
}

# The name of this view in Looker is "Medication Request Event History Identifier Type Coding"
view: medication_request__event_history__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Detected Issue Identifier Type Coding"
view: medication_request__detected_issue__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Dosage Instruction Timing Code Coding"
view: medication_request__dosage_instruction__timing__code__coding {
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

# The name of this view in Looker is "Medication Request Dosage Instruction Timing Repeat Day of Week"
view: medication_request__dosage_instruction__timing__repeat__day_of_week {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Medication Request Dosage Instruction Timing Repeat Day of Week" in Explore.

  dimension: medication_request__dosage_instruction__timing__repeat__day_of_week {
    type: string
    sql: medication_request__dosage_instruction__timing__repeat__day_of_week ;;
  }
}

# The name of this view in Looker is "Medication Request Dosage Instruction Timing Repeat Time of Day"
view: medication_request__dosage_instruction__timing__repeat__time_of_day {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Medication Request Dosage Instruction Timing Repeat Time of Day" in Explore.

  dimension: medication_request__dosage_instruction__timing__repeat__time_of_day {
    type: string
    sql: medication_request__dosage_instruction__timing__repeat__time_of_day ;;
  }
}

# The name of this view in Looker is "Medication Request Reason Reference Identifier Type Coding"
view: medication_request__reason_reference__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Requester Agent Identifier Type Coding"
view: medication_request__requester__agent__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Dosage Instruction Additional Instruction"
view: medication_request__dosage_instruction__additional_instruction {
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

# The name of this view in Looker is "Medication Request Prior Prescription Identifier Type Coding"
view: medication_request__prior_prescription__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Identifier Assigner Identifier Type Coding"
view: medication_request__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Requester on Behalf of Identifier Type Coding"
view: medication_request__requester__on_behalf_of__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Medication Reference Identifier Type Coding"
view: medication_request__medication__reference__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Note Author Reference Identifier Type Coding"
view: medication_request__note__author__reference__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Supporting Information Identifier Type Coding"
view: medication_request__supporting_information__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Dosage Instruction Additional Instruction Coding"
view: medication_request__dosage_instruction__additional_instruction__coding {
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

# The name of this view in Looker is "Medication Request Group Identifier Assigner Identifier Type Coding"
view: medication_request__group_identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Dispense Request Performer Identifier Type Coding"
view: medication_request__dispense_request__performer__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Dosage Instruction As Needed Codeable Concept Coding"
view: medication_request__dosage_instruction__as_needed__codeable_concept__coding {
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

# The name of this view in Looker is "Medication Request Subject Identifier Assigner Identifier Type Coding"
view: medication_request__subject__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Context Identifier Assigner Identifier Type Coding"
view: medication_request__context__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Based on Identifier Assigner Identifier Type Coding"
view: medication_request__based_on__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Recorder Identifier Assigner Identifier Type Coding"
view: medication_request__recorder__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Definition Identifier Assigner Identifier Type Coding"
view: medication_request__definition__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Event History Identifier Assigner Identifier Type Coding"
view: medication_request__event_history__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Detected Issue Identifier Assigner Identifier Type Coding"
view: medication_request__detected_issue__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Reason Reference Identifier Assigner Identifier Type Coding"
view: medication_request__reason_reference__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Requester Agent Identifier Assigner Identifier Type Coding"
view: medication_request__requester__agent__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Shr Base Action Code Extension Value Codeable Concept Coding"
view: medication_request__shr_base_action_code_extension__value__codeable_concept__coding {
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
}

# The name of this view in Looker is "Medication Request Prior Prescription Identifier Assigner Identifier Type Coding"
view: medication_request__prior_prescription__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Requester on Behalf of Identifier Assigner Identifier Type Coding"
view: medication_request__requester__on_behalf_of__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Medication Reference Identifier Assigner Identifier Type Coding"
view: medication_request__medication__reference__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Note Author Reference Identifier Assigner Identifier Type Coding"
view: medication_request__note__author__reference__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Supporting Information Identifier Assigner Identifier Type Coding"
view: medication_request__supporting_information__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Group Identifier Assigner Identifier Assigner Identifier Type Coding"
view: medication_request__group_identifier__assigner__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Medication Request Dispense Request Performer Identifier Assigner Identifier Type Coding"
view: medication_request__dispense_request__performer__identifier__assigner__identifier__type__coding {
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
