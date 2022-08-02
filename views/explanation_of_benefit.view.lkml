# The name of this view in Looker is "Explanation of Benefit"
view: explanation_of_benefit {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.fhir_synthea.explanation_of_benefit`
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
  # This dimension will be called "Accident Date" in Explore.

  dimension: accident__date {
    type: string
    sql: ${TABLE}.accident.date ;;
    group_label: "Accident"
    group_item_label: "Date"
  }

  dimension: accident__location__address__city {
    type: string
    sql: ${TABLE}.accident.location.address.city ;;
    group_label: "Accident Location Address"
    group_item_label: "City"
  }

  dimension: accident__location__address__country {
    type: string
    sql: ${TABLE}.accident.location.address.country ;;
    group_label: "Accident Location Address"
    group_item_label: "Country"
  }

  dimension: accident__location__address__district {
    type: string
    sql: ${TABLE}.accident.location.address.district ;;
    group_label: "Accident Location Address"
    group_item_label: "District"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: accident__location__address__line {
    hidden: yes
    sql: ${TABLE}.accident.location.address.line ;;
    group_label: "Accident Location Address"
    group_item_label: "Line"
  }

  dimension: accident__location__address__period__end {
    type: string
    sql: ${TABLE}.accident.location.address.period.`end` ;;
    group_label: "Accident Location Address Period"
    group_item_label: "End"
  }

  dimension: accident__location__address__period__start {
    type: string
    sql: ${TABLE}.accident.location.address.period.start ;;
    group_label: "Accident Location Address Period"
    group_item_label: "Start"
  }

  dimension: accident__location__address__postal_code {
    type: string
    sql: ${TABLE}.accident.location.address.postalCode ;;
    group_label: "Accident Location Address"
    group_item_label: "Postal Code"
  }

  dimension: accident__location__address__state {
    type: string
    sql: ${TABLE}.accident.location.address.state ;;
    group_label: "Accident Location Address"
    group_item_label: "State"
  }

  dimension: accident__location__address__text {
    type: string
    sql: ${TABLE}.accident.location.address.text ;;
    group_label: "Accident Location Address"
    group_item_label: "Text"
  }

  dimension: accident__location__address__type {
    type: string
    sql: ${TABLE}.accident.location.address.type ;;
    group_label: "Accident Location Address"
    group_item_label: "Type"
  }

  dimension: accident__location__address__use {
    type: string
    sql: ${TABLE}.accident.location.address.use ;;
    group_label: "Accident Location Address"
    group_item_label: "Use"
  }

  dimension: accident__location__reference__display {
    type: string
    sql: ${TABLE}.accident.location.reference.display ;;
    group_label: "Accident Location Reference"
    group_item_label: "Display"
  }

  dimension: accident__location__reference__identifier__assigner__display {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.assigner.display ;;
    group_label: "Accident Location Reference Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: accident__location__reference__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.assigner.identifier.assigner.display ;;
    group_label: "Accident Location Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: accident__location__reference__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Accident Location Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: accident__location__reference__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Accident Location Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: accident__location__reference__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.assigner.identifier.period.`end` ;;
    group_label: "Accident Location Reference Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: accident__location__reference__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.assigner.identifier.period.start ;;
    group_label: "Accident Location Reference Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: accident__location__reference__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.assigner.identifier.system ;;
    group_label: "Accident Location Reference Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: accident__location__reference__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.accident.location.reference.identifier.assigner.identifier.type.coding ;;
    group_label: "Accident Location Reference Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: accident__location__reference__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.assigner.identifier.type.text ;;
    group_label: "Accident Location Reference Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: accident__location__reference__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.assigner.identifier.use ;;
    group_label: "Accident Location Reference Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: accident__location__reference__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.assigner.identifier.value ;;
    group_label: "Accident Location Reference Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: accident__location__reference__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.assigner.organizationId ;;
    group_label: "Accident Location Reference Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: accident__location__reference__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.assigner.reference ;;
    group_label: "Accident Location Reference Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: accident__location__reference__identifier__period__end {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.period.`end` ;;
    group_label: "Accident Location Reference Identifier Period"
    group_item_label: "End"
  }

  dimension: accident__location__reference__identifier__period__start {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.period.start ;;
    group_label: "Accident Location Reference Identifier Period"
    group_item_label: "Start"
  }

  dimension: accident__location__reference__identifier__system {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.system ;;
    group_label: "Accident Location Reference Identifier"
    group_item_label: "System"
  }

  dimension: accident__location__reference__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.accident.location.reference.identifier.type.coding ;;
    group_label: "Accident Location Reference Identifier Type"
    group_item_label: "Coding"
  }

  dimension: accident__location__reference__identifier__type__text {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.type.text ;;
    group_label: "Accident Location Reference Identifier Type"
    group_item_label: "Text"
  }

  dimension: accident__location__reference__identifier__use {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.use ;;
    group_label: "Accident Location Reference Identifier"
    group_item_label: "Use"
  }

  dimension: accident__location__reference__identifier__value {
    type: string
    sql: ${TABLE}.accident.location.reference.identifier.value ;;
    group_label: "Accident Location Reference Identifier"
    group_item_label: "Value"
  }

  dimension: accident__location__reference__location_id {
    type: string
    sql: ${TABLE}.accident.location.reference.locationId ;;
    group_label: "Accident Location Reference"
    group_item_label: "Location ID"
  }

  dimension: accident__location__reference__reference {
    type: string
    sql: ${TABLE}.accident.location.reference.reference ;;
    group_label: "Accident Location Reference"
    group_item_label: "Reference"
  }

  dimension: accident__type__coding {
    hidden: yes
    sql: ${TABLE}.accident.type.coding ;;
    group_label: "Accident Type"
    group_item_label: "Coding"
  }

  dimension: accident__type__text {
    type: string
    sql: ${TABLE}.accident.type.text ;;
    group_label: "Accident Type"
    group_item_label: "Text"
  }

  dimension: add_item {
    hidden: yes
    sql: ${TABLE}.addItem ;;
  }

  dimension: benefit_balance {
    hidden: yes
    sql: ${TABLE}.benefitBalance ;;
  }

  dimension: billable_period__end {
    type: string
    sql: ${TABLE}.billablePeriod.`end` ;;
    group_label: "Billable Period"
    group_item_label: "End"
  }

  dimension: billable_period__start {
    type: string
    sql: ${TABLE}.billablePeriod.start ;;
    group_label: "Billable Period"
    group_item_label: "Start"
  }

  dimension: billable_period__structure_definition_bluebutton_inpatient_claim_query_cd_extension__value__coding__code {
    type: string
    sql: ${TABLE}.billablePeriod.StructureDefinition_bluebutton_inpatient_claim_query_cd_extension.value.coding.code ;;
    group_label: "Billable Period Structure Definition Bluebutton Inpatient Claim Query Cd Extension Value Coding"
    group_item_label: "Code"
  }

  dimension: billable_period__structure_definition_bluebutton_inpatient_claim_query_cd_extension__value__coding__display {
    type: string
    sql: ${TABLE}.billablePeriod.StructureDefinition_bluebutton_inpatient_claim_query_cd_extension.value.coding.display ;;
    group_label: "Billable Period Structure Definition Bluebutton Inpatient Claim Query Cd Extension Value Coding"
    group_item_label: "Display"
  }

  dimension: billable_period__structure_definition_bluebutton_inpatient_claim_query_cd_extension__value__coding__system {
    type: string
    sql: ${TABLE}.billablePeriod.StructureDefinition_bluebutton_inpatient_claim_query_cd_extension.value.coding.system ;;
    group_label: "Billable Period Structure Definition Bluebutton Inpatient Claim Query Cd Extension Value Coding"
    group_item_label: "System"
  }

  dimension: billable_period__structure_definition_bluebutton_outpatient_claim_query_cd_extension__value__coding__code {
    type: string
    sql: ${TABLE}.billablePeriod.StructureDefinition_bluebutton_outpatient_claim_query_cd_extension.value.coding.code ;;
    group_label: "Billable Period Structure Definition Bluebutton Outpatient Claim Query Cd Extension Value Coding"
    group_item_label: "Code"
  }

  dimension: billable_period__structure_definition_bluebutton_outpatient_claim_query_cd_extension__value__coding__display {
    type: string
    sql: ${TABLE}.billablePeriod.StructureDefinition_bluebutton_outpatient_claim_query_cd_extension.value.coding.display ;;
    group_label: "Billable Period Structure Definition Bluebutton Outpatient Claim Query Cd Extension Value Coding"
    group_item_label: "Display"
  }

  dimension: billable_period__structure_definition_bluebutton_outpatient_claim_query_cd_extension__value__coding__system {
    type: string
    sql: ${TABLE}.billablePeriod.StructureDefinition_bluebutton_outpatient_claim_query_cd_extension.value.coding.system ;;
    group_label: "Billable Period Structure Definition Bluebutton Outpatient Claim Query Cd Extension Value Coding"
    group_item_label: "System"
  }

  dimension: care_team {
    hidden: yes
    sql: ${TABLE}.careTeam ;;
  }

  dimension: claim__claim_id {
    type: string
    sql: ${TABLE}.claim.claimId ;;
    group_label: "Claim"
    group_item_label: "Claim ID"
  }

  dimension: claim__display {
    type: string
    sql: ${TABLE}.claim.display ;;
    group_label: "Claim"
    group_item_label: "Display"
  }

  dimension: claim__identifier__assigner__display {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.display ;;
    group_label: "Claim Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: claim__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.assigner.display ;;
    group_label: "Claim Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: claim__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Claim Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: claim__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Claim Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: claim__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.period.`end` ;;
    group_label: "Claim Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: claim__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.period.start ;;
    group_label: "Claim Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: claim__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.system ;;
    group_label: "Claim Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: claim__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.claim.identifier.assigner.identifier.type.coding ;;
    group_label: "Claim Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: claim__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.type.text ;;
    group_label: "Claim Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: claim__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.use ;;
    group_label: "Claim Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: claim__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.value ;;
    group_label: "Claim Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: claim__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.organizationId ;;
    group_label: "Claim Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: claim__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.reference ;;
    group_label: "Claim Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: claim__identifier__period__end {
    type: string
    sql: ${TABLE}.claim.identifier.period.`end` ;;
    group_label: "Claim Identifier Period"
    group_item_label: "End"
  }

  dimension: claim__identifier__period__start {
    type: string
    sql: ${TABLE}.claim.identifier.period.start ;;
    group_label: "Claim Identifier Period"
    group_item_label: "Start"
  }

  dimension: claim__identifier__system {
    type: string
    sql: ${TABLE}.claim.identifier.system ;;
    group_label: "Claim Identifier"
    group_item_label: "System"
  }

  dimension: claim__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.claim.identifier.type.coding ;;
    group_label: "Claim Identifier Type"
    group_item_label: "Coding"
  }

  dimension: claim__identifier__type__text {
    type: string
    sql: ${TABLE}.claim.identifier.type.text ;;
    group_label: "Claim Identifier Type"
    group_item_label: "Text"
  }

  dimension: claim__identifier__use {
    type: string
    sql: ${TABLE}.claim.identifier.use ;;
    group_label: "Claim Identifier"
    group_item_label: "Use"
  }

  dimension: claim__identifier__value {
    type: string
    sql: ${TABLE}.claim.identifier.value ;;
    group_label: "Claim Identifier"
    group_item_label: "Value"
  }

  dimension: claim__reference {
    type: string
    sql: ${TABLE}.claim.reference ;;
    group_label: "Claim"
    group_item_label: "Reference"
  }

  dimension: claim_response__claim_response_id {
    type: string
    sql: ${TABLE}.claimResponse.claimResponseId ;;
    group_label: "Claim Response"
    group_item_label: "Claim Response ID"
  }

  dimension: claim_response__display {
    type: string
    sql: ${TABLE}.claimResponse.display ;;
    group_label: "Claim Response"
    group_item_label: "Display"
  }

  dimension: claim_response__identifier__assigner__display {
    type: string
    sql: ${TABLE}.claimResponse.identifier.assigner.display ;;
    group_label: "Claim Response Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: claim_response__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.claimResponse.identifier.assigner.identifier.assigner.display ;;
    group_label: "Claim Response Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: claim_response__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.claimResponse.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Claim Response Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: claim_response__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.claimResponse.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Claim Response Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: claim_response__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.claimResponse.identifier.assigner.identifier.period.`end` ;;
    group_label: "Claim Response Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: claim_response__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.claimResponse.identifier.assigner.identifier.period.start ;;
    group_label: "Claim Response Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: claim_response__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.claimResponse.identifier.assigner.identifier.system ;;
    group_label: "Claim Response Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: claim_response__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.claimResponse.identifier.assigner.identifier.type.coding ;;
    group_label: "Claim Response Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: claim_response__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.claimResponse.identifier.assigner.identifier.type.text ;;
    group_label: "Claim Response Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: claim_response__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.claimResponse.identifier.assigner.identifier.use ;;
    group_label: "Claim Response Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: claim_response__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.claimResponse.identifier.assigner.identifier.value ;;
    group_label: "Claim Response Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: claim_response__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.claimResponse.identifier.assigner.organizationId ;;
    group_label: "Claim Response Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: claim_response__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.claimResponse.identifier.assigner.reference ;;
    group_label: "Claim Response Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: claim_response__identifier__period__end {
    type: string
    sql: ${TABLE}.claimResponse.identifier.period.`end` ;;
    group_label: "Claim Response Identifier Period"
    group_item_label: "End"
  }

  dimension: claim_response__identifier__period__start {
    type: string
    sql: ${TABLE}.claimResponse.identifier.period.start ;;
    group_label: "Claim Response Identifier Period"
    group_item_label: "Start"
  }

  dimension: claim_response__identifier__system {
    type: string
    sql: ${TABLE}.claimResponse.identifier.system ;;
    group_label: "Claim Response Identifier"
    group_item_label: "System"
  }

  dimension: claim_response__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.claimResponse.identifier.type.coding ;;
    group_label: "Claim Response Identifier Type"
    group_item_label: "Coding"
  }

  dimension: claim_response__identifier__type__text {
    type: string
    sql: ${TABLE}.claimResponse.identifier.type.text ;;
    group_label: "Claim Response Identifier Type"
    group_item_label: "Text"
  }

  dimension: claim_response__identifier__use {
    type: string
    sql: ${TABLE}.claimResponse.identifier.use ;;
    group_label: "Claim Response Identifier"
    group_item_label: "Use"
  }

  dimension: claim_response__identifier__value {
    type: string
    sql: ${TABLE}.claimResponse.identifier.value ;;
    group_label: "Claim Response Identifier"
    group_item_label: "Value"
  }

  dimension: claim_response__reference {
    type: string
    sql: ${TABLE}.claimResponse.reference ;;
    group_label: "Claim Response"
    group_item_label: "Reference"
  }

  dimension: created {
    type: string
    sql: ${TABLE}.created ;;
  }

  dimension: diagnosis {
    hidden: yes
    sql: ${TABLE}.diagnosis ;;
  }

  dimension: disposition {
    type: string
    sql: ${TABLE}.disposition ;;
  }

  dimension: employment_impacted__end {
    type: string
    sql: ${TABLE}.employmentImpacted.`end` ;;
    group_label: "Employment Impacted"
    group_item_label: "End"
  }

  dimension: employment_impacted__start {
    type: string
    sql: ${TABLE}.employmentImpacted.start ;;
    group_label: "Employment Impacted"
    group_item_label: "Start"
  }

  dimension: enterer__display {
    type: string
    sql: ${TABLE}.enterer.display ;;
    group_label: "Enterer"
    group_item_label: "Display"
  }

  dimension: enterer__identifier__assigner__display {
    type: string
    sql: ${TABLE}.enterer.identifier.assigner.display ;;
    group_label: "Enterer Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: enterer__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.enterer.identifier.assigner.identifier.assigner.display ;;
    group_label: "Enterer Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: enterer__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.enterer.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Enterer Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: enterer__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.enterer.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Enterer Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: enterer__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.enterer.identifier.assigner.identifier.period.`end` ;;
    group_label: "Enterer Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: enterer__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.enterer.identifier.assigner.identifier.period.start ;;
    group_label: "Enterer Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: enterer__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.enterer.identifier.assigner.identifier.system ;;
    group_label: "Enterer Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: enterer__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.enterer.identifier.assigner.identifier.type.coding ;;
    group_label: "Enterer Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: enterer__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.enterer.identifier.assigner.identifier.type.text ;;
    group_label: "Enterer Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: enterer__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.enterer.identifier.assigner.identifier.use ;;
    group_label: "Enterer Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: enterer__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.enterer.identifier.assigner.identifier.value ;;
    group_label: "Enterer Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: enterer__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.enterer.identifier.assigner.organizationId ;;
    group_label: "Enterer Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: enterer__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.enterer.identifier.assigner.reference ;;
    group_label: "Enterer Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: enterer__identifier__period__end {
    type: string
    sql: ${TABLE}.enterer.identifier.period.`end` ;;
    group_label: "Enterer Identifier Period"
    group_item_label: "End"
  }

  dimension: enterer__identifier__period__start {
    type: string
    sql: ${TABLE}.enterer.identifier.period.start ;;
    group_label: "Enterer Identifier Period"
    group_item_label: "Start"
  }

  dimension: enterer__identifier__system {
    type: string
    sql: ${TABLE}.enterer.identifier.system ;;
    group_label: "Enterer Identifier"
    group_item_label: "System"
  }

  dimension: enterer__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.enterer.identifier.type.coding ;;
    group_label: "Enterer Identifier Type"
    group_item_label: "Coding"
  }

  dimension: enterer__identifier__type__text {
    type: string
    sql: ${TABLE}.enterer.identifier.type.text ;;
    group_label: "Enterer Identifier Type"
    group_item_label: "Text"
  }

  dimension: enterer__identifier__use {
    type: string
    sql: ${TABLE}.enterer.identifier.use ;;
    group_label: "Enterer Identifier"
    group_item_label: "Use"
  }

  dimension: enterer__identifier__value {
    type: string
    sql: ${TABLE}.enterer.identifier.value ;;
    group_label: "Enterer Identifier"
    group_item_label: "Value"
  }

  dimension: enterer__practitioner_id {
    type: string
    sql: ${TABLE}.enterer.practitionerId ;;
    group_label: "Enterer"
    group_item_label: "Practitioner ID"
  }

  dimension: enterer__reference {
    type: string
    sql: ${TABLE}.enterer.reference ;;
    group_label: "Enterer"
    group_item_label: "Reference"
  }

  dimension: facility__display {
    type: string
    sql: ${TABLE}.facility.display ;;
    group_label: "Facility"
    group_item_label: "Display"
  }

  dimension: facility__identifier__assigner__display {
    type: string
    sql: ${TABLE}.facility.identifier.assigner.display ;;
    group_label: "Facility Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: facility__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.facility.identifier.assigner.identifier.assigner.display ;;
    group_label: "Facility Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: facility__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.facility.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Facility Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: facility__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.facility.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Facility Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: facility__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.facility.identifier.assigner.identifier.period.`end` ;;
    group_label: "Facility Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: facility__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.facility.identifier.assigner.identifier.period.start ;;
    group_label: "Facility Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: facility__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.facility.identifier.assigner.identifier.system ;;
    group_label: "Facility Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: facility__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.facility.identifier.assigner.identifier.type.coding ;;
    group_label: "Facility Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: facility__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.facility.identifier.assigner.identifier.type.text ;;
    group_label: "Facility Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: facility__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.facility.identifier.assigner.identifier.use ;;
    group_label: "Facility Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: facility__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.facility.identifier.assigner.identifier.value ;;
    group_label: "Facility Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: facility__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.facility.identifier.assigner.organizationId ;;
    group_label: "Facility Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: facility__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.facility.identifier.assigner.reference ;;
    group_label: "Facility Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: facility__identifier__period__end {
    type: string
    sql: ${TABLE}.facility.identifier.period.`end` ;;
    group_label: "Facility Identifier Period"
    group_item_label: "End"
  }

  dimension: facility__identifier__period__start {
    type: string
    sql: ${TABLE}.facility.identifier.period.start ;;
    group_label: "Facility Identifier Period"
    group_item_label: "Start"
  }

  dimension: facility__identifier__system {
    type: string
    sql: ${TABLE}.facility.identifier.system ;;
    group_label: "Facility Identifier"
    group_item_label: "System"
  }

  dimension: facility__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.facility.identifier.type.coding ;;
    group_label: "Facility Identifier Type"
    group_item_label: "Coding"
  }

  dimension: facility__identifier__type__text {
    type: string
    sql: ${TABLE}.facility.identifier.type.text ;;
    group_label: "Facility Identifier Type"
    group_item_label: "Text"
  }

  dimension: facility__identifier__use {
    type: string
    sql: ${TABLE}.facility.identifier.use ;;
    group_label: "Facility Identifier"
    group_item_label: "Use"
  }

  dimension: facility__identifier__value {
    type: string
    sql: ${TABLE}.facility.identifier.value ;;
    group_label: "Facility Identifier"
    group_item_label: "Value"
  }

  dimension: facility__location_id {
    type: string
    sql: ${TABLE}.facility.locationId ;;
    group_label: "Facility"
    group_item_label: "Location ID"
  }

  dimension: facility__reference {
    type: string
    sql: ${TABLE}.facility.reference ;;
    group_label: "Facility"
    group_item_label: "Reference"
  }

  dimension: form__coding {
    hidden: yes
    sql: ${TABLE}.form.coding ;;
    group_label: "Form"
    group_item_label: "Coding"
  }

  dimension: form__text {
    type: string
    sql: ${TABLE}.form.text ;;
    group_label: "Form"
    group_item_label: "Text"
  }

  dimension: hospitalization__end {
    type: string
    sql: ${TABLE}.hospitalization.`end` ;;
    group_label: "Hospitalization"
    group_item_label: "End"
  }

  dimension: hospitalization__start {
    type: string
    sql: ${TABLE}.hospitalization.start ;;
    group_label: "Hospitalization"
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

  dimension: information {
    hidden: yes
    sql: ${TABLE}.information ;;
  }

  dimension: insurance__coverage__coverage_id {
    type: string
    sql: ${TABLE}.insurance.coverage.coverageId ;;
    group_label: "Insurance Coverage"
    group_item_label: "Coverage ID"
  }

  dimension: insurance__coverage__display {
    type: string
    sql: ${TABLE}.insurance.coverage.display ;;
    group_label: "Insurance Coverage"
    group_item_label: "Display"
  }

  dimension: insurance__coverage__identifier__assigner__display {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.assigner.display ;;
    group_label: "Insurance Coverage Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: insurance__coverage__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.assigner.identifier.assigner.display ;;
    group_label: "Insurance Coverage Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: insurance__coverage__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Insurance Coverage Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: insurance__coverage__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Insurance Coverage Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: insurance__coverage__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.assigner.identifier.period.`end` ;;
    group_label: "Insurance Coverage Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: insurance__coverage__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.assigner.identifier.period.start ;;
    group_label: "Insurance Coverage Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: insurance__coverage__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.assigner.identifier.system ;;
    group_label: "Insurance Coverage Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: insurance__coverage__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.insurance.coverage.identifier.assigner.identifier.type.coding ;;
    group_label: "Insurance Coverage Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: insurance__coverage__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.assigner.identifier.type.text ;;
    group_label: "Insurance Coverage Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: insurance__coverage__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.assigner.identifier.use ;;
    group_label: "Insurance Coverage Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: insurance__coverage__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.assigner.identifier.value ;;
    group_label: "Insurance Coverage Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: insurance__coverage__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.assigner.organizationId ;;
    group_label: "Insurance Coverage Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: insurance__coverage__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.assigner.reference ;;
    group_label: "Insurance Coverage Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: insurance__coverage__identifier__period__end {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.period.`end` ;;
    group_label: "Insurance Coverage Identifier Period"
    group_item_label: "End"
  }

  dimension: insurance__coverage__identifier__period__start {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.period.start ;;
    group_label: "Insurance Coverage Identifier Period"
    group_item_label: "Start"
  }

  dimension: insurance__coverage__identifier__system {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.system ;;
    group_label: "Insurance Coverage Identifier"
    group_item_label: "System"
  }

  dimension: insurance__coverage__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.insurance.coverage.identifier.type.coding ;;
    group_label: "Insurance Coverage Identifier Type"
    group_item_label: "Coding"
  }

  dimension: insurance__coverage__identifier__type__text {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.type.text ;;
    group_label: "Insurance Coverage Identifier Type"
    group_item_label: "Text"
  }

  dimension: insurance__coverage__identifier__use {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.use ;;
    group_label: "Insurance Coverage Identifier"
    group_item_label: "Use"
  }

  dimension: insurance__coverage__identifier__value {
    type: string
    sql: ${TABLE}.insurance.coverage.identifier.value ;;
    group_label: "Insurance Coverage Identifier"
    group_item_label: "Value"
  }

  dimension: insurance__coverage__reference {
    type: string
    sql: ${TABLE}.insurance.coverage.reference ;;
    group_label: "Insurance Coverage"
    group_item_label: "Reference"
  }

  dimension: insurance__pre_auth_ref {
    hidden: yes
    sql: ${TABLE}.insurance.preAuthRef ;;
    group_label: "Insurance"
    group_item_label: "Pre Auth Ref"
  }

  dimension: insurer__display {
    type: string
    sql: ${TABLE}.insurer.display ;;
    group_label: "Insurer"
    group_item_label: "Display"
  }

  dimension: insurer__identifier__assigner__display {
    type: string
    sql: ${TABLE}.insurer.identifier.assigner.display ;;
    group_label: "Insurer Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: insurer__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.insurer.identifier.assigner.identifier.assigner.display ;;
    group_label: "Insurer Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: insurer__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.insurer.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Insurer Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: insurer__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.insurer.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Insurer Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: insurer__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.insurer.identifier.assigner.identifier.period.`end` ;;
    group_label: "Insurer Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: insurer__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.insurer.identifier.assigner.identifier.period.start ;;
    group_label: "Insurer Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: insurer__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.insurer.identifier.assigner.identifier.system ;;
    group_label: "Insurer Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: insurer__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.insurer.identifier.assigner.identifier.type.coding ;;
    group_label: "Insurer Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: insurer__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.insurer.identifier.assigner.identifier.type.text ;;
    group_label: "Insurer Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: insurer__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.insurer.identifier.assigner.identifier.use ;;
    group_label: "Insurer Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: insurer__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.insurer.identifier.assigner.identifier.value ;;
    group_label: "Insurer Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: insurer__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.insurer.identifier.assigner.organizationId ;;
    group_label: "Insurer Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: insurer__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.insurer.identifier.assigner.reference ;;
    group_label: "Insurer Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: insurer__identifier__period__end {
    type: string
    sql: ${TABLE}.insurer.identifier.period.`end` ;;
    group_label: "Insurer Identifier Period"
    group_item_label: "End"
  }

  dimension: insurer__identifier__period__start {
    type: string
    sql: ${TABLE}.insurer.identifier.period.start ;;
    group_label: "Insurer Identifier Period"
    group_item_label: "Start"
  }

  dimension: insurer__identifier__system {
    type: string
    sql: ${TABLE}.insurer.identifier.system ;;
    group_label: "Insurer Identifier"
    group_item_label: "System"
  }

  dimension: insurer__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.insurer.identifier.type.coding ;;
    group_label: "Insurer Identifier Type"
    group_item_label: "Coding"
  }

  dimension: insurer__identifier__type__text {
    type: string
    sql: ${TABLE}.insurer.identifier.type.text ;;
    group_label: "Insurer Identifier Type"
    group_item_label: "Text"
  }

  dimension: insurer__identifier__use {
    type: string
    sql: ${TABLE}.insurer.identifier.use ;;
    group_label: "Insurer Identifier"
    group_item_label: "Use"
  }

  dimension: insurer__identifier__value {
    type: string
    sql: ${TABLE}.insurer.identifier.value ;;
    group_label: "Insurer Identifier"
    group_item_label: "Value"
  }

  dimension: insurer__organization_id {
    type: string
    sql: ${TABLE}.insurer.organizationId ;;
    group_label: "Insurer"
    group_item_label: "Organization ID"
  }

  dimension: insurer__reference {
    type: string
    sql: ${TABLE}.insurer.reference ;;
    group_label: "Insurer"
    group_item_label: "Reference"
  }

  dimension: item {
    hidden: yes
    sql: ${TABLE}.item ;;
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

  dimension: organization__display {
    type: string
    sql: ${TABLE}.organization.display ;;
    group_label: "Organization"
    group_item_label: "Display"
  }

  dimension: organization__identifier__assigner__display {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.display ;;
    group_label: "Organization Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: organization__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.assigner.display ;;
    group_label: "Organization Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: organization__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Organization Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: organization__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Organization Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: organization__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.period.`end` ;;
    group_label: "Organization Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: organization__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.period.start ;;
    group_label: "Organization Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: organization__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.system ;;
    group_label: "Organization Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: organization__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.organization.identifier.assigner.identifier.type.coding ;;
    group_label: "Organization Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: organization__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.type.text ;;
    group_label: "Organization Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: organization__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.use ;;
    group_label: "Organization Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: organization__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.value ;;
    group_label: "Organization Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: organization__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.organizationId ;;
    group_label: "Organization Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: organization__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.reference ;;
    group_label: "Organization Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: organization__identifier__period__end {
    type: string
    sql: ${TABLE}.organization.identifier.period.`end` ;;
    group_label: "Organization Identifier Period"
    group_item_label: "End"
  }

  dimension: organization__identifier__period__start {
    type: string
    sql: ${TABLE}.organization.identifier.period.start ;;
    group_label: "Organization Identifier Period"
    group_item_label: "Start"
  }

  dimension: organization__identifier__system {
    type: string
    sql: ${TABLE}.organization.identifier.system ;;
    group_label: "Organization Identifier"
    group_item_label: "System"
  }

  dimension: organization__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.organization.identifier.type.coding ;;
    group_label: "Organization Identifier Type"
    group_item_label: "Coding"
  }

  dimension: organization__identifier__type__text {
    type: string
    sql: ${TABLE}.organization.identifier.type.text ;;
    group_label: "Organization Identifier Type"
    group_item_label: "Text"
  }

  dimension: organization__identifier__use {
    type: string
    sql: ${TABLE}.organization.identifier.use ;;
    group_label: "Organization Identifier"
    group_item_label: "Use"
  }

  dimension: organization__identifier__value {
    type: string
    sql: ${TABLE}.organization.identifier.value ;;
    group_label: "Organization Identifier"
    group_item_label: "Value"
  }

  dimension: organization__organization_id {
    type: string
    sql: ${TABLE}.organization.organizationId ;;
    group_label: "Organization"
    group_item_label: "Organization ID"
  }

  dimension: organization__reference {
    type: string
    sql: ${TABLE}.organization.reference ;;
    group_label: "Organization"
    group_item_label: "Reference"
  }

  dimension: original_prescription__display {
    type: string
    sql: ${TABLE}.originalPrescription.display ;;
    group_label: "Original Prescription"
    group_item_label: "Display"
  }

  dimension: original_prescription__identifier__assigner__display {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.assigner.display ;;
    group_label: "Original Prescription Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: original_prescription__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.assigner.identifier.assigner.display ;;
    group_label: "Original Prescription Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: original_prescription__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Original Prescription Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: original_prescription__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Original Prescription Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: original_prescription__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.assigner.identifier.period.`end` ;;
    group_label: "Original Prescription Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: original_prescription__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.assigner.identifier.period.start ;;
    group_label: "Original Prescription Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: original_prescription__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.assigner.identifier.system ;;
    group_label: "Original Prescription Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: original_prescription__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.originalPrescription.identifier.assigner.identifier.type.coding ;;
    group_label: "Original Prescription Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: original_prescription__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.assigner.identifier.type.text ;;
    group_label: "Original Prescription Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: original_prescription__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.assigner.identifier.use ;;
    group_label: "Original Prescription Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: original_prescription__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.assigner.identifier.value ;;
    group_label: "Original Prescription Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: original_prescription__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.assigner.organizationId ;;
    group_label: "Original Prescription Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: original_prescription__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.assigner.reference ;;
    group_label: "Original Prescription Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: original_prescription__identifier__period__end {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.period.`end` ;;
    group_label: "Original Prescription Identifier Period"
    group_item_label: "End"
  }

  dimension: original_prescription__identifier__period__start {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.period.start ;;
    group_label: "Original Prescription Identifier Period"
    group_item_label: "Start"
  }

  dimension: original_prescription__identifier__system {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.system ;;
    group_label: "Original Prescription Identifier"
    group_item_label: "System"
  }

  dimension: original_prescription__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.originalPrescription.identifier.type.coding ;;
    group_label: "Original Prescription Identifier Type"
    group_item_label: "Coding"
  }

  dimension: original_prescription__identifier__type__text {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.type.text ;;
    group_label: "Original Prescription Identifier Type"
    group_item_label: "Text"
  }

  dimension: original_prescription__identifier__use {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.use ;;
    group_label: "Original Prescription Identifier"
    group_item_label: "Use"
  }

  dimension: original_prescription__identifier__value {
    type: string
    sql: ${TABLE}.originalPrescription.identifier.value ;;
    group_label: "Original Prescription Identifier"
    group_item_label: "Value"
  }

  dimension: original_prescription__medication_request_id {
    type: string
    sql: ${TABLE}.originalPrescription.medicationRequestId ;;
    group_label: "Original Prescription"
    group_item_label: "Medication Request ID"
  }

  dimension: original_prescription__reference {
    type: string
    sql: ${TABLE}.originalPrescription.reference ;;
    group_label: "Original Prescription"
    group_item_label: "Reference"
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

  dimension: payee__party__display {
    type: string
    sql: ${TABLE}.payee.party.display ;;
    group_label: "Payee Party"
    group_item_label: "Display"
  }

  dimension: payee__party__identifier__assigner__display {
    type: string
    sql: ${TABLE}.payee.party.identifier.assigner.display ;;
    group_label: "Payee Party Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: payee__party__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.payee.party.identifier.assigner.identifier.assigner.display ;;
    group_label: "Payee Party Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: payee__party__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.payee.party.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Payee Party Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: payee__party__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.payee.party.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Payee Party Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: payee__party__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.payee.party.identifier.assigner.identifier.period.`end` ;;
    group_label: "Payee Party Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: payee__party__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.payee.party.identifier.assigner.identifier.period.start ;;
    group_label: "Payee Party Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: payee__party__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.payee.party.identifier.assigner.identifier.system ;;
    group_label: "Payee Party Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: payee__party__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.payee.party.identifier.assigner.identifier.type.coding ;;
    group_label: "Payee Party Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: payee__party__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.payee.party.identifier.assigner.identifier.type.text ;;
    group_label: "Payee Party Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: payee__party__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.payee.party.identifier.assigner.identifier.use ;;
    group_label: "Payee Party Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: payee__party__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.payee.party.identifier.assigner.identifier.value ;;
    group_label: "Payee Party Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: payee__party__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.payee.party.identifier.assigner.organizationId ;;
    group_label: "Payee Party Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: payee__party__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.payee.party.identifier.assigner.reference ;;
    group_label: "Payee Party Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: payee__party__identifier__period__end {
    type: string
    sql: ${TABLE}.payee.party.identifier.period.`end` ;;
    group_label: "Payee Party Identifier Period"
    group_item_label: "End"
  }

  dimension: payee__party__identifier__period__start {
    type: string
    sql: ${TABLE}.payee.party.identifier.period.start ;;
    group_label: "Payee Party Identifier Period"
    group_item_label: "Start"
  }

  dimension: payee__party__identifier__system {
    type: string
    sql: ${TABLE}.payee.party.identifier.system ;;
    group_label: "Payee Party Identifier"
    group_item_label: "System"
  }

  dimension: payee__party__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.payee.party.identifier.type.coding ;;
    group_label: "Payee Party Identifier Type"
    group_item_label: "Coding"
  }

  dimension: payee__party__identifier__type__text {
    type: string
    sql: ${TABLE}.payee.party.identifier.type.text ;;
    group_label: "Payee Party Identifier Type"
    group_item_label: "Text"
  }

  dimension: payee__party__identifier__use {
    type: string
    sql: ${TABLE}.payee.party.identifier.use ;;
    group_label: "Payee Party Identifier"
    group_item_label: "Use"
  }

  dimension: payee__party__identifier__value {
    type: string
    sql: ${TABLE}.payee.party.identifier.value ;;
    group_label: "Payee Party Identifier"
    group_item_label: "Value"
  }

  dimension: payee__party__organization_id {
    type: string
    sql: ${TABLE}.payee.party.organizationId ;;
    group_label: "Payee Party"
    group_item_label: "Organization ID"
  }

  dimension: payee__party__patient_id {
    type: string
    sql: ${TABLE}.payee.party.patientId ;;
    group_label: "Payee Party"
    group_item_label: "Patient ID"
  }

  dimension: payee__party__practitioner_id {
    type: string
    sql: ${TABLE}.payee.party.practitionerId ;;
    group_label: "Payee Party"
    group_item_label: "Practitioner ID"
  }

  dimension: payee__party__reference {
    type: string
    sql: ${TABLE}.payee.party.reference ;;
    group_label: "Payee Party"
    group_item_label: "Reference"
  }

  dimension: payee__party__related_person_id {
    type: string
    sql: ${TABLE}.payee.party.relatedPersonId ;;
    group_label: "Payee Party"
    group_item_label: "Related Person ID"
  }

  dimension: payee__resource_type__coding {
    hidden: yes
    sql: ${TABLE}.payee.resourceType.coding ;;
    group_label: "Payee Resource Type"
    group_item_label: "Coding"
  }

  dimension: payee__resource_type__text {
    type: string
    sql: ${TABLE}.payee.resourceType.text ;;
    group_label: "Payee Resource Type"
    group_item_label: "Text"
  }

  dimension: payee__type__coding {
    hidden: yes
    sql: ${TABLE}.payee.type.coding ;;
    group_label: "Payee Type"
    group_item_label: "Coding"
  }

  dimension: payee__type__text {
    type: string
    sql: ${TABLE}.payee.type.text ;;
    group_label: "Payee Type"
    group_item_label: "Text"
  }

  dimension: payment__adjustment__code {
    type: string
    sql: ${TABLE}.payment.adjustment.code ;;
    group_label: "Payment Adjustment"
    group_item_label: "Code"
  }

  dimension: payment__adjustment__comparator {
    type: string
    sql: ${TABLE}.payment.adjustment.comparator ;;
    group_label: "Payment Adjustment"
    group_item_label: "Comparator"
  }

  dimension: payment__adjustment__system {
    type: string
    sql: ${TABLE}.payment.adjustment.system ;;
    group_label: "Payment Adjustment"
    group_item_label: "System"
  }

  dimension: payment__adjustment__unit {
    type: string
    sql: ${TABLE}.payment.adjustment.unit ;;
    group_label: "Payment Adjustment"
    group_item_label: "Unit"
  }

  dimension: payment__adjustment__value {
    type: number
    sql: ${TABLE}.payment.adjustment.value ;;
    group_label: "Payment Adjustment"
    group_item_label: "Value"
  }

  dimension: payment__adjustment_reason__coding {
    hidden: yes
    sql: ${TABLE}.payment.adjustmentReason.coding ;;
    group_label: "Payment Adjustment Reason"
    group_item_label: "Coding"
  }

  dimension: payment__adjustment_reason__text {
    type: string
    sql: ${TABLE}.payment.adjustmentReason.text ;;
    group_label: "Payment Adjustment Reason"
    group_item_label: "Text"
  }

  dimension: payment__amount__code {
    type: string
    sql: ${TABLE}.payment.amount.code ;;
    group_label: "Payment Amount"
    group_item_label: "Code"
  }

  dimension: payment__amount__comparator {
    type: string
    sql: ${TABLE}.payment.amount.comparator ;;
    group_label: "Payment Amount"
    group_item_label: "Comparator"
  }

  dimension: payment__amount__system {
    type: string
    sql: ${TABLE}.payment.amount.system ;;
    group_label: "Payment Amount"
    group_item_label: "System"
  }

  dimension: payment__amount__unit {
    type: string
    sql: ${TABLE}.payment.amount.unit ;;
    group_label: "Payment Amount"
    group_item_label: "Unit"
  }

  dimension: payment__amount__value {
    type: number
    sql: ${TABLE}.payment.amount.value ;;
    group_label: "Payment Amount"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_payment__amount__value {
    type: sum
    sql: ${payment__amount__value} ;;
  }

  measure: average_payment__amount__value {
    type: average
    sql: ${payment__amount__value} ;;
  }

  dimension: payment__date {
    type: string
    sql: ${TABLE}.payment.date ;;
    group_label: "Payment"
    group_item_label: "Date"
  }

  dimension: payment__identifier__assigner__display {
    type: string
    sql: ${TABLE}.payment.identifier.assigner.display ;;
    group_label: "Payment Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: payment__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.payment.identifier.assigner.identifier.assigner.display ;;
    group_label: "Payment Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: payment__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.payment.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Payment Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: payment__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.payment.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Payment Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: payment__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.payment.identifier.assigner.identifier.period.`end` ;;
    group_label: "Payment Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: payment__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.payment.identifier.assigner.identifier.period.start ;;
    group_label: "Payment Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: payment__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.payment.identifier.assigner.identifier.system ;;
    group_label: "Payment Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: payment__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.payment.identifier.assigner.identifier.type.coding ;;
    group_label: "Payment Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: payment__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.payment.identifier.assigner.identifier.type.text ;;
    group_label: "Payment Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: payment__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.payment.identifier.assigner.identifier.use ;;
    group_label: "Payment Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: payment__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.payment.identifier.assigner.identifier.value ;;
    group_label: "Payment Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: payment__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.payment.identifier.assigner.organizationId ;;
    group_label: "Payment Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: payment__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.payment.identifier.assigner.reference ;;
    group_label: "Payment Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: payment__identifier__period__end {
    type: string
    sql: ${TABLE}.payment.identifier.period.`end` ;;
    group_label: "Payment Identifier Period"
    group_item_label: "End"
  }

  dimension: payment__identifier__period__start {
    type: string
    sql: ${TABLE}.payment.identifier.period.start ;;
    group_label: "Payment Identifier Period"
    group_item_label: "Start"
  }

  dimension: payment__identifier__system {
    type: string
    sql: ${TABLE}.payment.identifier.system ;;
    group_label: "Payment Identifier"
    group_item_label: "System"
  }

  dimension: payment__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.payment.identifier.type.coding ;;
    group_label: "Payment Identifier Type"
    group_item_label: "Coding"
  }

  dimension: payment__identifier__type__text {
    type: string
    sql: ${TABLE}.payment.identifier.type.text ;;
    group_label: "Payment Identifier Type"
    group_item_label: "Text"
  }

  dimension: payment__identifier__use {
    type: string
    sql: ${TABLE}.payment.identifier.use ;;
    group_label: "Payment Identifier"
    group_item_label: "Use"
  }

  dimension: payment__identifier__value {
    type: string
    sql: ${TABLE}.payment.identifier.value ;;
    group_label: "Payment Identifier"
    group_item_label: "Value"
  }

  dimension: payment__type__coding {
    hidden: yes
    sql: ${TABLE}.payment.type.coding ;;
    group_label: "Payment Type"
    group_item_label: "Coding"
  }

  dimension: payment__type__text {
    type: string
    sql: ${TABLE}.payment.type.text ;;
    group_label: "Payment Type"
    group_item_label: "Text"
  }

  dimension: precedence {
    type: number
    sql: ${TABLE}.precedence ;;
  }

  dimension: prescription__display {
    type: string
    sql: ${TABLE}.prescription.display ;;
    group_label: "Prescription"
    group_item_label: "Display"
  }

  dimension: prescription__identifier__assigner__display {
    type: string
    sql: ${TABLE}.prescription.identifier.assigner.display ;;
    group_label: "Prescription Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: prescription__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.prescription.identifier.assigner.identifier.assigner.display ;;
    group_label: "Prescription Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: prescription__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.prescription.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Prescription Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: prescription__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.prescription.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Prescription Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: prescription__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.prescription.identifier.assigner.identifier.period.`end` ;;
    group_label: "Prescription Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: prescription__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.prescription.identifier.assigner.identifier.period.start ;;
    group_label: "Prescription Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: prescription__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.prescription.identifier.assigner.identifier.system ;;
    group_label: "Prescription Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: prescription__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.prescription.identifier.assigner.identifier.type.coding ;;
    group_label: "Prescription Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: prescription__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.prescription.identifier.assigner.identifier.type.text ;;
    group_label: "Prescription Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: prescription__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.prescription.identifier.assigner.identifier.use ;;
    group_label: "Prescription Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: prescription__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.prescription.identifier.assigner.identifier.value ;;
    group_label: "Prescription Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: prescription__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.prescription.identifier.assigner.organizationId ;;
    group_label: "Prescription Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: prescription__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.prescription.identifier.assigner.reference ;;
    group_label: "Prescription Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: prescription__identifier__period__end {
    type: string
    sql: ${TABLE}.prescription.identifier.period.`end` ;;
    group_label: "Prescription Identifier Period"
    group_item_label: "End"
  }

  dimension: prescription__identifier__period__start {
    type: string
    sql: ${TABLE}.prescription.identifier.period.start ;;
    group_label: "Prescription Identifier Period"
    group_item_label: "Start"
  }

  dimension: prescription__identifier__system {
    type: string
    sql: ${TABLE}.prescription.identifier.system ;;
    group_label: "Prescription Identifier"
    group_item_label: "System"
  }

  dimension: prescription__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.prescription.identifier.type.coding ;;
    group_label: "Prescription Identifier Type"
    group_item_label: "Coding"
  }

  dimension: prescription__identifier__type__text {
    type: string
    sql: ${TABLE}.prescription.identifier.type.text ;;
    group_label: "Prescription Identifier Type"
    group_item_label: "Text"
  }

  dimension: prescription__identifier__use {
    type: string
    sql: ${TABLE}.prescription.identifier.use ;;
    group_label: "Prescription Identifier"
    group_item_label: "Use"
  }

  dimension: prescription__identifier__value {
    type: string
    sql: ${TABLE}.prescription.identifier.value ;;
    group_label: "Prescription Identifier"
    group_item_label: "Value"
  }

  dimension: prescription__medication_request_id {
    type: string
    sql: ${TABLE}.prescription.medicationRequestId ;;
    group_label: "Prescription"
    group_item_label: "Medication Request ID"
  }

  dimension: prescription__reference {
    type: string
    sql: ${TABLE}.prescription.reference ;;
    group_label: "Prescription"
    group_item_label: "Reference"
  }

  dimension: prescription__vision_prescription_id {
    type: string
    sql: ${TABLE}.prescription.visionPrescriptionId ;;
    group_label: "Prescription"
    group_item_label: "Vision Prescription ID"
  }

  dimension: procedure {
    hidden: yes
    sql: ${TABLE}.procedure ;;
  }

  dimension: process_note {
    hidden: yes
    sql: ${TABLE}.processNote ;;
  }

  dimension: provider__display {
    type: string
    sql: ${TABLE}.provider.display ;;
    group_label: "Provider"
    group_item_label: "Display"
  }

  dimension: provider__identifier__assigner__display {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.display ;;
    group_label: "Provider Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: provider__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.assigner.display ;;
    group_label: "Provider Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: provider__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Provider Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: provider__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Provider Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: provider__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.period.`end` ;;
    group_label: "Provider Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: provider__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.period.start ;;
    group_label: "Provider Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: provider__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.system ;;
    group_label: "Provider Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: provider__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.provider.identifier.assigner.identifier.type.coding ;;
    group_label: "Provider Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: provider__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.type.text ;;
    group_label: "Provider Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: provider__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.use ;;
    group_label: "Provider Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: provider__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.value ;;
    group_label: "Provider Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: provider__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.organizationId ;;
    group_label: "Provider Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: provider__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.reference ;;
    group_label: "Provider Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: provider__identifier__period__end {
    type: string
    sql: ${TABLE}.provider.identifier.period.`end` ;;
    group_label: "Provider Identifier Period"
    group_item_label: "End"
  }

  dimension: provider__identifier__period__start {
    type: string
    sql: ${TABLE}.provider.identifier.period.start ;;
    group_label: "Provider Identifier Period"
    group_item_label: "Start"
  }

  dimension: provider__identifier__system {
    type: string
    sql: ${TABLE}.provider.identifier.system ;;
    group_label: "Provider Identifier"
    group_item_label: "System"
  }

  dimension: provider__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.provider.identifier.type.coding ;;
    group_label: "Provider Identifier Type"
    group_item_label: "Coding"
  }

  dimension: provider__identifier__type__text {
    type: string
    sql: ${TABLE}.provider.identifier.type.text ;;
    group_label: "Provider Identifier Type"
    group_item_label: "Text"
  }

  dimension: provider__identifier__use {
    type: string
    sql: ${TABLE}.provider.identifier.use ;;
    group_label: "Provider Identifier"
    group_item_label: "Use"
  }

  dimension: provider__identifier__value {
    type: string
    sql: ${TABLE}.provider.identifier.value ;;
    group_label: "Provider Identifier"
    group_item_label: "Value"
  }

  dimension: provider__practitioner_id {
    type: string
    sql: ${TABLE}.provider.practitionerId ;;
    group_label: "Provider"
    group_item_label: "Practitioner ID"
  }

  dimension: provider__reference {
    type: string
    sql: ${TABLE}.provider.reference ;;
    group_label: "Provider"
    group_item_label: "Reference"
  }

  dimension: referral__display {
    type: string
    sql: ${TABLE}.referral.display ;;
    group_label: "Referral"
    group_item_label: "Display"
  }

  dimension: referral__identifier__assigner__display {
    type: string
    sql: ${TABLE}.referral.identifier.assigner.display ;;
    group_label: "Referral Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: referral__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.referral.identifier.assigner.identifier.assigner.display ;;
    group_label: "Referral Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: referral__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.referral.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Referral Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: referral__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.referral.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Referral Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: referral__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.referral.identifier.assigner.identifier.period.`end` ;;
    group_label: "Referral Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: referral__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.referral.identifier.assigner.identifier.period.start ;;
    group_label: "Referral Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: referral__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.referral.identifier.assigner.identifier.system ;;
    group_label: "Referral Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: referral__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.referral.identifier.assigner.identifier.type.coding ;;
    group_label: "Referral Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: referral__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.referral.identifier.assigner.identifier.type.text ;;
    group_label: "Referral Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: referral__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.referral.identifier.assigner.identifier.use ;;
    group_label: "Referral Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: referral__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.referral.identifier.assigner.identifier.value ;;
    group_label: "Referral Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: referral__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.referral.identifier.assigner.organizationId ;;
    group_label: "Referral Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: referral__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.referral.identifier.assigner.reference ;;
    group_label: "Referral Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: referral__identifier__period__end {
    type: string
    sql: ${TABLE}.referral.identifier.period.`end` ;;
    group_label: "Referral Identifier Period"
    group_item_label: "End"
  }

  dimension: referral__identifier__period__start {
    type: string
    sql: ${TABLE}.referral.identifier.period.start ;;
    group_label: "Referral Identifier Period"
    group_item_label: "Start"
  }

  dimension: referral__identifier__system {
    type: string
    sql: ${TABLE}.referral.identifier.system ;;
    group_label: "Referral Identifier"
    group_item_label: "System"
  }

  dimension: referral__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.referral.identifier.type.coding ;;
    group_label: "Referral Identifier Type"
    group_item_label: "Coding"
  }

  dimension: referral__identifier__type__text {
    type: string
    sql: ${TABLE}.referral.identifier.type.text ;;
    group_label: "Referral Identifier Type"
    group_item_label: "Text"
  }

  dimension: referral__identifier__use {
    type: string
    sql: ${TABLE}.referral.identifier.use ;;
    group_label: "Referral Identifier"
    group_item_label: "Use"
  }

  dimension: referral__identifier__value {
    type: string
    sql: ${TABLE}.referral.identifier.value ;;
    group_label: "Referral Identifier"
    group_item_label: "Value"
  }

  dimension: referral__reference {
    type: string
    sql: ${TABLE}.referral.reference ;;
    group_label: "Referral"
    group_item_label: "Reference"
  }

  dimension: referral__referral_request_id {
    type: string
    sql: ${TABLE}.referral.referralRequestId ;;
    group_label: "Referral"
    group_item_label: "Referral Request ID"
  }

  dimension: related {
    hidden: yes
    sql: ${TABLE}.related ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: structure_definition_bluebutton_inpatient_clm_mdcr_non_pmt_rsn_cd_extension__value__coding__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_mdcr_non_pmt_rsn_cd_extension.value.coding.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Mdcr Non Pmt Rsn Cd Extension Value Coding"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_mdcr_non_pmt_rsn_cd_extension__value__coding__display {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_mdcr_non_pmt_rsn_cd_extension.value.coding.display ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Mdcr Non Pmt Rsn Cd Extension Value Coding"
    group_item_label: "Display"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_mdcr_non_pmt_rsn_cd_extension__value__coding__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_mdcr_non_pmt_rsn_cd_extension.value.coding.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Mdcr Non Pmt Rsn Cd Extension Value Coding"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pass_thru_per_diem_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pass_thru_per_diem_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pass Thru per Diem Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pass_thru_per_diem_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pass_thru_per_diem_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pass Thru per Diem Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pass_thru_per_diem_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pass_thru_per_diem_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pass Thru per Diem Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_dsprprtnt_shr_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_dsprprtnt_shr_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Dsprprtnt Shr Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_dsprprtnt_shr_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_dsprprtnt_shr_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Dsprprtnt Shr Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_dsprprtnt_shr_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_dsprprtnt_shr_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Dsprprtnt Shr Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_excptn_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_excptn_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Excptn Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_excptn_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_excptn_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Excptn Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_excptn_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_excptn_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Excptn Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_fsp_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_fsp_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Fsp Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_fsp_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_fsp_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Fsp Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_fsp_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_fsp_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Fsp Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_ime_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_ime_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Ime Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_ime_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_ime_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Ime Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_ime_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_ime_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Ime Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_outlier_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_outlier_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Outlier Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_outlier_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_outlier_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Outlier Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_cptl_outlier_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_cptl_outlier_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Cptl Outlier Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_old_cptl_hld_hrmls_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_old_cptl_hld_hrmls_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Old Cptl Hld Hrmls Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_old_cptl_hld_hrmls_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_old_cptl_hld_hrmls_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Old Cptl Hld Hrmls Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_pps_old_cptl_hld_hrmls_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_pps_old_cptl_hld_hrmls_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Pps Old Cptl Hld Hrmls Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_tot_pps_cptl_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_tot_pps_cptl_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Tot Pps Cptl Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_tot_pps_cptl_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_tot_pps_cptl_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Tot Pps Cptl Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_tot_pps_cptl_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_tot_pps_cptl_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Tot Pps Cptl Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_dsh_op_clm_val_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_dsh_op_clm_val_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Dsh Op Clm Val Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_dsh_op_clm_val_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_dsh_op_clm_val_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Dsh Op Clm Val Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_dsh_op_clm_val_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_dsh_op_clm_val_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Dsh Op Clm Val Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_fi_num_extension__value__identifier__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_fi_num_extension.value.identifier.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Fi Num Extension Value Identifier"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_fi_num_extension__value__identifier__value {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_fi_num_extension.value.identifier.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Fi Num Extension Value Identifier"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_ime_op_clm_val_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_ime_op_clm_val_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Ime Op Clm Val Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_ime_op_clm_val_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_ime_op_clm_val_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Ime Op Clm Val Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_ime_op_clm_val_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_ime_op_clm_val_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Ime Op Clm Val Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_bene_blood_ddctbl_lblty_am_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_bene_blood_ddctbl_lblty_am_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Bene Blood Ddctbl Lblty Am Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_bene_blood_ddctbl_lblty_am_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_bene_blood_ddctbl_lblty_am_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Bene Blood Ddctbl Lblty Am Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_bene_blood_ddctbl_lblty_am_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_bene_blood_ddctbl_lblty_am_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Bene Blood Ddctbl Lblty Am Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_bene_ip_ddctbl_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_bene_ip_ddctbl_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Bene IP Ddctbl Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_bene_ip_ddctbl_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_bene_ip_ddctbl_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Bene IP Ddctbl Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_bene_ip_ddctbl_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_bene_ip_ddctbl_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Bene IP Ddctbl Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_bene_pta_coinsrnc_lblty_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_bene_pta_coinsrnc_lblty_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Bene Pta Coinsrnc Lblty Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_bene_pta_coinsrnc_lblty_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_bene_pta_coinsrnc_lblty_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Bene Pta Coinsrnc Lblty Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_bene_pta_coinsrnc_lblty_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_bene_pta_coinsrnc_lblty_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Bene Pta Coinsrnc Lblty Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_drg_outlier_aprvd_pmt_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_drg_outlier_aprvd_pmt_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Drg Outlier Aprvd Pmt Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_drg_outlier_aprvd_pmt_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_drg_outlier_aprvd_pmt_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Drg Outlier Aprvd Pmt Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_drg_outlier_aprvd_pmt_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_drg_outlier_aprvd_pmt_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Drg Outlier Aprvd Pmt Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_ip_ncvrd_chrg_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_ip_ncvrd_chrg_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch IP Ncvrd Chrg Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_ip_ncvrd_chrg_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_ip_ncvrd_chrg_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch IP Ncvrd Chrg Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_ip_ncvrd_chrg_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_ip_ncvrd_chrg_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch IP Ncvrd Chrg Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_ip_tot_ddctn_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_ip_tot_ddctn_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch IP Tot Ddctn Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_ip_tot_ddctn_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_ip_tot_ddctn_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch IP Tot Ddctn Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_ip_tot_ddctn_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_ip_tot_ddctn_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch IP Tot Ddctn Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_profnl_cmpnt_chrg_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_profnl_cmpnt_chrg_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Profnl Cmpnt Chrg Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_profnl_cmpnt_chrg_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_profnl_cmpnt_chrg_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Profnl Cmpnt Chrg Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_nch_profnl_cmpnt_chrg_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_nch_profnl_cmpnt_chrg_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Nch Profnl Cmpnt Chrg Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_inpatient_prpayamt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_prpayamt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Prpayamt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_prpayamt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_prpayamt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Prpayamt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_inpatient_prpayamt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_prpayamt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Prpayamt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_outpatient_clm_mdcr_non_pmt_rsn_cd_extension__value__coding__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_clm_mdcr_non_pmt_rsn_cd_extension.value.coding.code ;;
    group_label: "Structure Definition Bluebutton Outpatient Clm Mdcr Non Pmt Rsn Cd Extension Value Coding"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_outpatient_clm_mdcr_non_pmt_rsn_cd_extension__value__coding__display {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_clm_mdcr_non_pmt_rsn_cd_extension.value.coding.display ;;
    group_label: "Structure Definition Bluebutton Outpatient Clm Mdcr Non Pmt Rsn Cd Extension Value Coding"
    group_item_label: "Display"
  }

  dimension: structure_definition_bluebutton_outpatient_clm_mdcr_non_pmt_rsn_cd_extension__value__coding__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_clm_mdcr_non_pmt_rsn_cd_extension.value.coding.system ;;
    group_label: "Structure Definition Bluebutton Outpatient Clm Mdcr Non Pmt Rsn Cd Extension Value Coding"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_outpatient_clm_op_bene_pmt_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_clm_op_bene_pmt_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Outpatient Clm Op Bene Pmt Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_outpatient_clm_op_bene_pmt_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_clm_op_bene_pmt_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Outpatient Clm Op Bene Pmt Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_outpatient_clm_op_bene_pmt_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_clm_op_bene_pmt_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Outpatient Clm Op Bene Pmt Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_outpatient_clm_op_prvdr_pmt_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_clm_op_prvdr_pmt_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Outpatient Clm Op Prvdr Pmt Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_outpatient_clm_op_prvdr_pmt_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_clm_op_prvdr_pmt_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Outpatient Clm Op Prvdr Pmt Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_outpatient_clm_op_prvdr_pmt_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_clm_op_prvdr_pmt_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Outpatient Clm Op Prvdr Pmt Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_outpatient_fi_num_extension__value__identifier__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_fi_num_extension.value.identifier.system ;;
    group_label: "Structure Definition Bluebutton Outpatient Fi Num Extension Value Identifier"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_outpatient_fi_num_extension__value__identifier__value {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_fi_num_extension.value.identifier.value ;;
    group_label: "Structure Definition Bluebutton Outpatient Fi Num Extension Value Identifier"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_outpatient_nch_bene_blood_ddctbl_lblty_am_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_nch_bene_blood_ddctbl_lblty_am_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Outpatient Nch Bene Blood Ddctbl Lblty Am Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_outpatient_nch_bene_blood_ddctbl_lblty_am_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_nch_bene_blood_ddctbl_lblty_am_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Outpatient Nch Bene Blood Ddctbl Lblty Am Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_outpatient_nch_bene_blood_ddctbl_lblty_am_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_nch_bene_blood_ddctbl_lblty_am_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Outpatient Nch Bene Blood Ddctbl Lblty Am Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_outpatient_nch_bene_ptb_coinsrnc_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_nch_bene_ptb_coinsrnc_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Outpatient Nch Bene Ptb Coinsrnc Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_outpatient_nch_bene_ptb_coinsrnc_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_nch_bene_ptb_coinsrnc_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Outpatient Nch Bene Ptb Coinsrnc Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_outpatient_nch_bene_ptb_coinsrnc_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_nch_bene_ptb_coinsrnc_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Outpatient Nch Bene Ptb Coinsrnc Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_outpatient_nch_bene_ptb_ddctbl_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_nch_bene_ptb_ddctbl_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Outpatient Nch Bene Ptb Ddctbl Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_outpatient_nch_bene_ptb_ddctbl_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_nch_bene_ptb_ddctbl_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Outpatient Nch Bene Ptb Ddctbl Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_outpatient_nch_bene_ptb_ddctbl_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_nch_bene_ptb_ddctbl_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Outpatient Nch Bene Ptb Ddctbl Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_outpatient_nch_profnl_cmpnt_chrg_amt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_nch_profnl_cmpnt_chrg_amt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Outpatient Nch Profnl Cmpnt Chrg Amt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_outpatient_nch_profnl_cmpnt_chrg_amt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_nch_profnl_cmpnt_chrg_amt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Outpatient Nch Profnl Cmpnt Chrg Amt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_outpatient_nch_profnl_cmpnt_chrg_amt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_nch_profnl_cmpnt_chrg_amt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Outpatient Nch Profnl Cmpnt Chrg Amt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_outpatient_prpayamt_extension__value__money__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_prpayamt_extension.value.money.code ;;
    group_label: "Structure Definition Bluebutton Outpatient Prpayamt Extension Value Money"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_outpatient_prpayamt_extension__value__money__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_prpayamt_extension.value.money.system ;;
    group_label: "Structure Definition Bluebutton Outpatient Prpayamt Extension Value Money"
    group_item_label: "System"
  }

  dimension: structure_definition_bluebutton_outpatient_prpayamt_extension__value__money__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_prpayamt_extension.value.money.value ;;
    group_label: "Structure Definition Bluebutton Outpatient Prpayamt Extension Value Money"
    group_item_label: "Value"
  }

  dimension: sub_type {
    hidden: yes
    sql: ${TABLE}.subType ;;
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

  dimension: total_benefit__code {
    type: string
    sql: ${TABLE}.totalBenefit.code ;;
    group_label: "Total Benefit"
    group_item_label: "Code"
  }

  dimension: total_benefit__comparator {
    type: string
    sql: ${TABLE}.totalBenefit.comparator ;;
    group_label: "Total Benefit"
    group_item_label: "Comparator"
  }

  dimension: total_benefit__system {
    type: string
    sql: ${TABLE}.totalBenefit.system ;;
    group_label: "Total Benefit"
    group_item_label: "System"
  }

  dimension: total_benefit__unit {
    type: string
    sql: ${TABLE}.totalBenefit.unit ;;
    group_label: "Total Benefit"
    group_item_label: "Unit"
  }

  dimension: total_benefit__value {
    type: number
    sql: ${TABLE}.totalBenefit.value ;;
    group_label: "Total Benefit"
    group_item_label: "Value"
  }

  dimension: total_cost__code {
    type: string
    sql: ${TABLE}.totalCost.code ;;
    group_label: "Total Cost"
    group_item_label: "Code"
  }

  dimension: total_cost__comparator {
    type: string
    sql: ${TABLE}.totalCost.comparator ;;
    group_label: "Total Cost"
    group_item_label: "Comparator"
  }

  dimension: total_cost__system {
    type: string
    sql: ${TABLE}.totalCost.system ;;
    group_label: "Total Cost"
    group_item_label: "System"
  }

  dimension: total_cost__unit {
    type: string
    sql: ${TABLE}.totalCost.unit ;;
    group_label: "Total Cost"
    group_item_label: "Unit"
  }

  dimension: total_cost__value {
    type: number
    sql: ${TABLE}.totalCost.value ;;
    group_label: "Total Cost"
    group_item_label: "Value"
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

  dimension: unalloc_deductable__code {
    type: string
    sql: ${TABLE}.unallocDeductable.code ;;
    group_label: "Unalloc Deductable"
    group_item_label: "Code"
  }

  dimension: unalloc_deductable__comparator {
    type: string
    sql: ${TABLE}.unallocDeductable.comparator ;;
    group_label: "Unalloc Deductable"
    group_item_label: "Comparator"
  }

  dimension: unalloc_deductable__system {
    type: string
    sql: ${TABLE}.unallocDeductable.system ;;
    group_label: "Unalloc Deductable"
    group_item_label: "System"
  }

  dimension: unalloc_deductable__unit {
    type: string
    sql: ${TABLE}.unallocDeductable.unit ;;
    group_label: "Unalloc Deductable"
    group_item_label: "Unit"
  }

  dimension: unalloc_deductable__value {
    type: number
    sql: ${TABLE}.unallocDeductable.value ;;
    group_label: "Unalloc Deductable"
    group_item_label: "Value"
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

# The name of this view in Looker is "Explanation of Benefit Item"
view: explanation_of_benefit__item {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: adjudication {
    hidden: yes
    sql: adjudication ;;
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

  dimension: care_team_link_id {
    hidden: yes
    sql: careTeamLinkId ;;
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

  dimension: detail {
    hidden: yes
    sql: detail ;;
  }

  dimension: diagnosis_link_id {
    hidden: yes
    sql: diagnosisLinkId ;;
  }

  dimension: encounter {
    hidden: yes
    sql: encounter ;;
  }

  dimension: explanation_of_benefit__item {
    type: string
    hidden: yes
    sql: explanation_of_benefit__item ;;
  }

  dimension: factor {
    type: number
    sql: factor ;;
  }

  dimension: information_link_id {
    hidden: yes
    sql: informationLinkId ;;
  }

  dimension: location__address__city {
    type: string
    sql: ${TABLE}.location.address.city ;;
    group_label: "Location Address"
    group_item_label: "City"
  }

  dimension: location__address__country {
    type: string
    sql: ${TABLE}.location.address.country ;;
    group_label: "Location Address"
    group_item_label: "Country"
  }

  dimension: location__address__district {
    type: string
    sql: ${TABLE}.location.address.district ;;
    group_label: "Location Address"
    group_item_label: "District"
  }

  dimension: location__address__line {
    hidden: yes
    sql: ${TABLE}.location.address.line ;;
    group_label: "Location Address"
    group_item_label: "Line"
  }

  dimension: location__address__period__end {
    type: string
    sql: ${TABLE}.location.address.period.`end` ;;
    group_label: "Location Address Period"
    group_item_label: "End"
  }

  dimension: location__address__period__start {
    type: string
    sql: ${TABLE}.location.address.period.start ;;
    group_label: "Location Address Period"
    group_item_label: "Start"
  }

  dimension: location__address__postal_code {
    type: string
    sql: ${TABLE}.location.address.postalCode ;;
    group_label: "Location Address"
    group_item_label: "Postal Code"
  }

  dimension: location__address__state {
    type: string
    sql: ${TABLE}.location.address.state ;;
    group_label: "Location Address"
    group_item_label: "State"
  }

  dimension: location__address__text {
    type: string
    sql: ${TABLE}.location.address.text ;;
    group_label: "Location Address"
    group_item_label: "Text"
  }

  dimension: location__address__type {
    type: string
    sql: ${TABLE}.location.address.type ;;
    group_label: "Location Address"
    group_item_label: "Type"
  }

  dimension: location__address__use {
    type: string
    sql: ${TABLE}.location.address.use ;;
    group_label: "Location Address"
    group_item_label: "Use"
  }

  dimension: location__codeable_concept__coding {
    hidden: yes
    sql: ${TABLE}.location.codeableConcept.coding ;;
    group_label: "Location Codeable Concept"
    group_item_label: "Coding"
  }

  dimension: location__codeable_concept__text {
    type: string
    sql: ${TABLE}.location.codeableConcept.text ;;
    group_label: "Location Codeable Concept"
    group_item_label: "Text"
  }

  dimension: location__reference__display {
    type: string
    sql: ${TABLE}.location.reference.display ;;
    group_label: "Location Reference"
    group_item_label: "Display"
  }

  dimension: location__reference__identifier__assigner__display {
    type: string
    sql: ${TABLE}.location.reference.identifier.assigner.display ;;
    group_label: "Location Reference Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: location__reference__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.location.reference.identifier.assigner.identifier.assigner.display ;;
    group_label: "Location Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: location__reference__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.location.reference.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Location Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: location__reference__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.location.reference.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Location Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: location__reference__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.location.reference.identifier.assigner.identifier.period.`end` ;;
    group_label: "Location Reference Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: location__reference__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.location.reference.identifier.assigner.identifier.period.start ;;
    group_label: "Location Reference Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: location__reference__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.location.reference.identifier.assigner.identifier.system ;;
    group_label: "Location Reference Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: location__reference__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.location.reference.identifier.assigner.identifier.type.coding ;;
    group_label: "Location Reference Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: location__reference__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.location.reference.identifier.assigner.identifier.type.text ;;
    group_label: "Location Reference Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: location__reference__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.location.reference.identifier.assigner.identifier.use ;;
    group_label: "Location Reference Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: location__reference__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.location.reference.identifier.assigner.identifier.value ;;
    group_label: "Location Reference Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: location__reference__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.location.reference.identifier.assigner.organizationId ;;
    group_label: "Location Reference Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: location__reference__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.location.reference.identifier.assigner.reference ;;
    group_label: "Location Reference Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: location__reference__identifier__period__end {
    type: string
    sql: ${TABLE}.location.reference.identifier.period.`end` ;;
    group_label: "Location Reference Identifier Period"
    group_item_label: "End"
  }

  dimension: location__reference__identifier__period__start {
    type: string
    sql: ${TABLE}.location.reference.identifier.period.start ;;
    group_label: "Location Reference Identifier Period"
    group_item_label: "Start"
  }

  dimension: location__reference__identifier__system {
    type: string
    sql: ${TABLE}.location.reference.identifier.system ;;
    group_label: "Location Reference Identifier"
    group_item_label: "System"
  }

  dimension: location__reference__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.location.reference.identifier.type.coding ;;
    group_label: "Location Reference Identifier Type"
    group_item_label: "Coding"
  }

  dimension: location__reference__identifier__type__text {
    type: string
    sql: ${TABLE}.location.reference.identifier.type.text ;;
    group_label: "Location Reference Identifier Type"
    group_item_label: "Text"
  }

  dimension: location__reference__identifier__use {
    type: string
    sql: ${TABLE}.location.reference.identifier.use ;;
    group_label: "Location Reference Identifier"
    group_item_label: "Use"
  }

  dimension: location__reference__identifier__value {
    type: string
    sql: ${TABLE}.location.reference.identifier.value ;;
    group_label: "Location Reference Identifier"
    group_item_label: "Value"
  }

  dimension: location__reference__location_id {
    type: string
    sql: ${TABLE}.location.reference.locationId ;;
    group_label: "Location Reference"
    group_item_label: "Location ID"
  }

  dimension: location__reference__reference {
    type: string
    sql: ${TABLE}.location.reference.reference ;;
    group_label: "Location Reference"
    group_item_label: "Reference"
  }

  dimension: modifier {
    hidden: yes
    sql: modifier ;;
  }

  dimension: net__code {
    type: string
    sql: ${TABLE}.net.code ;;
    group_label: "Net"
    group_item_label: "Code"
  }

  dimension: net__comparator {
    type: string
    sql: ${TABLE}.net.comparator ;;
    group_label: "Net"
    group_item_label: "Comparator"
  }

  dimension: net__system {
    type: string
    sql: ${TABLE}.net.system ;;
    group_label: "Net"
    group_item_label: "System"
  }

  dimension: net__unit {
    type: string
    sql: ${TABLE}.net.unit ;;
    group_label: "Net"
    group_item_label: "Unit"
  }

  dimension: net__value {
    type: number
    sql: ${TABLE}.net.value ;;
    group_label: "Net"
    group_item_label: "Value"
  }

  dimension: note_number {
    hidden: yes
    sql: noteNumber ;;
  }

  dimension: procedure_link_id {
    hidden: yes
    sql: procedureLinkId ;;
  }

  dimension: program_code {
    hidden: yes
    sql: programCode ;;
  }

  dimension: quantity__code {
    type: string
    sql: ${TABLE}.quantity.code ;;
    group_label: "Quantity"
    group_item_label: "Code"
  }

  dimension: quantity__system {
    type: string
    sql: ${TABLE}.quantity.system ;;
    group_label: "Quantity"
    group_item_label: "System"
  }

  dimension: quantity__unit {
    type: string
    sql: ${TABLE}.quantity.unit ;;
    group_label: "Quantity"
    group_item_label: "Unit"
  }

  dimension: quantity__value {
    type: number
    sql: ${TABLE}.quantity.value ;;
    group_label: "Quantity"
    group_item_label: "Value"
  }

  dimension: revenue__coding {
    hidden: yes
    sql: ${TABLE}.revenue.coding ;;
    group_label: "Revenue"
    group_item_label: "Coding"
  }

  dimension: revenue__text {
    type: string
    sql: ${TABLE}.revenue.text ;;
    group_label: "Revenue"
    group_item_label: "Text"
  }

  dimension: sequence {
    type: number
    sql: sequence ;;
  }

  dimension: service__coding {
    hidden: yes
    sql: ${TABLE}.service.coding ;;
    group_label: "Service"
    group_item_label: "Coding"
  }

  dimension: service__structure_definition_bluebutton_outpatient_rev_cntr_ide_ndc_upc_num_extension__value__coding__code {
    type: string
    sql: ${TABLE}.service.StructureDefinition_bluebutton_outpatient_rev_cntr_ide_ndc_upc_num_extension.value.coding.code ;;
    group_label: "Service Structure Definition Bluebutton Outpatient Rev Cntr Ide Ndc Upc Num Extension Value Coding"
    group_item_label: "Code"
  }

  dimension: service__structure_definition_bluebutton_outpatient_rev_cntr_ide_ndc_upc_num_extension__value__coding__display {
    type: string
    sql: ${TABLE}.service.StructureDefinition_bluebutton_outpatient_rev_cntr_ide_ndc_upc_num_extension.value.coding.display ;;
    group_label: "Service Structure Definition Bluebutton Outpatient Rev Cntr Ide Ndc Upc Num Extension Value Coding"
    group_item_label: "Display"
  }

  dimension: service__structure_definition_bluebutton_outpatient_rev_cntr_ide_ndc_upc_num_extension__value__coding__system {
    type: string
    sql: ${TABLE}.service.StructureDefinition_bluebutton_outpatient_rev_cntr_ide_ndc_upc_num_extension.value.coding.system ;;
    group_label: "Service Structure Definition Bluebutton Outpatient Rev Cntr Ide Ndc Upc Num Extension Value Coding"
    group_item_label: "System"
  }

  dimension: service__text {
    type: string
    sql: ${TABLE}.service.text ;;
    group_label: "Service"
    group_item_label: "Text"
  }

  dimension: serviced__date {
    type: string
    sql: ${TABLE}.serviced.date ;;
    group_label: "Serviced"
    group_item_label: "Date"
  }

  dimension: serviced__period__end {
    type: string
    sql: ${TABLE}.serviced.period.`end` ;;
    group_label: "Serviced Period"
    group_item_label: "End"
  }

  dimension: serviced__period__start {
    type: string
    sql: ${TABLE}.serviced.period.start ;;
    group_label: "Serviced Period"
    group_item_label: "Start"
  }

  dimension: structure_definition_bluebutton_inpatient_rev_cntr_ndc_qty_extension__value__quantity__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_rev_cntr_ndc_qty_extension.value.quantity.value ;;
    group_label: "Structure Definition Bluebutton Inpatient Rev Cntr Ndc Qty Extension Value Quantity"
    group_item_label: "Value"
  }

  dimension: structure_definition_bluebutton_outpatient_rev_cntr_ndc_qty_extension__value__quantity__value {
    type: number
    sql: ${TABLE}.StructureDefinition_bluebutton_outpatient_rev_cntr_ndc_qty_extension.value.quantity.value ;;
    group_label: "Structure Definition Bluebutton Outpatient Rev Cntr Ndc Qty Extension Value Quantity"
    group_item_label: "Value"
  }

  dimension: sub_site {
    hidden: yes
    sql: subSite ;;
  }

  dimension: udi {
    hidden: yes
    sql: udi ;;
  }

  dimension: unit_price__code {
    type: string
    sql: ${TABLE}.unitPrice.code ;;
    group_label: "Unit Price"
    group_item_label: "Code"
  }

  dimension: unit_price__comparator {
    type: string
    sql: ${TABLE}.unitPrice.comparator ;;
    group_label: "Unit Price"
    group_item_label: "Comparator"
  }

  dimension: unit_price__system {
    type: string
    sql: ${TABLE}.unitPrice.system ;;
    group_label: "Unit Price"
    group_item_label: "System"
  }

  dimension: unit_price__unit {
    type: string
    sql: ${TABLE}.unitPrice.unit ;;
    group_label: "Unit Price"
    group_item_label: "Unit"
  }

  dimension: unit_price__value {
    type: number
    sql: ${TABLE}.unitPrice.value ;;
    group_label: "Unit Price"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_unit_price__value {
    type: sum
    sql: ${unit_price__value} ;;
  }

  measure: average_unit_price__value {
    type: average
    sql: ${unit_price__value} ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Sub Type"
view: explanation_of_benefit__sub_type {
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
  # This dimension will be called "Explanation of Benefit Sub Type" in Explore.

  dimension: explanation_of_benefit__sub_type {
    type: string
    hidden: yes
    sql: explanation_of_benefit__sub_type ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Add Item"
view: explanation_of_benefit__add_item {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: adjudication {
    hidden: yes
    sql: adjudication ;;
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

  dimension: detail {
    hidden: yes
    sql: detail ;;
  }

  dimension: explanation_of_benefit__add_item {
    type: string
    hidden: yes
    sql: explanation_of_benefit__add_item ;;
  }

  dimension: fee__code {
    type: string
    sql: ${TABLE}.fee.code ;;
    group_label: "Fee"
    group_item_label: "Code"
  }

  dimension: fee__comparator {
    type: string
    sql: ${TABLE}.fee.comparator ;;
    group_label: "Fee"
    group_item_label: "Comparator"
  }

  dimension: fee__system {
    type: string
    sql: ${TABLE}.fee.system ;;
    group_label: "Fee"
    group_item_label: "System"
  }

  dimension: fee__unit {
    type: string
    sql: ${TABLE}.fee.unit ;;
    group_label: "Fee"
    group_item_label: "Unit"
  }

  dimension: fee__value {
    type: number
    sql: ${TABLE}.fee.value ;;
    group_label: "Fee"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fee__value {
    type: sum
    sql: ${fee__value} ;;
  }

  measure: average_fee__value {
    type: average
    sql: ${fee__value} ;;
  }

  dimension: modifier {
    hidden: yes
    sql: modifier ;;
  }

  dimension: note_number {
    hidden: yes
    sql: noteNumber ;;
  }

  dimension: revenue__coding {
    hidden: yes
    sql: ${TABLE}.revenue.coding ;;
    group_label: "Revenue"
    group_item_label: "Coding"
  }

  dimension: revenue__text {
    type: string
    sql: ${TABLE}.revenue.text ;;
    group_label: "Revenue"
    group_item_label: "Text"
  }

  dimension: sequence_link_id {
    hidden: yes
    sql: sequenceLinkId ;;
  }

  dimension: service__coding {
    hidden: yes
    sql: ${TABLE}.service.coding ;;
    group_label: "Service"
    group_item_label: "Coding"
  }

  dimension: service__text {
    type: string
    sql: ${TABLE}.service.text ;;
    group_label: "Service"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "Explanation of Benefit Related"
view: explanation_of_benefit__related {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Claim Claim ID" in Explore.

  dimension: claim__claim_id {
    type: string
    sql: ${TABLE}.claim.claimId ;;
    group_label: "Claim"
    group_item_label: "Claim ID"
  }

  dimension: claim__display {
    type: string
    sql: ${TABLE}.claim.display ;;
    group_label: "Claim"
    group_item_label: "Display"
  }

  dimension: claim__identifier__assigner__display {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.display ;;
    group_label: "Claim Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: claim__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.assigner.display ;;
    group_label: "Claim Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: claim__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Claim Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: claim__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Claim Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: claim__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.period.`end` ;;
    group_label: "Claim Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: claim__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.period.start ;;
    group_label: "Claim Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: claim__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.system ;;
    group_label: "Claim Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: claim__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.claim.identifier.assigner.identifier.type.coding ;;
    group_label: "Claim Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: claim__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.type.text ;;
    group_label: "Claim Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: claim__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.use ;;
    group_label: "Claim Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: claim__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.identifier.value ;;
    group_label: "Claim Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: claim__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.organizationId ;;
    group_label: "Claim Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: claim__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.claim.identifier.assigner.reference ;;
    group_label: "Claim Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: claim__identifier__period__end {
    type: string
    sql: ${TABLE}.claim.identifier.period.`end` ;;
    group_label: "Claim Identifier Period"
    group_item_label: "End"
  }

  dimension: claim__identifier__period__start {
    type: string
    sql: ${TABLE}.claim.identifier.period.start ;;
    group_label: "Claim Identifier Period"
    group_item_label: "Start"
  }

  dimension: claim__identifier__system {
    type: string
    sql: ${TABLE}.claim.identifier.system ;;
    group_label: "Claim Identifier"
    group_item_label: "System"
  }

  dimension: claim__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.claim.identifier.type.coding ;;
    group_label: "Claim Identifier Type"
    group_item_label: "Coding"
  }

  dimension: claim__identifier__type__text {
    type: string
    sql: ${TABLE}.claim.identifier.type.text ;;
    group_label: "Claim Identifier Type"
    group_item_label: "Text"
  }

  dimension: claim__identifier__use {
    type: string
    sql: ${TABLE}.claim.identifier.use ;;
    group_label: "Claim Identifier"
    group_item_label: "Use"
  }

  dimension: claim__identifier__value {
    type: string
    sql: ${TABLE}.claim.identifier.value ;;
    group_label: "Claim Identifier"
    group_item_label: "Value"
  }

  dimension: claim__reference {
    type: string
    sql: ${TABLE}.claim.reference ;;
    group_label: "Claim"
    group_item_label: "Reference"
  }

  dimension: explanation_of_benefit__related {
    type: string
    hidden: yes
    sql: explanation_of_benefit__related ;;
  }

  dimension: reference__assigner__display {
    type: string
    sql: ${TABLE}.reference.assigner.display ;;
    group_label: "Reference Assigner"
    group_item_label: "Display"
  }

  dimension: reference__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.assigner.display ;;
    group_label: "Reference Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: reference__assigner__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.assigner.identifier.period.`end` ;;
    group_label: "Reference Assigner Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: reference__assigner__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.assigner.identifier.period.start ;;
    group_label: "Reference Assigner Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: reference__assigner__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.assigner.identifier.system ;;
    group_label: "Reference Assigner Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: reference__assigner__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.reference.assigner.identifier.assigner.identifier.type.coding ;;
    group_label: "Reference Assigner Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: reference__assigner__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.assigner.identifier.type.text ;;
    group_label: "Reference Assigner Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: reference__assigner__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.assigner.identifier.use ;;
    group_label: "Reference Assigner Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: reference__assigner__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.assigner.identifier.value ;;
    group_label: "Reference Assigner Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: reference__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.assigner.organizationId ;;
    group_label: "Reference Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: reference__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.assigner.reference ;;
    group_label: "Reference Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: reference__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.period.`end` ;;
    group_label: "Reference Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: reference__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.period.start ;;
    group_label: "Reference Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: reference__assigner__identifier__system {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.system ;;
    group_label: "Reference Assigner Identifier"
    group_item_label: "System"
  }

  dimension: reference__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.reference.assigner.identifier.type.coding ;;
    group_label: "Reference Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: reference__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.type.text ;;
    group_label: "Reference Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: reference__assigner__identifier__use {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.use ;;
    group_label: "Reference Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: reference__assigner__identifier__value {
    type: string
    sql: ${TABLE}.reference.assigner.identifier.value ;;
    group_label: "Reference Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: reference__assigner__organization_id {
    type: string
    sql: ${TABLE}.reference.assigner.organizationId ;;
    group_label: "Reference Assigner"
    group_item_label: "Organization ID"
  }

  dimension: reference__assigner__reference {
    type: string
    sql: ${TABLE}.reference.assigner.reference ;;
    group_label: "Reference Assigner"
    group_item_label: "Reference"
  }

  dimension: reference__period__end {
    type: string
    sql: ${TABLE}.reference.period.`end` ;;
    group_label: "Reference Period"
    group_item_label: "End"
  }

  dimension: reference__period__start {
    type: string
    sql: ${TABLE}.reference.period.start ;;
    group_label: "Reference Period"
    group_item_label: "Start"
  }

  dimension: reference__system {
    type: string
    sql: ${TABLE}.reference.system ;;
    group_label: "Reference"
    group_item_label: "System"
  }

  dimension: reference__type__coding {
    hidden: yes
    sql: ${TABLE}.reference.type.coding ;;
    group_label: "Reference Type"
    group_item_label: "Coding"
  }

  dimension: reference__type__text {
    type: string
    sql: ${TABLE}.reference.type.text ;;
    group_label: "Reference Type"
    group_item_label: "Text"
  }

  dimension: reference__use {
    type: string
    sql: ${TABLE}.reference.use ;;
    group_label: "Reference"
    group_item_label: "Use"
  }

  dimension: reference__value {
    type: string
    sql: ${TABLE}.reference.value ;;
    group_label: "Reference"
    group_item_label: "Value"
  }

  dimension: relationship__coding {
    hidden: yes
    sql: ${TABLE}.relationship.coding ;;
    group_label: "Relationship"
    group_item_label: "Coding"
  }

  dimension: relationship__text {
    type: string
    sql: ${TABLE}.relationship.text ;;
    group_label: "Relationship"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "Explanation of Benefit Care Team"
view: explanation_of_benefit__care_team {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: explanation_of_benefit__care_team {
    type: string
    hidden: yes
    sql: explanation_of_benefit__care_team ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Provider Display" in Explore.

  dimension: provider__display {
    type: string
    sql: ${TABLE}.provider.display ;;
    group_label: "Provider"
    group_item_label: "Display"
  }

  dimension: provider__identifier__assigner__display {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.display ;;
    group_label: "Provider Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: provider__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.assigner.display ;;
    group_label: "Provider Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: provider__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Provider Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: provider__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Provider Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: provider__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.period.`end` ;;
    group_label: "Provider Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: provider__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.period.start ;;
    group_label: "Provider Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: provider__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.system ;;
    group_label: "Provider Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: provider__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.provider.identifier.assigner.identifier.type.coding ;;
    group_label: "Provider Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: provider__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.type.text ;;
    group_label: "Provider Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: provider__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.use ;;
    group_label: "Provider Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: provider__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.identifier.value ;;
    group_label: "Provider Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: provider__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.organizationId ;;
    group_label: "Provider Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: provider__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.provider.identifier.assigner.reference ;;
    group_label: "Provider Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: provider__identifier__period__end {
    type: string
    sql: ${TABLE}.provider.identifier.period.`end` ;;
    group_label: "Provider Identifier Period"
    group_item_label: "End"
  }

  dimension: provider__identifier__period__start {
    type: string
    sql: ${TABLE}.provider.identifier.period.start ;;
    group_label: "Provider Identifier Period"
    group_item_label: "Start"
  }

  dimension: provider__identifier__system {
    type: string
    sql: ${TABLE}.provider.identifier.system ;;
    group_label: "Provider Identifier"
    group_item_label: "System"
  }

  dimension: provider__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.provider.identifier.type.coding ;;
    group_label: "Provider Identifier Type"
    group_item_label: "Coding"
  }

  dimension: provider__identifier__type__text {
    type: string
    sql: ${TABLE}.provider.identifier.type.text ;;
    group_label: "Provider Identifier Type"
    group_item_label: "Text"
  }

  dimension: provider__identifier__use {
    type: string
    sql: ${TABLE}.provider.identifier.use ;;
    group_label: "Provider Identifier"
    group_item_label: "Use"
  }

  dimension: provider__identifier__value {
    type: string
    sql: ${TABLE}.provider.identifier.value ;;
    group_label: "Provider Identifier"
    group_item_label: "Value"
  }

  dimension: provider__organization_id {
    type: string
    sql: ${TABLE}.provider.organizationId ;;
    group_label: "Provider"
    group_item_label: "Organization ID"
  }

  dimension: provider__practitioner_id {
    type: string
    sql: ${TABLE}.provider.practitionerId ;;
    group_label: "Provider"
    group_item_label: "Practitioner ID"
  }

  dimension: provider__reference {
    type: string
    sql: ${TABLE}.provider.reference ;;
    group_label: "Provider"
    group_item_label: "Reference"
  }

  dimension: qualification__coding {
    hidden: yes
    sql: ${TABLE}.qualification.coding ;;
    group_label: "Qualification"
    group_item_label: "Coding"
  }

  dimension: qualification__text {
    type: string
    sql: ${TABLE}.qualification.text ;;
    group_label: "Qualification"
    group_item_label: "Text"
  }

  dimension: responsible {
    type: yesno
    sql: responsible ;;
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

  dimension: sequence {
    type: number
    sql: sequence ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_sequence {
    type: sum
    sql: ${sequence} ;;
  }

  measure: average_sequence {
    type: average
    sql: ${sequence} ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Diagnosis"
view: explanation_of_benefit__diagnosis {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: diagnosis__codeable_concept__coding {
    hidden: yes
    sql: ${TABLE}.diagnosis.codeableConcept.coding ;;
    group_label: "Diagnosis Codeable Concept"
    group_item_label: "Coding"
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Diagnosis Codeable Concept Text" in Explore.

  dimension: diagnosis__codeable_concept__text {
    type: string
    sql: ${TABLE}.diagnosis.codeableConcept.text ;;
    group_label: "Diagnosis Codeable Concept"
    group_item_label: "Text"
  }

  dimension: diagnosis__reference__condition_id {
    type: string
    sql: ${TABLE}.diagnosis.reference.conditionId ;;
    group_label: "Diagnosis Reference"
    group_item_label: "Condition ID"
  }

  dimension: diagnosis__reference__display {
    type: string
    sql: ${TABLE}.diagnosis.reference.display ;;
    group_label: "Diagnosis Reference"
    group_item_label: "Display"
  }

  dimension: diagnosis__reference__identifier__assigner__display {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.assigner.display ;;
    group_label: "Diagnosis Reference Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: diagnosis__reference__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.assigner.identifier.assigner.display ;;
    group_label: "Diagnosis Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: diagnosis__reference__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Diagnosis Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: diagnosis__reference__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Diagnosis Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: diagnosis__reference__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.assigner.identifier.period.`end` ;;
    group_label: "Diagnosis Reference Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: diagnosis__reference__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.assigner.identifier.period.start ;;
    group_label: "Diagnosis Reference Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: diagnosis__reference__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.assigner.identifier.system ;;
    group_label: "Diagnosis Reference Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: diagnosis__reference__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.diagnosis.reference.identifier.assigner.identifier.type.coding ;;
    group_label: "Diagnosis Reference Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: diagnosis__reference__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.assigner.identifier.type.text ;;
    group_label: "Diagnosis Reference Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: diagnosis__reference__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.assigner.identifier.use ;;
    group_label: "Diagnosis Reference Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: diagnosis__reference__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.assigner.identifier.value ;;
    group_label: "Diagnosis Reference Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: diagnosis__reference__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.assigner.organizationId ;;
    group_label: "Diagnosis Reference Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: diagnosis__reference__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.assigner.reference ;;
    group_label: "Diagnosis Reference Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: diagnosis__reference__identifier__period__end {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.period.`end` ;;
    group_label: "Diagnosis Reference Identifier Period"
    group_item_label: "End"
  }

  dimension: diagnosis__reference__identifier__period__start {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.period.start ;;
    group_label: "Diagnosis Reference Identifier Period"
    group_item_label: "Start"
  }

  dimension: diagnosis__reference__identifier__system {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.system ;;
    group_label: "Diagnosis Reference Identifier"
    group_item_label: "System"
  }

  dimension: diagnosis__reference__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.diagnosis.reference.identifier.type.coding ;;
    group_label: "Diagnosis Reference Identifier Type"
    group_item_label: "Coding"
  }

  dimension: diagnosis__reference__identifier__type__text {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.type.text ;;
    group_label: "Diagnosis Reference Identifier Type"
    group_item_label: "Text"
  }

  dimension: diagnosis__reference__identifier__use {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.use ;;
    group_label: "Diagnosis Reference Identifier"
    group_item_label: "Use"
  }

  dimension: diagnosis__reference__identifier__value {
    type: string
    sql: ${TABLE}.diagnosis.reference.identifier.value ;;
    group_label: "Diagnosis Reference Identifier"
    group_item_label: "Value"
  }

  dimension: diagnosis__reference__reference {
    type: string
    sql: ${TABLE}.diagnosis.reference.reference ;;
    group_label: "Diagnosis Reference"
    group_item_label: "Reference"
  }

  dimension: explanation_of_benefit__diagnosis {
    type: string
    hidden: yes
    sql: explanation_of_benefit__diagnosis ;;
  }

  dimension: package_code__coding {
    hidden: yes
    sql: ${TABLE}.packageCode.coding ;;
    group_label: "Package Code"
    group_item_label: "Coding"
  }

  dimension: package_code__text {
    type: string
    sql: ${TABLE}.packageCode.text ;;
    group_label: "Package Code"
    group_item_label: "Text"
  }

  dimension: sequence {
    type: number
    sql: sequence ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_sequence {
    type: sum
    sql: ${sequence} ;;
  }

  measure: average_sequence {
    type: average
    sql: ${sequence} ;;
  }

  dimension: structure_definition_bluebutton_inpatient_clm_poa_ind_sw1_extension__value__coding__code {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_poa_ind_sw1_extension.value.coding.code ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Poa Ind Sw1 Extension Value Coding"
    group_item_label: "Code"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_poa_ind_sw1_extension__value__coding__display {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_poa_ind_sw1_extension.value.coding.display ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Poa Ind Sw1 Extension Value Coding"
    group_item_label: "Display"
  }

  dimension: structure_definition_bluebutton_inpatient_clm_poa_ind_sw1_extension__value__coding__system {
    type: string
    sql: ${TABLE}.StructureDefinition_bluebutton_inpatient_clm_poa_ind_sw1_extension.value.coding.system ;;
    group_label: "Structure Definition Bluebutton Inpatient Clm Poa Ind Sw1 Extension Value Coding"
    group_item_label: "System"
  }

  dimension: type {
    hidden: yes
    sql: type ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Procedure"
view: explanation_of_benefit__procedure {
  drill_fields: [procedure__reference__procedure_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: procedure__reference__procedure_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.procedure.reference.procedureId ;;
    group_label: "Procedure Reference"
    group_item_label: "Procedure ID"
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Date" in Explore.

  dimension: date {
    type: string
    sql: date ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: explanation_of_benefit__procedure {
    type: string
    hidden: yes
    sql: explanation_of_benefit__procedure ;;
  }

  dimension: procedure__codeable_concept__coding {
    hidden: yes
    sql: ${TABLE}.procedure.codeableConcept.coding ;;
    group_label: "Procedure Codeable Concept"
    group_item_label: "Coding"
  }

  dimension: procedure__codeable_concept__text {
    type: string
    sql: ${TABLE}.procedure.codeableConcept.text ;;
    group_label: "Procedure Codeable Concept"
    group_item_label: "Text"
  }

  dimension: procedure__reference__display {
    type: string
    sql: ${TABLE}.procedure.reference.display ;;
    group_label: "Procedure Reference"
    group_item_label: "Display"
  }

  dimension: procedure__reference__identifier__assigner__display {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.assigner.display ;;
    group_label: "Procedure Reference Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: procedure__reference__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.assigner.identifier.assigner.display ;;
    group_label: "Procedure Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: procedure__reference__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Procedure Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: procedure__reference__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Procedure Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: procedure__reference__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.assigner.identifier.period.`end` ;;
    group_label: "Procedure Reference Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: procedure__reference__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.assigner.identifier.period.start ;;
    group_label: "Procedure Reference Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: procedure__reference__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.assigner.identifier.system ;;
    group_label: "Procedure Reference Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: procedure__reference__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.procedure.reference.identifier.assigner.identifier.type.coding ;;
    group_label: "Procedure Reference Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: procedure__reference__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.assigner.identifier.type.text ;;
    group_label: "Procedure Reference Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: procedure__reference__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.assigner.identifier.use ;;
    group_label: "Procedure Reference Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: procedure__reference__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.assigner.identifier.value ;;
    group_label: "Procedure Reference Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: procedure__reference__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.assigner.organizationId ;;
    group_label: "Procedure Reference Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: procedure__reference__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.assigner.reference ;;
    group_label: "Procedure Reference Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: procedure__reference__identifier__period__end {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.period.`end` ;;
    group_label: "Procedure Reference Identifier Period"
    group_item_label: "End"
  }

  dimension: procedure__reference__identifier__period__start {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.period.start ;;
    group_label: "Procedure Reference Identifier Period"
    group_item_label: "Start"
  }

  dimension: procedure__reference__identifier__system {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.system ;;
    group_label: "Procedure Reference Identifier"
    group_item_label: "System"
  }

  dimension: procedure__reference__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.procedure.reference.identifier.type.coding ;;
    group_label: "Procedure Reference Identifier Type"
    group_item_label: "Coding"
  }

  dimension: procedure__reference__identifier__type__text {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.type.text ;;
    group_label: "Procedure Reference Identifier Type"
    group_item_label: "Text"
  }

  dimension: procedure__reference__identifier__use {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.use ;;
    group_label: "Procedure Reference Identifier"
    group_item_label: "Use"
  }

  dimension: procedure__reference__identifier__value {
    type: string
    sql: ${TABLE}.procedure.reference.identifier.value ;;
    group_label: "Procedure Reference Identifier"
    group_item_label: "Value"
  }

  dimension: procedure__reference__reference {
    type: string
    sql: ${TABLE}.procedure.reference.reference ;;
    group_label: "Procedure Reference"
    group_item_label: "Reference"
  }

  dimension: sequence {
    type: number
    sql: sequence ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_sequence {
    type: sum
    sql: ${sequence} ;;
  }

  measure: average_sequence {
    type: average
    sql: ${sequence} ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Identifier"
view: explanation_of_benefit__identifier {
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

  dimension: explanation_of_benefit__identifier {
    type: string
    hidden: yes
    sql: explanation_of_benefit__identifier ;;
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

# The name of this view in Looker is "Explanation of Benefit Process Note"
view: explanation_of_benefit__process_note {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: explanation_of_benefit__process_note {
    type: string
    hidden: yes
    sql: explanation_of_benefit__process_note ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Language Coding" in Explore.

  dimension: language__coding {
    hidden: yes
    sql: ${TABLE}.language.coding ;;
    group_label: "Language"
    group_item_label: "Coding"
  }

  dimension: language__text {
    type: string
    sql: ${TABLE}.language.text ;;
    group_label: "Language"
    group_item_label: "Text"
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

# The name of this view in Looker is "Explanation of Benefit Information"
view: explanation_of_benefit__information {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: category__coding {
    hidden: yes
    sql: ${TABLE}.category.coding ;;
    group_label: "Category"
    group_item_label: "Coding"
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category Text" in Explore.

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

  dimension: explanation_of_benefit__information {
    type: string
    hidden: yes
    sql: explanation_of_benefit__information ;;
  }

  dimension: reason__code {
    type: string
    sql: ${TABLE}.reason.code ;;
    group_label: "Reason"
    group_item_label: "Code"
  }

  dimension: reason__display {
    type: string
    sql: ${TABLE}.reason.display ;;
    group_label: "Reason"
    group_item_label: "Display"
  }

  dimension: reason__system {
    type: string
    sql: ${TABLE}.reason.system ;;
    group_label: "Reason"
    group_item_label: "System"
  }

  dimension: reason__user_selected {
    type: yesno
    sql: ${TABLE}.reason.userSelected ;;
    group_label: "Reason"
    group_item_label: "User Selected"
  }

  dimension: reason__version {
    type: string
    sql: ${TABLE}.reason.version ;;
    group_label: "Reason"
    group_item_label: "Version"
  }

  dimension: sequence {
    type: number
    sql: sequence ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_sequence {
    type: sum
    sql: ${sequence} ;;
  }

  measure: average_sequence {
    type: average
    sql: ${sequence} ;;
  }

  dimension: timing__date {
    type: string
    sql: ${TABLE}.timing.date ;;
    group_label: "Timing"
    group_item_label: "Date"
  }

  dimension: timing__period__end {
    type: string
    sql: ${TABLE}.timing.period.`end` ;;
    group_label: "Timing Period"
    group_item_label: "End"
  }

  dimension: timing__period__start {
    type: string
    sql: ${TABLE}.timing.period.start ;;
    group_label: "Timing Period"
    group_item_label: "Start"
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

  dimension: value__reference__display {
    type: string
    sql: ${TABLE}.value.reference.display ;;
    group_label: "Value Reference"
    group_item_label: "Display"
  }

  dimension: value__reference__identifier__assigner__display {
    type: string
    sql: ${TABLE}.value.reference.identifier.assigner.display ;;
    group_label: "Value Reference Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: value__reference__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.value.reference.identifier.assigner.identifier.assigner.display ;;
    group_label: "Value Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: value__reference__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.value.reference.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Value Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: value__reference__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.value.reference.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Value Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: value__reference__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.value.reference.identifier.assigner.identifier.period.`end` ;;
    group_label: "Value Reference Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: value__reference__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.value.reference.identifier.assigner.identifier.period.start ;;
    group_label: "Value Reference Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: value__reference__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.value.reference.identifier.assigner.identifier.system ;;
    group_label: "Value Reference Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: value__reference__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.value.reference.identifier.assigner.identifier.type.coding ;;
    group_label: "Value Reference Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: value__reference__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.value.reference.identifier.assigner.identifier.type.text ;;
    group_label: "Value Reference Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: value__reference__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.value.reference.identifier.assigner.identifier.use ;;
    group_label: "Value Reference Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: value__reference__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.value.reference.identifier.assigner.identifier.value ;;
    group_label: "Value Reference Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: value__reference__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.value.reference.identifier.assigner.organizationId ;;
    group_label: "Value Reference Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: value__reference__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.value.reference.identifier.assigner.reference ;;
    group_label: "Value Reference Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: value__reference__identifier__period__end {
    type: string
    sql: ${TABLE}.value.reference.identifier.period.`end` ;;
    group_label: "Value Reference Identifier Period"
    group_item_label: "End"
  }

  dimension: value__reference__identifier__period__start {
    type: string
    sql: ${TABLE}.value.reference.identifier.period.start ;;
    group_label: "Value Reference Identifier Period"
    group_item_label: "Start"
  }

  dimension: value__reference__identifier__system {
    type: string
    sql: ${TABLE}.value.reference.identifier.system ;;
    group_label: "Value Reference Identifier"
    group_item_label: "System"
  }

  dimension: value__reference__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.value.reference.identifier.type.coding ;;
    group_label: "Value Reference Identifier Type"
    group_item_label: "Coding"
  }

  dimension: value__reference__identifier__type__text {
    type: string
    sql: ${TABLE}.value.reference.identifier.type.text ;;
    group_label: "Value Reference Identifier Type"
    group_item_label: "Text"
  }

  dimension: value__reference__identifier__use {
    type: string
    sql: ${TABLE}.value.reference.identifier.use ;;
    group_label: "Value Reference Identifier"
    group_item_label: "Use"
  }

  dimension: value__reference__identifier__value {
    type: string
    sql: ${TABLE}.value.reference.identifier.value ;;
    group_label: "Value Reference Identifier"
    group_item_label: "Value"
  }

  dimension: value__reference__reference {
    type: string
    sql: ${TABLE}.value.reference.reference ;;
    group_label: "Value Reference"
    group_item_label: "Reference"
  }

  dimension: value__reference__resource_id {
    type: string
    sql: ${TABLE}.value.reference.resourceId ;;
    group_label: "Value Reference"
    group_item_label: "Resource ID"
  }

  dimension: value__string {
    type: string
    sql: ${TABLE}.value.string ;;
    group_label: "Value"
    group_item_label: "String"
  }
}

# The name of this view in Looker is "Explanation of Benefit Meta Profile"
view: explanation_of_benefit__meta__profile {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Explanation of Benefit Meta Profile" in Explore.

  dimension: explanation_of_benefit__meta__profile {
    type: string
    sql: explanation_of_benefit__meta__profile ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Meta Tag"
view: explanation_of_benefit__meta__tag {
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

# The name of this view in Looker is "Explanation of Benefit Benefit Balance"
view: explanation_of_benefit__benefit_balance {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: category__coding {
    hidden: yes
    sql: ${TABLE}.category.coding ;;
    group_label: "Category"
    group_item_label: "Coding"
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category Text" in Explore.

  dimension: category__text {
    type: string
    sql: ${TABLE}.category.text ;;
    group_label: "Category"
    group_item_label: "Text"
  }

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: excluded {
    type: yesno
    sql: excluded ;;
  }

  dimension: explanation_of_benefit__benefit_balance {
    type: string
    hidden: yes
    sql: explanation_of_benefit__benefit_balance ;;
  }

  dimension: financial {
    hidden: yes
    sql: financial ;;
  }

  dimension: name {
    type: string
    sql: name ;;
  }

  dimension: network__coding {
    hidden: yes
    sql: ${TABLE}.network.coding ;;
    group_label: "Network"
    group_item_label: "Coding"
  }

  dimension: network__text {
    type: string
    sql: ${TABLE}.network.text ;;
    group_label: "Network"
    group_item_label: "Text"
  }

  dimension: sub_category__coding {
    hidden: yes
    sql: ${TABLE}.subCategory.coding ;;
    group_label: "Sub Category"
    group_item_label: "Coding"
  }

  dimension: sub_category__text {
    type: string
    sql: ${TABLE}.subCategory.text ;;
    group_label: "Sub Category"
    group_item_label: "Text"
  }

  dimension: term__coding {
    hidden: yes
    sql: ${TABLE}.term.coding ;;
    group_label: "Term"
    group_item_label: "Coding"
  }

  dimension: term__text {
    type: string
    sql: ${TABLE}.term.text ;;
    group_label: "Term"
    group_item_label: "Text"
  }

  dimension: unit__coding {
    hidden: yes
    sql: ${TABLE}.unit.coding ;;
    group_label: "Unit"
    group_item_label: "Coding"
  }

  dimension: unit__text {
    type: string
    sql: ${TABLE}.unit.text ;;
    group_label: "Unit"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "Explanation of Benefit Item Note Number"
view: explanation_of_benefit__item__note_number {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Explanation of Benefit Item Note Number" in Explore.

  dimension: explanation_of_benefit__item__note_number {
    type: number
    sql: explanation_of_benefit__item__note_number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_explanation_of_benefit__item__note_number {
    type: sum
    sql: ${explanation_of_benefit__item__note_number} ;;
  }

  measure: average_explanation_of_benefit__item__note_number {
    type: average
    sql: ${explanation_of_benefit__item__note_number} ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Type Coding"
view: explanation_of_benefit__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Udi"
view: explanation_of_benefit__item__udi {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Device ID" in Explore.

  dimension: device_id {
    type: string
    sql: ${TABLE}.deviceId ;;
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

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Form Coding"
view: explanation_of_benefit__form__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Sub Site"
view: explanation_of_benefit__item__sub_site {
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

# The name of this view in Looker is "Explanation of Benefit Item Modifier"
view: explanation_of_benefit__item__modifier {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail"
view: explanation_of_benefit__item__detail {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: adjudication {
    hidden: yes
    sql: ${TABLE}.adjudication ;;
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

  dimension: factor {
    type: number
    sql: ${TABLE}.factor ;;
  }

  dimension: modifier {
    hidden: yes
    sql: ${TABLE}.modifier ;;
  }

  dimension: net__code {
    type: string
    sql: ${TABLE}.net.code ;;
    group_label: "Net"
    group_item_label: "Code"
  }

  dimension: net__comparator {
    type: string
    sql: ${TABLE}.net.comparator ;;
    group_label: "Net"
    group_item_label: "Comparator"
  }

  dimension: net__system {
    type: string
    sql: ${TABLE}.net.system ;;
    group_label: "Net"
    group_item_label: "System"
  }

  dimension: net__unit {
    type: string
    sql: ${TABLE}.net.unit ;;
    group_label: "Net"
    group_item_label: "Unit"
  }

  dimension: net__value {
    type: number
    sql: ${TABLE}.net.value ;;
    group_label: "Net"
    group_item_label: "Value"
  }

  dimension: note_number {
    hidden: yes
    sql: ${TABLE}.noteNumber ;;
  }

  dimension: program_code {
    hidden: yes
    sql: ${TABLE}.programCode ;;
  }

  dimension: quantity__code {
    type: string
    sql: ${TABLE}.quantity.code ;;
    group_label: "Quantity"
    group_item_label: "Code"
  }

  dimension: quantity__system {
    type: string
    sql: ${TABLE}.quantity.system ;;
    group_label: "Quantity"
    group_item_label: "System"
  }

  dimension: quantity__unit {
    type: string
    sql: ${TABLE}.quantity.unit ;;
    group_label: "Quantity"
    group_item_label: "Unit"
  }

  dimension: quantity__value {
    type: number
    sql: ${TABLE}.quantity.value ;;
    group_label: "Quantity"
    group_item_label: "Value"
  }

  dimension: revenue__coding {
    hidden: yes
    sql: ${TABLE}.revenue.coding ;;
    group_label: "Revenue"
    group_item_label: "Coding"
  }

  dimension: revenue__text {
    type: string
    sql: ${TABLE}.revenue.text ;;
    group_label: "Revenue"
    group_item_label: "Text"
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}.sequence ;;
  }

  dimension: service__coding {
    hidden: yes
    sql: ${TABLE}.service.coding ;;
    group_label: "Service"
    group_item_label: "Coding"
  }

  dimension: service__text {
    type: string
    sql: ${TABLE}.service.text ;;
    group_label: "Service"
    group_item_label: "Text"
  }

  dimension: sub_detail {
    hidden: yes
    sql: ${TABLE}.subDetail ;;
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

  dimension: udi {
    hidden: yes
    sql: ${TABLE}.udi ;;
  }

  dimension: unit_price__code {
    type: string
    sql: ${TABLE}.unitPrice.code ;;
    group_label: "Unit Price"
    group_item_label: "Code"
  }

  dimension: unit_price__comparator {
    type: string
    sql: ${TABLE}.unitPrice.comparator ;;
    group_label: "Unit Price"
    group_item_label: "Comparator"
  }

  dimension: unit_price__system {
    type: string
    sql: ${TABLE}.unitPrice.system ;;
    group_label: "Unit Price"
    group_item_label: "System"
  }

  dimension: unit_price__unit {
    type: string
    sql: ${TABLE}.unitPrice.unit ;;
    group_label: "Unit Price"
    group_item_label: "Unit"
  }

  dimension: unit_price__value {
    type: number
    sql: ${TABLE}.unitPrice.value ;;
    group_label: "Unit Price"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_unit_price__value {
    type: sum
    sql: ${unit_price__value} ;;
  }

  measure: average_unit_price__value {
    type: average
    sql: ${unit_price__value} ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Meta Security"
view: explanation_of_benefit__meta__security {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Note Number"
view: explanation_of_benefit__add_item__note_number {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Explanation of Benefit Add Item Note Number" in Explore.

  dimension: explanation_of_benefit__add_item__note_number {
    type: number
    sql: explanation_of_benefit__add_item__note_number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_explanation_of_benefit__add_item__note_number {
    type: sum
    sql: ${explanation_of_benefit__add_item__note_number} ;;
  }

  measure: average_explanation_of_benefit__add_item__note_number {
    type: average
    sql: ${explanation_of_benefit__add_item__note_number} ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Item Care Team Link ID"
view: explanation_of_benefit__item__care_team_link_id {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Explanation of Benefit Item Care Team Link ID" in Explore.

  dimension: explanation_of_benefit__item__care_team_link_id {
    type: number
    sql: explanation_of_benefit__item__care_team_link_id ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Diagnosis Type"
view: explanation_of_benefit__diagnosis__type {
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

# The name of this view in Looker is "Explanation of Benefit Sub Type Coding"
view: explanation_of_benefit__sub_type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Outcome Coding"
view: explanation_of_benefit__outcome__coding {
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

# The name of this view in Looker is "Explanation of Benefit Insurance Pre Auth Ref"
view: explanation_of_benefit__insurance__pre_auth_ref {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Explanation of Benefit Insurance Pre Auth Ref" in Explore.

  dimension: explanation_of_benefit__insurance__pre_auth_ref {
    type: string
    sql: explanation_of_benefit__insurance__pre_auth_ref ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Item Procedure Link ID"
view: explanation_of_benefit__item__procedure_link_id {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Explanation of Benefit Item Procedure Link ID" in Explore.

  dimension: explanation_of_benefit__item__procedure_link_id {
    type: number
    sql: explanation_of_benefit__item__procedure_link_id ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Item Diagnosis Link ID"
view: explanation_of_benefit__item__diagnosis_link_id {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Explanation of Benefit Item Diagnosis Link ID" in Explore.

  dimension: explanation_of_benefit__item__diagnosis_link_id {
    type: number
    sql: explanation_of_benefit__item__diagnosis_link_id ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Item Program Code"
view: explanation_of_benefit__item__program_code {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Modifier"
view: explanation_of_benefit__add_item__modifier {
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

# The name of this view in Looker is "Explanation of Benefit Payee Type Coding"
view: explanation_of_benefit__payee__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Information Link ID"
view: explanation_of_benefit__item__information_link_id {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Explanation of Benefit Item Information Link ID" in Explore.

  dimension: explanation_of_benefit__item__information_link_id {
    type: number
    sql: explanation_of_benefit__item__information_link_id ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Item Encounter"
view: explanation_of_benefit__item__encounter {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Display" in Explore.

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: encounter_id {
    type: string
    sql: ${TABLE}.encounterId ;;
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Note Number"
view: explanation_of_benefit__item__detail__note_number {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Explanation of Benefit Item Detail Note Number" in Explore.

  dimension: explanation_of_benefit__item__detail__note_number {
    type: number
    sql: explanation_of_benefit__item__detail__note_number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_explanation_of_benefit__item__detail__note_number {
    type: sum
    sql: ${explanation_of_benefit__item__detail__note_number} ;;
  }

  measure: average_explanation_of_benefit__item__detail__note_number {
    type: average
    sql: ${explanation_of_benefit__item__detail__note_number} ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Add Item Sequence Link ID"
view: explanation_of_benefit__add_item__sequence_link_id {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Explanation of Benefit Add Item Sequence Link ID" in Explore.

  dimension: explanation_of_benefit__add_item__sequence_link_id {
    type: number
    sql: explanation_of_benefit__add_item__sequence_link_id ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Item Adjudication"
view: explanation_of_benefit__item__adjudication {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount Code" in Explore.

  dimension: amount__code {
    type: string
    sql: ${TABLE}.amount.code ;;
    group_label: "Amount"
    group_item_label: "Code"
  }

  dimension: amount__comparator {
    type: string
    sql: ${TABLE}.amount.comparator ;;
    group_label: "Amount"
    group_item_label: "Comparator"
  }

  dimension: amount__system {
    type: string
    sql: ${TABLE}.amount.system ;;
    group_label: "Amount"
    group_item_label: "System"
  }

  dimension: amount__unit {
    type: string
    sql: ${TABLE}.amount.unit ;;
    group_label: "Amount"
    group_item_label: "Unit"
  }

  dimension: amount__value {
    type: number
    sql: ${TABLE}.amount.value ;;
    group_label: "Amount"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount__value {
    type: sum
    sql: ${amount__value} ;;
  }

  measure: average_amount__value {
    type: average
    sql: ${amount__value} ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

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

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Item Detail Udi"
view: explanation_of_benefit__item__detail__udi {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Device ID" in Explore.

  dimension: device_id {
    type: string
    sql: ${TABLE}.deviceId ;;
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

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Add Item Detail"
view: explanation_of_benefit__add_item__detail {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: adjudication {
    hidden: yes
    sql: ${TABLE}.adjudication ;;
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

  dimension: fee__code {
    type: string
    sql: ${TABLE}.fee.code ;;
    group_label: "Fee"
    group_item_label: "Code"
  }

  dimension: fee__comparator {
    type: string
    sql: ${TABLE}.fee.comparator ;;
    group_label: "Fee"
    group_item_label: "Comparator"
  }

  dimension: fee__system {
    type: string
    sql: ${TABLE}.fee.system ;;
    group_label: "Fee"
    group_item_label: "System"
  }

  dimension: fee__unit {
    type: string
    sql: ${TABLE}.fee.unit ;;
    group_label: "Fee"
    group_item_label: "Unit"
  }

  dimension: fee__value {
    type: number
    sql: ${TABLE}.fee.value ;;
    group_label: "Fee"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fee__value {
    type: sum
    sql: ${fee__value} ;;
  }

  measure: average_fee__value {
    type: average
    sql: ${fee__value} ;;
  }

  dimension: modifier {
    hidden: yes
    sql: ${TABLE}.modifier ;;
  }

  dimension: note_number {
    hidden: yes
    sql: ${TABLE}.noteNumber ;;
  }

  dimension: revenue__coding {
    hidden: yes
    sql: ${TABLE}.revenue.coding ;;
    group_label: "Revenue"
    group_item_label: "Coding"
  }

  dimension: revenue__text {
    type: string
    sql: ${TABLE}.revenue.text ;;
    group_label: "Revenue"
    group_item_label: "Text"
  }

  dimension: service__coding {
    hidden: yes
    sql: ${TABLE}.service.coding ;;
    group_label: "Service"
    group_item_label: "Coding"
  }

  dimension: service__text {
    type: string
    sql: ${TABLE}.service.text ;;
    group_label: "Service"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "Explanation of Benefit Payment Type Coding"
view: explanation_of_benefit__payment__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Revenue Coding"
view: explanation_of_benefit__item__revenue__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Service Coding"
view: explanation_of_benefit__item__service__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Sub Site Coding"
view: explanation_of_benefit__item__sub_site__coding {
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

# The name of this view in Looker is "Explanation of Benefit Care Team Role Coding"
view: explanation_of_benefit__care_team__role__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Modifier Coding"
view: explanation_of_benefit__item__modifier__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Body Site Coding"
view: explanation_of_benefit__item__body_site__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Modifier"
view: explanation_of_benefit__item__detail__modifier {
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

# The name of this view in Looker is "Explanation of Benefit Item Category Coding"
view: explanation_of_benefit__item__category__coding {
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

# The name of this view in Looker is "Explanation of Benefit Accident Type Coding"
view: explanation_of_benefit__accident__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Detail Note Number"
view: explanation_of_benefit__add_item__detail__note_number {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Explanation of Benefit Add Item Detail Note Number" in Explore.

  dimension: explanation_of_benefit__add_item__detail__note_number {
    type: number
    sql: explanation_of_benefit__add_item__detail__note_number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_explanation_of_benefit__add_item__detail__note_number {
    type: sum
    sql: ${explanation_of_benefit__add_item__detail__note_number} ;;
  }

  measure: average_explanation_of_benefit__add_item__detail__note_number {
    type: average
    sql: ${explanation_of_benefit__add_item__detail__note_number} ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Item Location Address Line"
view: explanation_of_benefit__item__location__address__line {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Explanation of Benefit Item Location Address Line" in Explore.

  dimension: explanation_of_benefit__item__location__address__line {
    type: string
    sql: explanation_of_benefit__item__location__address__line ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Diagnosis Type Coding"
view: explanation_of_benefit__diagnosis__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Adjudication"
view: explanation_of_benefit__add_item__adjudication {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount Code" in Explore.

  dimension: amount__code {
    type: string
    sql: ${TABLE}.amount.code ;;
    group_label: "Amount"
    group_item_label: "Code"
  }

  dimension: amount__comparator {
    type: string
    sql: ${TABLE}.amount.comparator ;;
    group_label: "Amount"
    group_item_label: "Comparator"
  }

  dimension: amount__system {
    type: string
    sql: ${TABLE}.amount.system ;;
    group_label: "Amount"
    group_item_label: "System"
  }

  dimension: amount__unit {
    type: string
    sql: ${TABLE}.amount.unit ;;
    group_label: "Amount"
    group_item_label: "Unit"
  }

  dimension: amount__value {
    type: number
    sql: ${TABLE}.amount.value ;;
    group_label: "Amount"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount__value {
    type: sum
    sql: ${amount__value} ;;
  }

  measure: average_amount__value {
    type: average
    sql: ${amount__value} ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

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

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Identifier Type Coding"
view: explanation_of_benefit__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Revenue Coding"
view: explanation_of_benefit__add_item__revenue__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Service Coding"
view: explanation_of_benefit__add_item__service__coding {
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

# The name of this view in Looker is "Explanation of Benefit Process Note Type Coding"
view: explanation_of_benefit__process_note__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Program Code Coding"
view: explanation_of_benefit__item__program_code__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Program Code"
view: explanation_of_benefit__item__detail__program_code {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail"
view: explanation_of_benefit__item__detail__sub_detail {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: adjudication {
    hidden: yes
    sql: ${TABLE}.adjudication ;;
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

  dimension: factor {
    type: number
    sql: ${TABLE}.factor ;;
  }

  dimension: modifier {
    hidden: yes
    sql: ${TABLE}.modifier ;;
  }

  dimension: net__code {
    type: string
    sql: ${TABLE}.net.code ;;
    group_label: "Net"
    group_item_label: "Code"
  }

  dimension: net__comparator {
    type: string
    sql: ${TABLE}.net.comparator ;;
    group_label: "Net"
    group_item_label: "Comparator"
  }

  dimension: net__system {
    type: string
    sql: ${TABLE}.net.system ;;
    group_label: "Net"
    group_item_label: "System"
  }

  dimension: net__unit {
    type: string
    sql: ${TABLE}.net.unit ;;
    group_label: "Net"
    group_item_label: "Unit"
  }

  dimension: net__value {
    type: number
    sql: ${TABLE}.net.value ;;
    group_label: "Net"
    group_item_label: "Value"
  }

  dimension: note_number {
    hidden: yes
    sql: ${TABLE}.noteNumber ;;
  }

  dimension: program_code {
    hidden: yes
    sql: ${TABLE}.programCode ;;
  }

  dimension: quantity__code {
    type: string
    sql: ${TABLE}.quantity.code ;;
    group_label: "Quantity"
    group_item_label: "Code"
  }

  dimension: quantity__system {
    type: string
    sql: ${TABLE}.quantity.system ;;
    group_label: "Quantity"
    group_item_label: "System"
  }

  dimension: quantity__unit {
    type: string
    sql: ${TABLE}.quantity.unit ;;
    group_label: "Quantity"
    group_item_label: "Unit"
  }

  dimension: quantity__value {
    type: number
    sql: ${TABLE}.quantity.value ;;
    group_label: "Quantity"
    group_item_label: "Value"
  }

  dimension: revenue__coding {
    hidden: yes
    sql: ${TABLE}.revenue.coding ;;
    group_label: "Revenue"
    group_item_label: "Coding"
  }

  dimension: revenue__text {
    type: string
    sql: ${TABLE}.revenue.text ;;
    group_label: "Revenue"
    group_item_label: "Text"
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}.sequence ;;
  }

  dimension: service__coding {
    hidden: yes
    sql: ${TABLE}.service.coding ;;
    group_label: "Service"
    group_item_label: "Coding"
  }

  dimension: service__text {
    type: string
    sql: ${TABLE}.service.text ;;
    group_label: "Service"
    group_item_label: "Text"
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

  dimension: udi {
    hidden: yes
    sql: ${TABLE}.udi ;;
  }

  dimension: unit_price__code {
    type: string
    sql: ${TABLE}.unitPrice.code ;;
    group_label: "Unit Price"
    group_item_label: "Code"
  }

  dimension: unit_price__comparator {
    type: string
    sql: ${TABLE}.unitPrice.comparator ;;
    group_label: "Unit Price"
    group_item_label: "Comparator"
  }

  dimension: unit_price__system {
    type: string
    sql: ${TABLE}.unitPrice.system ;;
    group_label: "Unit Price"
    group_item_label: "System"
  }

  dimension: unit_price__unit {
    type: string
    sql: ${TABLE}.unitPrice.unit ;;
    group_label: "Unit Price"
    group_item_label: "Unit"
  }

  dimension: unit_price__value {
    type: number
    sql: ${TABLE}.unitPrice.value ;;
    group_label: "Unit Price"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_unit_price__value {
    type: sum
    sql: ${unit_price__value} ;;
  }

  measure: average_unit_price__value {
    type: average
    sql: ${unit_price__value} ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Item Detail Type Coding"
view: explanation_of_benefit__item__detail__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Modifier Coding"
view: explanation_of_benefit__add_item__modifier__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Detail Modifier"
view: explanation_of_benefit__add_item__detail__modifier {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Category Coding"
view: explanation_of_benefit__add_item__category__coding {
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

# The name of this view in Looker is "Explanation of Benefit Information Code Coding"
view: explanation_of_benefit__information__code__coding {
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

# The name of this view in Looker is "Explanation of Benefit Payee Resource Type Coding"
view: explanation_of_benefit__payee__resource_type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Adjudication"
view: explanation_of_benefit__item__detail__adjudication {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount Code" in Explore.

  dimension: amount__code {
    type: string
    sql: ${TABLE}.amount.code ;;
    group_label: "Amount"
    group_item_label: "Code"
  }

  dimension: amount__comparator {
    type: string
    sql: ${TABLE}.amount.comparator ;;
    group_label: "Amount"
    group_item_label: "Comparator"
  }

  dimension: amount__system {
    type: string
    sql: ${TABLE}.amount.system ;;
    group_label: "Amount"
    group_item_label: "System"
  }

  dimension: amount__unit {
    type: string
    sql: ${TABLE}.amount.unit ;;
    group_label: "Amount"
    group_item_label: "Unit"
  }

  dimension: amount__value {
    type: number
    sql: ${TABLE}.amount.value ;;
    group_label: "Amount"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount__value {
    type: sum
    sql: ${amount__value} ;;
  }

  measure: average_amount__value {
    type: average
    sql: ${amount__value} ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

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

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Accident Location Address Line"
view: explanation_of_benefit__accident__location__address__line {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Explanation of Benefit Accident Location Address Line" in Explore.

  dimension: explanation_of_benefit__accident__location__address__line {
    type: string
    sql: explanation_of_benefit__accident__location__address__line ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Item Detail Revenue Coding"
view: explanation_of_benefit__item__detail__revenue__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Service Coding"
view: explanation_of_benefit__item__detail__service__coding {
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

# The name of this view in Looker is "Explanation of Benefit Benefit Balance Unit Coding"
view: explanation_of_benefit__benefit_balance__unit__coding {
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

# The name of this view in Looker is "Explanation of Benefit Benefit Balance Term Coding"
view: explanation_of_benefit__benefit_balance__term__coding {
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

# The name of this view in Looker is "Explanation of Benefit Process Note Language Coding"
view: explanation_of_benefit__process_note__language__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Modifier Coding"
view: explanation_of_benefit__item__detail__modifier__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Note Number"
view: explanation_of_benefit__item__detail__sub_detail__note_number {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Explanation of Benefit Item Detail Sub Detail Note Number" in Explore.

  dimension: explanation_of_benefit__item__detail__sub_detail__note_number {
    type: number
    sql: explanation_of_benefit__item__detail__sub_detail__note_number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_explanation_of_benefit__item__detail__sub_detail__note_number {
    type: sum
    sql: ${explanation_of_benefit__item__detail__sub_detail__note_number} ;;
  }

  measure: average_explanation_of_benefit__item__detail__sub_detail__note_number {
    type: average
    sql: ${explanation_of_benefit__item__detail__sub_detail__note_number} ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Item Detail Category Coding"
view: explanation_of_benefit__item__detail__category__coding {
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

# The name of this view in Looker is "Explanation of Benefit Related Relationship Coding"
view: explanation_of_benefit__related__relationship__coding {
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

# The name of this view in Looker is "Explanation of Benefit Information Category Coding"
view: explanation_of_benefit__information__category__coding {
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

# The name of this view in Looker is "Explanation of Benefit Claim Identifier Type Coding"
view: explanation_of_benefit__claim__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Udi"
view: explanation_of_benefit__item__detail__sub_detail__udi {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Device ID" in Explore.

  dimension: device_id {
    type: string
    sql: ${TABLE}.deviceId ;;
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

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Diagnosis Package Code Coding"
view: explanation_of_benefit__diagnosis__package_code__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Detail Adjudication"
view: explanation_of_benefit__add_item__detail__adjudication {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount Code" in Explore.

  dimension: amount__code {
    type: string
    sql: ${TABLE}.amount.code ;;
    group_label: "Amount"
    group_item_label: "Code"
  }

  dimension: amount__comparator {
    type: string
    sql: ${TABLE}.amount.comparator ;;
    group_label: "Amount"
    group_item_label: "Comparator"
  }

  dimension: amount__system {
    type: string
    sql: ${TABLE}.amount.system ;;
    group_label: "Amount"
    group_item_label: "System"
  }

  dimension: amount__unit {
    type: string
    sql: ${TABLE}.amount.unit ;;
    group_label: "Amount"
    group_item_label: "Unit"
  }

  dimension: amount__value {
    type: number
    sql: ${TABLE}.amount.value ;;
    group_label: "Amount"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount__value {
    type: sum
    sql: ${amount__value} ;;
  }

  measure: average_amount__value {
    type: average
    sql: ${amount__value} ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

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

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Care Team Qualification Coding"
view: explanation_of_benefit__care_team__qualification__coding {
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

# The name of this view in Looker is "Explanation of Benefit Benefit Balance Financial"
view: explanation_of_benefit__benefit_balance__financial {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Allowed Money Code" in Explore.

  dimension: allowed__money__code {
    type: string
    sql: ${TABLE}.allowed.money.code ;;
    group_label: "Allowed Money"
    group_item_label: "Code"
  }

  dimension: allowed__money__comparator {
    type: string
    sql: ${TABLE}.allowed.money.comparator ;;
    group_label: "Allowed Money"
    group_item_label: "Comparator"
  }

  dimension: allowed__money__system {
    type: string
    sql: ${TABLE}.allowed.money.system ;;
    group_label: "Allowed Money"
    group_item_label: "System"
  }

  dimension: allowed__money__unit {
    type: string
    sql: ${TABLE}.allowed.money.unit ;;
    group_label: "Allowed Money"
    group_item_label: "Unit"
  }

  dimension: allowed__money__value {
    type: number
    sql: ${TABLE}.allowed.money.value ;;
    group_label: "Allowed Money"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_allowed__money__value {
    type: sum
    sql: ${allowed__money__value} ;;
  }

  measure: average_allowed__money__value {
    type: average
    sql: ${allowed__money__value} ;;
  }

  dimension: allowed__string {
    type: string
    sql: ${TABLE}.allowed.string ;;
    group_label: "Allowed"
    group_item_label: "String"
  }

  dimension: allowed__unsigned_int {
    type: number
    sql: ${TABLE}.allowed.unsignedInt ;;
    group_label: "Allowed"
    group_item_label: "Unsigned Int"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

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

  dimension: used__money__code {
    type: string
    sql: ${TABLE}.used.money.code ;;
    group_label: "Used Money"
    group_item_label: "Code"
  }

  dimension: used__money__comparator {
    type: string
    sql: ${TABLE}.used.money.comparator ;;
    group_label: "Used Money"
    group_item_label: "Comparator"
  }

  dimension: used__money__system {
    type: string
    sql: ${TABLE}.used.money.system ;;
    group_label: "Used Money"
    group_item_label: "System"
  }

  dimension: used__money__unit {
    type: string
    sql: ${TABLE}.used.money.unit ;;
    group_label: "Used Money"
    group_item_label: "Unit"
  }

  dimension: used__money__value {
    type: number
    sql: ${TABLE}.used.money.value ;;
    group_label: "Used Money"
    group_item_label: "Value"
  }

  dimension: used__unsigned_int {
    type: number
    sql: ${TABLE}.used.unsignedInt ;;
    group_label: "Used"
    group_item_label: "Unsigned Int"
  }
}

# The name of this view in Looker is "Explanation of Benefit Benefit Balance Network Coding"
view: explanation_of_benefit__benefit_balance__network__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Detail Revenue Coding"
view: explanation_of_benefit__add_item__detail__revenue__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Detail Service Coding"
view: explanation_of_benefit__add_item__detail__service__coding {
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

# The name of this view in Looker is "Explanation of Benefit Related Reference Type Coding"
view: explanation_of_benefit__related__reference__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Enterer Identifier Type Coding"
view: explanation_of_benefit__enterer__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Payment Identifier Type Coding"
view: explanation_of_benefit__payment__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Program Code Coding"
view: explanation_of_benefit__item__detail__program_code__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Modifier"
view: explanation_of_benefit__item__detail__sub_detail__modifier {
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

# The name of this view in Looker is "Explanation of Benefit Benefit Balance Category Coding"
view: explanation_of_benefit__benefit_balance__category__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Detail Modifier Coding"
view: explanation_of_benefit__add_item__detail__modifier__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Detail Category Coding"
view: explanation_of_benefit__add_item__detail__category__coding {
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

# The name of this view in Looker is "Explanation of Benefit Insurer Identifier Type Coding"
view: explanation_of_benefit__insurer__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Patient Identifier Type Coding"
view: explanation_of_benefit__patient__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Payment Adjustment Reason Coding"
view: explanation_of_benefit__payment__adjustment_reason__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Adjudication Reason Coding"
view: explanation_of_benefit__item__adjudication__reason__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Udi Identifier Type Coding"
view: explanation_of_benefit__item__udi__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Provider Identifier Type Coding"
view: explanation_of_benefit__provider__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Referral Identifier Type Coding"
view: explanation_of_benefit__referral__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Facility Identifier Type Coding"
view: explanation_of_benefit__facility__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Adjudication Category Coding"
view: explanation_of_benefit__item__adjudication__category__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Program Code"
view: explanation_of_benefit__item__detail__sub_detail__program_code {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Type Coding"
view: explanation_of_benefit__item__detail__sub_detail__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Benefit Balance Sub Category Coding"
view: explanation_of_benefit__benefit_balance__sub_category__coding {
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

# The name of this view in Looker is "Explanation of Benefit Payee Party Identifier Type Coding"
view: explanation_of_benefit__payee__party__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Adjudication Reason Coding"
view: explanation_of_benefit__add_item__adjudication__reason__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Adjudication"
view: explanation_of_benefit__item__detail__sub_detail__adjudication {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount Code" in Explore.

  dimension: amount__code {
    type: string
    sql: ${TABLE}.amount.code ;;
    group_label: "Amount"
    group_item_label: "Code"
  }

  dimension: amount__comparator {
    type: string
    sql: ${TABLE}.amount.comparator ;;
    group_label: "Amount"
    group_item_label: "Comparator"
  }

  dimension: amount__system {
    type: string
    sql: ${TABLE}.amount.system ;;
    group_label: "Amount"
    group_item_label: "System"
  }

  dimension: amount__unit {
    type: string
    sql: ${TABLE}.amount.unit ;;
    group_label: "Amount"
    group_item_label: "Unit"
  }

  dimension: amount__value {
    type: number
    sql: ${TABLE}.amount.value ;;
    group_label: "Amount"
    group_item_label: "Value"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount__value {
    type: sum
    sql: ${amount__value} ;;
  }

  measure: average_amount__value {
    type: average
    sql: ${amount__value} ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

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

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

# The name of this view in Looker is "Explanation of Benefit Prescription Identifier Type Coding"
view: explanation_of_benefit__prescription__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Organization Identifier Type Coding"
view: explanation_of_benefit__organization__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Claim Response Identifier Type Coding"
view: explanation_of_benefit__claim_response__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Location Codeable Concept Coding"
view: explanation_of_benefit__item__location__codeable_concept__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Revenue Coding"
view: explanation_of_benefit__item__detail__sub_detail__revenue__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Service Coding"
view: explanation_of_benefit__item__detail__sub_detail__service__coding {
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

# The name of this view in Looker is "Explanation of Benefit Benefit Balance Financial Type Coding"
view: explanation_of_benefit__benefit_balance__financial__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Adjudication Category Coding"
view: explanation_of_benefit__add_item__adjudication__category__coding {
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

# The name of this view in Looker is "Explanation of Benefit Related Claim Identifier Type Coding"
view: explanation_of_benefit__related__claim__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Encounter Identifier Type Coding"
view: explanation_of_benefit__item__encounter__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Modifier Coding"
view: explanation_of_benefit__item__detail__sub_detail__modifier__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Category Coding"
view: explanation_of_benefit__item__detail__sub_detail__category__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Adjudication Reason Coding"
view: explanation_of_benefit__item__detail__adjudication__reason__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Udi Identifier Type Coding"
view: explanation_of_benefit__item__detail__udi__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Care Team Provider Identifier Type Coding"
view: explanation_of_benefit__care_team__provider__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Program Code Coding"
view: explanation_of_benefit__item__detail__sub_detail__program_code__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Adjudication Category Coding"
view: explanation_of_benefit__item__detail__adjudication__category__coding {
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

# The name of this view in Looker is "Explanation of Benefit Insurance Coverage Identifier Type Coding"
view: explanation_of_benefit__insurance__coverage__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Detail Adjudication Reason Coding"
view: explanation_of_benefit__add_item__detail__adjudication__reason__coding {
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

# The name of this view in Looker is "Explanation of Benefit Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Diagnosis Diagnosis Codeable Concept Coding"
view: explanation_of_benefit__diagnosis__diagnosis__codeable_concept__coding {
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

# The name of this view in Looker is "Explanation of Benefit Procedure Procedure Codeable Concept Coding"
view: explanation_of_benefit__procedure__procedure__codeable_concept__coding {
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

# The name of this view in Looker is "Explanation of Benefit Add Item Detail Adjudication Category Coding"
view: explanation_of_benefit__add_item__detail__adjudication__category__coding {
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

# The name of this view in Looker is "Explanation of Benefit Original Prescription Identifier Type Coding"
view: explanation_of_benefit__original_prescription__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Location Reference Identifier Type Coding"
view: explanation_of_benefit__item__location__reference__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Claim Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__claim__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Adjudication Reason Coding"
view: explanation_of_benefit__item__detail__sub_detail__adjudication__reason__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Udi Identifier Type Coding"
view: explanation_of_benefit__item__detail__sub_detail__udi__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Related Reference Assigner Identifier Type Coding"
view: explanation_of_benefit__related__reference__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Enterer Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__enterer__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Payment Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__payment__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Adjudication Category Coding"
view: explanation_of_benefit__item__detail__sub_detail__adjudication__category__coding {
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

# The name of this view in Looker is "Explanation of Benefit Accident Location Reference Identifier Type Coding"
view: explanation_of_benefit__accident__location__reference__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Insurer Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__insurer__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Patient Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__patient__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Information Value Reference Identifier Type Coding"
view: explanation_of_benefit__information__value__reference__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Udi Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__item__udi__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Provider Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__provider__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Referral Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__referral__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Facility Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__facility__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Diagnosis Diagnosis Reference Identifier Type Coding"
view: explanation_of_benefit__diagnosis__diagnosis__reference__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Procedure Procedure Reference Identifier Type Coding"
view: explanation_of_benefit__procedure__procedure__reference__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Payee Party Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__payee__party__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Prescription Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__prescription__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Organization Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__organization__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Claim Response Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__claim_response__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Related Claim Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__related__claim__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Encounter Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__item__encounter__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Udi Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__item__detail__udi__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Care Team Provider Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__care_team__provider__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Insurance Coverage Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__insurance__coverage__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Original Prescription Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__original_prescription__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Location Reference Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__item__location__reference__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Item Detail Sub Detail Udi Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__item__detail__sub_detail__udi__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Related Reference Assigner Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__related__reference__assigner__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Accident Location Reference Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__accident__location__reference__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Information Value Reference Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__information__value__reference__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Diagnosis Diagnosis Reference Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__diagnosis__diagnosis__reference__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Explanation of Benefit Procedure Procedure Reference Identifier Assigner Identifier Type Coding"
view: explanation_of_benefit__procedure__procedure__reference__identifier__assigner__identifier__type__coding {
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
