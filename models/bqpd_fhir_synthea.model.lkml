# Define the database connection to be used for this model.
connection: "gofish"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: bqpd_fhir_synthea_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bqpd_fhir_synthea_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Bqpd Fhir Synthea"

explore: basic {
  join: basic__identifier {
    view_label: "Basic: Identifier"
    sql: LEFT JOIN UNNEST(${basic.identifier}) as basic__identifier ;;
    relationship: one_to_many
  }

  join: basic__meta__profile {
    view_label: "Basic: Meta Profile"
    sql: LEFT JOIN UNNEST(${basic.meta__profile}) as basic__meta__profile ;;
    relationship: one_to_many
  }

  join: basic__meta__tag {
    view_label: "Basic: Meta Tag"
    sql: LEFT JOIN UNNEST(${basic.meta__tag}) as basic__meta__tag ;;
    relationship: one_to_many
  }

  join: basic__code__coding {
    view_label: "Basic: Code Coding"
    sql: LEFT JOIN UNNEST(${basic.code__coding}) as basic__code__coding ;;
    relationship: one_to_many
  }

  join: basic__meta__security {
    view_label: "Basic: Meta Security"
    sql: LEFT JOIN UNNEST(${basic.meta__security}) as basic__meta__security ;;
    relationship: one_to_many
  }

  join: basic__identifier__type__coding {
    view_label: "Basic: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${basic__identifier.type__coding}) as basic__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: basic__author__identifier__type__coding {
    view_label: "Basic: Author Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${basic.author__identifier__type__coding}) as basic__author__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: basic__subject__identifier__type__coding {
    view_label: "Basic: Subject Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${basic.subject__identifier__type__coding}) as basic__subject__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: basic__identifier__assigner__identifier__type__coding {
    view_label: "Basic: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${basic__identifier.assigner__identifier__type__coding}) as basic__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: basic__author__identifier__assigner__identifier__type__coding {
    view_label: "Basic: Author Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${basic.author__identifier__assigner__identifier__type__coding}) as basic__author__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: basic__subject__identifier__assigner__identifier__type__coding {
    view_label: "Basic: Subject Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${basic.subject__identifier__assigner__identifier__type__coding}) as basic__subject__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: care_plan {
  join: care_plan__note {
    view_label: "Care Plan: Note"
    sql: LEFT JOIN UNNEST(${care_plan.note}) as care_plan__note ;;
    relationship: one_to_many
  }

  join: care_plan__goal {
    view_label: "Care Plan: Goal"
    sql: LEFT JOIN UNNEST(${care_plan.goal}) as care_plan__goal ;;
    relationship: one_to_many
  }

  join: care_plan__part_of {
    view_label: "Care Plan: Partof"
    sql: LEFT JOIN UNNEST(${care_plan.part_of}) as care_plan__part_of ;;
    relationship: one_to_many
  }

  join: care_plan__author {
    view_label: "Care Plan: Author"
    sql: LEFT JOIN UNNEST(${care_plan.author}) as care_plan__author ;;
    relationship: one_to_many
  }

  join: care_plan__based_on {
    view_label: "Care Plan: Basedon"
    sql: LEFT JOIN UNNEST(${care_plan.based_on}) as care_plan__based_on ;;
    relationship: one_to_many
  }

  join: care_plan__activity {
    view_label: "Care Plan: Activity"
    sql: LEFT JOIN UNNEST(${care_plan.activity}) as care_plan__activity ;;
    relationship: one_to_many
  }

  join: care_plan__care_team {
    view_label: "Care Plan: Careteam"
    sql: LEFT JOIN UNNEST(${care_plan.care_team}) as care_plan__care_team ;;
    relationship: one_to_many
  }

  join: care_plan__replaces {
    view_label: "Care Plan: Replaces"
    sql: LEFT JOIN UNNEST(${care_plan.replaces}) as care_plan__replaces ;;
    relationship: one_to_many
  }

  join: care_plan__category {
    view_label: "Care Plan: Category"
    sql: LEFT JOIN UNNEST(${care_plan.category}) as care_plan__category ;;
    relationship: one_to_many
  }

  join: care_plan__addresses {
    view_label: "Care Plan: Addresses"
    sql: LEFT JOIN UNNEST(${care_plan.addresses}) as care_plan__addresses ;;
    relationship: one_to_many
  }

  join: care_plan__definition {
    view_label: "Care Plan: Definition"
    sql: LEFT JOIN UNNEST(${care_plan.definition}) as care_plan__definition ;;
    relationship: one_to_many
  }

  join: care_plan__identifier {
    view_label: "Care Plan: Identifier"
    sql: LEFT JOIN UNNEST(${care_plan.identifier}) as care_plan__identifier ;;
    relationship: one_to_many
  }

  join: care_plan__meta__profile {
    view_label: "Care Plan: Meta Profile"
    sql: LEFT JOIN UNNEST(${care_plan.meta__profile}) as care_plan__meta__profile ;;
    relationship: one_to_many
  }

  join: care_plan__meta__tag {
    view_label: "Care Plan: Meta Tag"
    sql: LEFT JOIN UNNEST(${care_plan.meta__tag}) as care_plan__meta__tag ;;
    relationship: one_to_many
  }

  join: care_plan__supporting_info {
    view_label: "Care Plan: Supportinginfo"
    sql: LEFT JOIN UNNEST(${care_plan.supporting_info}) as care_plan__supporting_info ;;
    relationship: one_to_many
  }

  join: care_plan__meta__security {
    view_label: "Care Plan: Meta Security"
    sql: LEFT JOIN UNNEST(${care_plan.meta__security}) as care_plan__meta__security ;;
    relationship: one_to_many
  }

  join: care_plan__category__coding {
    view_label: "Care Plan: Category Coding"
    sql: LEFT JOIN UNNEST(${care_plan__category.coding}) as care_plan__category__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__progress {
    view_label: "Care Plan: Activity Progress"
    sql: LEFT JOIN UNNEST(${care_plan__activity.progress}) as care_plan__activity__progress ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__goal {
    view_label: "Care Plan: Activity Detail Goal"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__goal}) as care_plan__activity__detail__goal ;;
    relationship: one_to_many
  }

  join: care_plan__identifier__type__coding {
    view_label: "Care Plan: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__identifier.type__coding}) as care_plan__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__reason_code {
    view_label: "Care Plan: Activity Detail Reasoncode"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__reason_code}) as care_plan__activity__detail__reason_code ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__code__coding {
    view_label: "Care Plan: Activity Detail Code Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__code__coding}) as care_plan__activity__detail__code__coding ;;
    relationship: one_to_many
  }

  join: care_plan__goal__identifier__type__coding {
    view_label: "Care Plan: Goal Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__goal.identifier__type__coding}) as care_plan__goal__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__outcome_reference {
    view_label: "Care Plan: Activity Outcomereference"
    sql: LEFT JOIN UNNEST(${care_plan__activity.outcome_reference}) as care_plan__activity__outcome_reference ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__performer {
    view_label: "Care Plan: Activity Detail Performer"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__performer}) as care_plan__activity__detail__performer ;;
    relationship: one_to_many
  }

  join: care_plan__part_of__identifier__type__coding {
    view_label: "Care Plan: Partof Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__part_of.identifier__type__coding}) as care_plan__part_of__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__author__identifier__type__coding {
    view_label: "Care Plan: Author Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__author.identifier__type__coding}) as care_plan__author__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__subject__identifier__type__coding {
    view_label: "Care Plan: Subject Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan.subject__identifier__type__coding}) as care_plan__subject__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__context__identifier__type__coding {
    view_label: "Care Plan: Context Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan.context__identifier__type__coding}) as care_plan__context__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__based_on__identifier__type__coding {
    view_label: "Care Plan: Basedon Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__based_on.identifier__type__coding}) as care_plan__based_on__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__outcome_codeable_concept {
    view_label: "Care Plan: Activity Outcomecodeableconcept"
    sql: LEFT JOIN UNNEST(${care_plan__activity.outcome_codeable_concept}) as care_plan__activity__outcome_codeable_concept ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__category__coding {
    view_label: "Care Plan: Activity Detail Category Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__category__coding}) as care_plan__activity__detail__category__coding ;;
    relationship: one_to_many
  }

  join: care_plan__care_team__identifier__type__coding {
    view_label: "Care Plan: Careteam Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__care_team.identifier__type__coding}) as care_plan__care_team__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__replaces__identifier__type__coding {
    view_label: "Care Plan: Replaces Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__replaces.identifier__type__coding}) as care_plan__replaces__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__addresses__identifier__type__coding {
    view_label: "Care Plan: Addresses Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__addresses.identifier__type__coding}) as care_plan__addresses__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__scheduled__timing__event {
    view_label: "Care Plan: Activity Detail Scheduled Timing Event"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__scheduled__timing__event}) as care_plan__activity__detail__scheduled__timing__event ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__reason_code__coding {
    view_label: "Care Plan: Activity Detail Reasoncode Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity__detail__reason_code.coding}) as care_plan__activity__detail__reason_code__coding ;;
    relationship: one_to_many
  }

  join: care_plan__definition__identifier__type__coding {
    view_label: "Care Plan: Definition Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__definition.identifier__type__coding}) as care_plan__definition__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__reason_reference {
    view_label: "Care Plan: Activity Detail Reasonreference"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__reason_reference}) as care_plan__activity__detail__reason_reference ;;
    relationship: one_to_many
  }

  join: care_plan__supporting_info__identifier__type__coding {
    view_label: "Care Plan: Supportinginfo Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__supporting_info.identifier__type__coding}) as care_plan__supporting_info__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__outcome_codeable_concept__coding {
    view_label: "Care Plan: Activity Outcomecodeableconcept Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity__outcome_codeable_concept.coding}) as care_plan__activity__outcome_codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__reference__identifier__type__coding {
    view_label: "Care Plan: Activity Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity.reference__identifier__type__coding}) as care_plan__activity__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__scheduled__timing__repeat__when {
    view_label: "Care Plan: Activity Detail Scheduled Timing Repeat When"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__scheduled__timing__repeat__when}) as care_plan__activity__detail__scheduled__timing__repeat__when ;;
    relationship: one_to_many
  }

  join: care_plan__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__identifier.assigner__identifier__type__coding}) as care_plan__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__goal__identifier__type__coding {
    view_label: "Care Plan: Activity Detail Goal Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity__detail__goal.identifier__type__coding}) as care_plan__activity__detail__goal__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__note__author__reference__identifier__type__coding {
    view_label: "Care Plan: Note Author Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__note.author__reference__identifier__type__coding}) as care_plan__note__author__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__scheduled__timing__code__coding {
    view_label: "Care Plan: Activity Detail Scheduled Timing Code Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__scheduled__timing__code__coding}) as care_plan__activity__detail__scheduled__timing__code__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__scheduled__timing__repeat__day_of_week {
    view_label: "Care Plan: Activity Detail Scheduled Timing Repeat Dayofweek"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__scheduled__timing__repeat__day_of_week}) as care_plan__activity__detail__scheduled__timing__repeat__day_of_week ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__scheduled__timing__repeat__time_of_day {
    view_label: "Care Plan: Activity Detail Scheduled Timing Repeat Timeofday"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__scheduled__timing__repeat__time_of_day}) as care_plan__activity__detail__scheduled__timing__repeat__time_of_day ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__product__codeable_concept__coding {
    view_label: "Care Plan: Activity Detail Product Codeableconcept Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__product__codeable_concept__coding}) as care_plan__activity__detail__product__codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__location__identifier__type__coding {
    view_label: "Care Plan: Activity Detail Location Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__location__identifier__type__coding}) as care_plan__activity__detail__location__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__goal__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Goal Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__goal.identifier__assigner__identifier__type__coding}) as care_plan__goal__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__outcome_reference__identifier__type__coding {
    view_label: "Care Plan: Activity Outcomereference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity__outcome_reference.identifier__type__coding}) as care_plan__activity__outcome_reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__performer__identifier__type__coding {
    view_label: "Care Plan: Activity Detail Performer Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity__detail__performer.identifier__type__coding}) as care_plan__activity__detail__performer__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__part_of__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Partof Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__part_of.identifier__assigner__identifier__type__coding}) as care_plan__part_of__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__definition__identifier__type__coding {
    view_label: "Care Plan: Activity Detail Definition Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__definition__identifier__type__coding}) as care_plan__activity__detail__definition__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__author__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Author Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__author.identifier__assigner__identifier__type__coding}) as care_plan__author__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__subject__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Subject Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan.subject__identifier__assigner__identifier__type__coding}) as care_plan__subject__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__context__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Context Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan.context__identifier__assigner__identifier__type__coding}) as care_plan__context__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__based_on__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Basedon Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__based_on.identifier__assigner__identifier__type__coding}) as care_plan__based_on__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__care_team__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Careteam Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__care_team.identifier__assigner__identifier__type__coding}) as care_plan__care_team__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__replaces__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Replaces Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__replaces.identifier__assigner__identifier__type__coding}) as care_plan__replaces__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__addresses__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Addresses Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__addresses.identifier__assigner__identifier__type__coding}) as care_plan__addresses__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__definition__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Definition Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__definition.identifier__assigner__identifier__type__coding}) as care_plan__definition__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__reason_reference__identifier__type__coding {
    view_label: "Care Plan: Activity Detail Reasonreference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity__detail__reason_reference.identifier__type__coding}) as care_plan__activity__detail__reason_reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__product__reference__identifier__type__coding {
    view_label: "Care Plan: Activity Detail Product Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__product__reference__identifier__type__coding}) as care_plan__activity__detail__product__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__progress__author__reference__identifier__type__coding {
    view_label: "Care Plan: Activity Progress Author Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity__progress.author__reference__identifier__type__coding}) as care_plan__activity__progress__author__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__supporting_info__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Supportinginfo Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__supporting_info.identifier__assigner__identifier__type__coding}) as care_plan__supporting_info__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__reference__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Activity Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity.reference__identifier__assigner__identifier__type__coding}) as care_plan__activity__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__goal__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Activity Detail Goal Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity__detail__goal.identifier__assigner__identifier__type__coding}) as care_plan__activity__detail__goal__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__note__author__reference__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Note Author Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__note.author__reference__identifier__assigner__identifier__type__coding}) as care_plan__note__author__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__location__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Activity Detail Location Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__location__identifier__assigner__identifier__type__coding}) as care_plan__activity__detail__location__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__outcome_reference__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Activity Outcomereference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity__outcome_reference.identifier__assigner__identifier__type__coding}) as care_plan__activity__outcome_reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__performer__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Activity Detail Performer Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity__detail__performer.identifier__assigner__identifier__type__coding}) as care_plan__activity__detail__performer__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__definition__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Activity Detail Definition Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__definition__identifier__assigner__identifier__type__coding}) as care_plan__activity__detail__definition__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__reason_reference__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Activity Detail Reasonreference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity__detail__reason_reference.identifier__assigner__identifier__type__coding}) as care_plan__activity__detail__reason_reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__detail__product__reference__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Activity Detail Product Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity.detail__product__reference__identifier__assigner__identifier__type__coding}) as care_plan__activity__detail__product__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: care_plan__activity__progress__author__reference__identifier__assigner__identifier__type__coding {
    view_label: "Care Plan: Activity Progress Author Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${care_plan__activity__progress.author__reference__identifier__assigner__identifier__type__coding}) as care_plan__activity__progress__author__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: encounter {
  join: encounter__type {
    view_label: "Encounter: Type"
    sql: LEFT JOIN UNNEST(${encounter.type}) as encounter__type ;;
    relationship: one_to_many
  }

  join: encounter__reason {
    view_label: "Encounter: Reason"
    sql: LEFT JOIN UNNEST(${encounter.reason}) as encounter__reason ;;
    relationship: one_to_many
  }

  join: encounter__account {
    view_label: "Encounter: Account"
    sql: LEFT JOIN UNNEST(${encounter.account}) as encounter__account ;;
    relationship: one_to_many
  }

  join: encounter__location {
    view_label: "Encounter: Location"
    sql: LEFT JOIN UNNEST(${encounter.location}) as encounter__location ;;
    relationship: one_to_many
  }

  join: encounter__diagnosis {
    view_label: "Encounter: Diagnosis"
    sql: LEFT JOIN UNNEST(${encounter.diagnosis}) as encounter__diagnosis ;;
    relationship: one_to_many
  }

  join: encounter__identifier {
    view_label: "Encounter: Identifier"
    sql: LEFT JOIN UNNEST(${encounter.identifier}) as encounter__identifier ;;
    relationship: one_to_many
  }

  join: encounter__participant {
    view_label: "Encounter: Participant"
    sql: LEFT JOIN UNNEST(${encounter.participant}) as encounter__participant ;;
    relationship: one_to_many
  }

  join: encounter__class_history {
    view_label: "Encounter: Classhistory"
    sql: LEFT JOIN UNNEST(${encounter.class_history}) as encounter__class_history ;;
    relationship: one_to_many
  }

  join: encounter__meta__profile {
    view_label: "Encounter: Meta Profile"
    sql: LEFT JOIN UNNEST(${encounter.meta__profile}) as encounter__meta__profile ;;
    relationship: one_to_many
  }

  join: encounter__episode_of_care {
    view_label: "Encounter: Episodeofcare"
    sql: LEFT JOIN UNNEST(${encounter.episode_of_care}) as encounter__episode_of_care ;;
    relationship: one_to_many
  }

  join: encounter__status_history {
    view_label: "Encounter: Statushistory"
    sql: LEFT JOIN UNNEST(${encounter.status_history}) as encounter__status_history ;;
    relationship: one_to_many
  }

  join: encounter__meta__tag {
    view_label: "Encounter: Meta Tag"
    sql: LEFT JOIN UNNEST(${encounter.meta__tag}) as encounter__meta__tag ;;
    relationship: one_to_many
  }

  join: encounter__type__coding {
    view_label: "Encounter: Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__type.coding}) as encounter__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__incoming_referral {
    view_label: "Encounter: Incomingreferral"
    sql: LEFT JOIN UNNEST(${encounter.incoming_referral}) as encounter__incoming_referral ;;
    relationship: one_to_many
  }

  join: encounter__reason__coding {
    view_label: "Encounter: Reason Coding"
    sql: LEFT JOIN UNNEST(${encounter__reason.coding}) as encounter__reason__coding ;;
    relationship: one_to_many
  }

  join: encounter__meta__security {
    view_label: "Encounter: Meta Security"
    sql: LEFT JOIN UNNEST(${encounter.meta__security}) as encounter__meta__security ;;
    relationship: one_to_many
  }

  join: encounter__priority__coding {
    view_label: "Encounter: Priority Coding"
    sql: LEFT JOIN UNNEST(${encounter.priority__coding}) as encounter__priority__coding ;;
    relationship: one_to_many
  }

  join: encounter__participant__type {
    view_label: "Encounter: Participant Type"
    sql: LEFT JOIN UNNEST(${encounter__participant.type}) as encounter__participant__type ;;
    relationship: one_to_many
  }

  join: encounter__diagnosis__role__coding {
    view_label: "Encounter: Diagnosis Role Coding"
    sql: LEFT JOIN UNNEST(${encounter__diagnosis.role__coding}) as encounter__diagnosis__role__coding ;;
    relationship: one_to_many
  }

  join: encounter__identifier__type__coding {
    view_label: "Encounter: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__identifier.type__coding}) as encounter__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__participant__type__coding {
    view_label: "Encounter: Participant Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__participant__type.coding}) as encounter__participant__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__part_of__identifier__type__coding {
    view_label: "Encounter: Partof Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.part_of__identifier__type__coding}) as encounter__part_of__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__subject__identifier__type__coding {
    view_label: "Encounter: Subject Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.subject__identifier__type__coding}) as encounter__subject__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__diet_preference {
    view_label: "Encounter: Hospitalization Dietpreference"
    sql: LEFT JOIN UNNEST(${encounter.hospitalization__diet_preference}) as encounter__hospitalization__diet_preference ;;
    relationship: one_to_many
  }

  join: encounter__account__identifier__type__coding {
    view_label: "Encounter: Account Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__account.identifier__type__coding}) as encounter__account__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__special_courtesy {
    view_label: "Encounter: Hospitalization Specialcourtesy"
    sql: LEFT JOIN UNNEST(${encounter.hospitalization__special_courtesy}) as encounter__hospitalization__special_courtesy ;;
    relationship: one_to_many
  }

  join: encounter__appointment__identifier__type__coding {
    view_label: "Encounter: Appointment Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.appointment__identifier__type__coding}) as encounter__appointment__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__special_arrangement {
    view_label: "Encounter: Hospitalization Specialarrangement"
    sql: LEFT JOIN UNNEST(${encounter.hospitalization__special_arrangement}) as encounter__hospitalization__special_arrangement ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__re_admission__coding {
    view_label: "Encounter: Hospitalization Readmission Coding"
    sql: LEFT JOIN UNNEST(${encounter.hospitalization__re_admission__coding}) as encounter__hospitalization__re_admission__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__admit_source__coding {
    view_label: "Encounter: Hospitalization Admitsource Coding"
    sql: LEFT JOIN UNNEST(${encounter.hospitalization__admit_source__coding}) as encounter__hospitalization__admit_source__coding ;;
    relationship: one_to_many
  }

  join: encounter__episode_of_care__identifier__type__coding {
    view_label: "Encounter: Episodeofcare Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__episode_of_care.identifier__type__coding}) as encounter__episode_of_care__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__diet_preference__coding {
    view_label: "Encounter: Hospitalization Dietpreference Coding"
    sql: LEFT JOIN UNNEST(${encounter__hospitalization__diet_preference.coding}) as encounter__hospitalization__diet_preference__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__special_courtesy__coding {
    view_label: "Encounter: Hospitalization Specialcourtesy Coding"
    sql: LEFT JOIN UNNEST(${encounter__hospitalization__special_courtesy.coding}) as encounter__hospitalization__special_courtesy__coding ;;
    relationship: one_to_many
  }

  join: encounter__service_provider__identifier__type__coding {
    view_label: "Encounter: Serviceprovider Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.service_provider__identifier__type__coding}) as encounter__service_provider__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__incoming_referral__identifier__type__coding {
    view_label: "Encounter: Incomingreferral Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__incoming_referral.identifier__type__coding}) as encounter__incoming_referral__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__location__location__identifier__type__coding {
    view_label: "Encounter: Location Location Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__location.location__identifier__type__coding}) as encounter__location__location__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__special_arrangement__coding {
    view_label: "Encounter: Hospitalization Specialarrangement Coding"
    sql: LEFT JOIN UNNEST(${encounter__hospitalization__special_arrangement.coding}) as encounter__hospitalization__special_arrangement__coding ;;
    relationship: one_to_many
  }

  join: encounter__identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__identifier.assigner__identifier__type__coding}) as encounter__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__diagnosis__condition__identifier__type__coding {
    view_label: "Encounter: Diagnosis Condition Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__diagnosis.condition__identifier__type__coding}) as encounter__diagnosis__condition__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__discharge_disposition__coding {
    view_label: "Encounter: Hospitalization Dischargedisposition Coding"
    sql: LEFT JOIN UNNEST(${encounter.hospitalization__discharge_disposition__coding}) as encounter__hospitalization__discharge_disposition__coding ;;
    relationship: one_to_many
  }

  join: encounter__participant__individual__identifier__type__coding {
    view_label: "Encounter: Participant Individual Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__participant.individual__identifier__type__coding}) as encounter__participant__individual__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__origin__identifier__type__coding {
    view_label: "Encounter: Hospitalization Origin Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.hospitalization__origin__identifier__type__coding}) as encounter__hospitalization__origin__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__part_of__identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Partof Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.part_of__identifier__assigner__identifier__type__coding}) as encounter__part_of__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__subject__identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Subject Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.subject__identifier__assigner__identifier__type__coding}) as encounter__subject__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__destination__identifier__type__coding {
    view_label: "Encounter: Hospitalization Destination Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.hospitalization__destination__identifier__type__coding}) as encounter__hospitalization__destination__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__pre_admission_identifier__type__coding {
    view_label: "Encounter: Hospitalization Preadmissionidentifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.hospitalization__pre_admission_identifier__type__coding}) as encounter__hospitalization__pre_admission_identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__account__identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Account Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__account.identifier__assigner__identifier__type__coding}) as encounter__account__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__appointment__identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Appointment Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.appointment__identifier__assigner__identifier__type__coding}) as encounter__appointment__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__episode_of_care__identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Episodeofcare Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__episode_of_care.identifier__assigner__identifier__type__coding}) as encounter__episode_of_care__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__service_provider__identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Serviceprovider Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.service_provider__identifier__assigner__identifier__type__coding}) as encounter__service_provider__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__incoming_referral__identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Incomingreferral Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__incoming_referral.identifier__assigner__identifier__type__coding}) as encounter__incoming_referral__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__location__location__identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Location Location Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__location.location__identifier__assigner__identifier__type__coding}) as encounter__location__location__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__diagnosis__condition__identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Diagnosis Condition Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__diagnosis.condition__identifier__assigner__identifier__type__coding}) as encounter__diagnosis__condition__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__participant__individual__identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Participant Individual Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter__participant.individual__identifier__assigner__identifier__type__coding}) as encounter__participant__individual__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__origin__identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Hospitalization Origin Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.hospitalization__origin__identifier__assigner__identifier__type__coding}) as encounter__hospitalization__origin__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__destination__identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Hospitalization Destination Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.hospitalization__destination__identifier__assigner__identifier__type__coding}) as encounter__hospitalization__destination__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__pre_admission_identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Hospitalization Preadmissionidentifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.hospitalization__pre_admission_identifier__assigner__identifier__type__coding}) as encounter__hospitalization__pre_admission_identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: encounter__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__type__coding {
    view_label: "Encounter: Hospitalization Preadmissionidentifier Assigner Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${encounter.hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__type__coding}) as encounter__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: explanation_of_benefit {
  join: explanation_of_benefit__item {
    view_label: "Explanation Of Benefit: Item"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.item}) as explanation_of_benefit__item ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__sub_type {
    view_label: "Explanation Of Benefit: Subtype"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.sub_type}) as explanation_of_benefit__sub_type ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item {
    view_label: "Explanation Of Benefit: Additem"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.add_item}) as explanation_of_benefit__add_item ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__related {
    view_label: "Explanation Of Benefit: Related"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.related}) as explanation_of_benefit__related ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__care_team {
    view_label: "Explanation Of Benefit: Careteam"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.care_team}) as explanation_of_benefit__care_team ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__diagnosis {
    view_label: "Explanation Of Benefit: Diagnosis"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.diagnosis}) as explanation_of_benefit__diagnosis ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__procedure {
    view_label: "Explanation Of Benefit: Procedure"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.procedure}) as explanation_of_benefit__procedure ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__identifier {
    view_label: "Explanation Of Benefit: Identifier"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.identifier}) as explanation_of_benefit__identifier ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__process_note {
    view_label: "Explanation Of Benefit: Processnote"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.process_note}) as explanation_of_benefit__process_note ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__information {
    view_label: "Explanation Of Benefit: Information"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.information}) as explanation_of_benefit__information ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__meta__profile {
    view_label: "Explanation Of Benefit: Meta Profile"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.meta__profile}) as explanation_of_benefit__meta__profile ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__meta__tag {
    view_label: "Explanation Of Benefit: Meta Tag"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.meta__tag}) as explanation_of_benefit__meta__tag ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__benefit_balance {
    view_label: "Explanation Of Benefit: Benefitbalance"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.benefit_balance}) as explanation_of_benefit__benefit_balance ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__note_number {
    view_label: "Explanation Of Benefit: Item Notenumber"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.note_number}) as explanation_of_benefit__item__note_number ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__type__coding {
    view_label: "Explanation Of Benefit: Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.type__coding}) as explanation_of_benefit__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__udi {
    view_label: "Explanation Of Benefit: Item Udi"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.udi}) as explanation_of_benefit__item__udi ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__form__coding {
    view_label: "Explanation Of Benefit: Form Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.form__coding}) as explanation_of_benefit__form__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__sub_site {
    view_label: "Explanation Of Benefit: Item Subsite"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.sub_site}) as explanation_of_benefit__item__sub_site ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__modifier {
    view_label: "Explanation Of Benefit: Item Modifier"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.modifier}) as explanation_of_benefit__item__modifier ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail {
    view_label: "Explanation Of Benefit: Item Detail"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.detail}) as explanation_of_benefit__item__detail ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__meta__security {
    view_label: "Explanation Of Benefit: Meta Security"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.meta__security}) as explanation_of_benefit__meta__security ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__note_number {
    view_label: "Explanation Of Benefit: Additem Notenumber"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item.note_number}) as explanation_of_benefit__add_item__note_number ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__care_team_link_id {
    view_label: "Explanation Of Benefit: Item Careteamlinkid"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.care_team_link_id}) as explanation_of_benefit__item__care_team_link_id ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__diagnosis__type {
    view_label: "Explanation Of Benefit: Diagnosis Type"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__diagnosis.type}) as explanation_of_benefit__diagnosis__type ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__sub_type__coding {
    view_label: "Explanation Of Benefit: Subtype Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__sub_type.coding}) as explanation_of_benefit__sub_type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__outcome__coding {
    view_label: "Explanation Of Benefit: Outcome Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.outcome__coding}) as explanation_of_benefit__outcome__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__insurance__pre_auth_ref {
    view_label: "Explanation Of Benefit: Insurance Preauthref"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.insurance__pre_auth_ref}) as explanation_of_benefit__insurance__pre_auth_ref ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__procedure_link_id {
    view_label: "Explanation Of Benefit: Item Procedurelinkid"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.procedure_link_id}) as explanation_of_benefit__item__procedure_link_id ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__diagnosis_link_id {
    view_label: "Explanation Of Benefit: Item Diagnosislinkid"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.diagnosis_link_id}) as explanation_of_benefit__item__diagnosis_link_id ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__program_code {
    view_label: "Explanation Of Benefit: Item Programcode"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.program_code}) as explanation_of_benefit__item__program_code ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__modifier {
    view_label: "Explanation Of Benefit: Additem Modifier"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item.modifier}) as explanation_of_benefit__add_item__modifier ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__payee__type__coding {
    view_label: "Explanation Of Benefit: Payee Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.payee__type__coding}) as explanation_of_benefit__payee__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__information_link_id {
    view_label: "Explanation Of Benefit: Item Informationlinkid"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.information_link_id}) as explanation_of_benefit__item__information_link_id ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__encounter {
    view_label: "Explanation Of Benefit: Item Encounter"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.encounter}) as explanation_of_benefit__item__encounter ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__note_number {
    view_label: "Explanation Of Benefit: Item Detail Notenumber"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail.note_number}) as explanation_of_benefit__item__detail__note_number ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__sequence_link_id {
    view_label: "Explanation Of Benefit: Additem Sequencelinkid"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item.sequence_link_id}) as explanation_of_benefit__add_item__sequence_link_id ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__adjudication {
    view_label: "Explanation Of Benefit: Item Adjudication"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.adjudication}) as explanation_of_benefit__item__adjudication ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__udi {
    view_label: "Explanation Of Benefit: Item Detail Udi"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail.udi}) as explanation_of_benefit__item__detail__udi ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__detail {
    view_label: "Explanation Of Benefit: Additem Detail"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item.detail}) as explanation_of_benefit__add_item__detail ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__payment__type__coding {
    view_label: "Explanation Of Benefit: Payment Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.payment__type__coding}) as explanation_of_benefit__payment__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__revenue__coding {
    view_label: "Explanation Of Benefit: Item Revenue Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.revenue__coding}) as explanation_of_benefit__item__revenue__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__service__coding {
    view_label: "Explanation Of Benefit: Item Service Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.service__coding}) as explanation_of_benefit__item__service__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__sub_site__coding {
    view_label: "Explanation Of Benefit: Item Subsite Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__sub_site.coding}) as explanation_of_benefit__item__sub_site__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__care_team__role__coding {
    view_label: "Explanation Of Benefit: Careteam Role Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__care_team.role__coding}) as explanation_of_benefit__care_team__role__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__modifier__coding {
    view_label: "Explanation Of Benefit: Item Modifier Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__modifier.coding}) as explanation_of_benefit__item__modifier__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__body_site__coding {
    view_label: "Explanation Of Benefit: Item Bodysite Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.body_site__coding}) as explanation_of_benefit__item__body_site__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__modifier {
    view_label: "Explanation Of Benefit: Item Detail Modifier"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail.modifier}) as explanation_of_benefit__item__detail__modifier ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__category__coding {
    view_label: "Explanation Of Benefit: Item Category Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.category__coding}) as explanation_of_benefit__item__category__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__accident__type__coding {
    view_label: "Explanation Of Benefit: Accident Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.accident__type__coding}) as explanation_of_benefit__accident__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__detail__note_number {
    view_label: "Explanation Of Benefit: Additem Detail Notenumber"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item__detail.note_number}) as explanation_of_benefit__add_item__detail__note_number ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__location__address__line {
    view_label: "Explanation Of Benefit: Item Location Address Line"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.location__address__line}) as explanation_of_benefit__item__location__address__line ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__diagnosis__type__coding {
    view_label: "Explanation Of Benefit: Diagnosis Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__diagnosis__type.coding}) as explanation_of_benefit__diagnosis__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__adjudication {
    view_label: "Explanation Of Benefit: Additem Adjudication"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item.adjudication}) as explanation_of_benefit__add_item__adjudication ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__identifier__type__coding {
    view_label: "Explanation Of Benefit: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__identifier.type__coding}) as explanation_of_benefit__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__revenue__coding {
    view_label: "Explanation Of Benefit: Additem Revenue Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item.revenue__coding}) as explanation_of_benefit__add_item__revenue__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__service__coding {
    view_label: "Explanation Of Benefit: Additem Service Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item.service__coding}) as explanation_of_benefit__add_item__service__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__process_note__type__coding {
    view_label: "Explanation Of Benefit: Processnote Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__process_note.type__coding}) as explanation_of_benefit__process_note__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__program_code__coding {
    view_label: "Explanation Of Benefit: Item Programcode Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__program_code.coding}) as explanation_of_benefit__item__program_code__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__program_code {
    view_label: "Explanation Of Benefit: Item Detail Programcode"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail.program_code}) as explanation_of_benefit__item__detail__program_code ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail {
    view_label: "Explanation Of Benefit: Item Detail Subdetail"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail.sub_detail}) as explanation_of_benefit__item__detail__sub_detail ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__type__coding {
    view_label: "Explanation Of Benefit: Item Detail Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail.type__coding}) as explanation_of_benefit__item__detail__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__modifier__coding {
    view_label: "Explanation Of Benefit: Additem Modifier Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item__modifier.coding}) as explanation_of_benefit__add_item__modifier__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__detail__modifier {
    view_label: "Explanation Of Benefit: Additem Detail Modifier"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item__detail.modifier}) as explanation_of_benefit__add_item__detail__modifier ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__category__coding {
    view_label: "Explanation Of Benefit: Additem Category Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item.category__coding}) as explanation_of_benefit__add_item__category__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__information__code__coding {
    view_label: "Explanation Of Benefit: Information Code Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__information.code__coding}) as explanation_of_benefit__information__code__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__payee__resource_type__coding {
    view_label: "Explanation Of Benefit: Payee Resourcetype Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.payee__resource_type__coding}) as explanation_of_benefit__payee__resource_type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__adjudication {
    view_label: "Explanation Of Benefit: Item Detail Adjudication"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail.adjudication}) as explanation_of_benefit__item__detail__adjudication ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__accident__location__address__line {
    view_label: "Explanation Of Benefit: Accident Location Address Line"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.accident__location__address__line}) as explanation_of_benefit__accident__location__address__line ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__revenue__coding {
    view_label: "Explanation Of Benefit: Item Detail Revenue Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail.revenue__coding}) as explanation_of_benefit__item__detail__revenue__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__service__coding {
    view_label: "Explanation Of Benefit: Item Detail Service Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail.service__coding}) as explanation_of_benefit__item__detail__service__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__benefit_balance__unit__coding {
    view_label: "Explanation Of Benefit: Benefitbalance Unit Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__benefit_balance.unit__coding}) as explanation_of_benefit__benefit_balance__unit__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__benefit_balance__term__coding {
    view_label: "Explanation Of Benefit: Benefitbalance Term Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__benefit_balance.term__coding}) as explanation_of_benefit__benefit_balance__term__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__process_note__language__coding {
    view_label: "Explanation Of Benefit: Processnote Language Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__process_note.language__coding}) as explanation_of_benefit__process_note__language__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__modifier__coding {
    view_label: "Explanation Of Benefit: Item Detail Modifier Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__modifier.coding}) as explanation_of_benefit__item__detail__modifier__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__note_number {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Notenumber"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail.note_number}) as explanation_of_benefit__item__detail__sub_detail__note_number ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__category__coding {
    view_label: "Explanation Of Benefit: Item Detail Category Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail.category__coding}) as explanation_of_benefit__item__detail__category__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__related__relationship__coding {
    view_label: "Explanation Of Benefit: Related Relationship Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__related.relationship__coding}) as explanation_of_benefit__related__relationship__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__information__category__coding {
    view_label: "Explanation Of Benefit: Information Category Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__information.category__coding}) as explanation_of_benefit__information__category__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__claim__identifier__type__coding {
    view_label: "Explanation Of Benefit: Claim Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.claim__identifier__type__coding}) as explanation_of_benefit__claim__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__udi {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Udi"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail.udi}) as explanation_of_benefit__item__detail__sub_detail__udi ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__diagnosis__package_code__coding {
    view_label: "Explanation Of Benefit: Diagnosis Packagecode Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__diagnosis.package_code__coding}) as explanation_of_benefit__diagnosis__package_code__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__detail__adjudication {
    view_label: "Explanation Of Benefit: Additem Detail Adjudication"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item__detail.adjudication}) as explanation_of_benefit__add_item__detail__adjudication ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__care_team__qualification__coding {
    view_label: "Explanation Of Benefit: Careteam Qualification Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__care_team.qualification__coding}) as explanation_of_benefit__care_team__qualification__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__benefit_balance__financial {
    view_label: "Explanation Of Benefit: Benefitbalance Financial"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__benefit_balance.financial}) as explanation_of_benefit__benefit_balance__financial ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__benefit_balance__network__coding {
    view_label: "Explanation Of Benefit: Benefitbalance Network Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__benefit_balance.network__coding}) as explanation_of_benefit__benefit_balance__network__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__detail__revenue__coding {
    view_label: "Explanation Of Benefit: Additem Detail Revenue Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item__detail.revenue__coding}) as explanation_of_benefit__add_item__detail__revenue__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__detail__service__coding {
    view_label: "Explanation Of Benefit: Additem Detail Service Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item__detail.service__coding}) as explanation_of_benefit__add_item__detail__service__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__related__reference__type__coding {
    view_label: "Explanation Of Benefit: Related Reference Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__related.reference__type__coding}) as explanation_of_benefit__related__reference__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__enterer__identifier__type__coding {
    view_label: "Explanation Of Benefit: Enterer Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.enterer__identifier__type__coding}) as explanation_of_benefit__enterer__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__payment__identifier__type__coding {
    view_label: "Explanation Of Benefit: Payment Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.payment__identifier__type__coding}) as explanation_of_benefit__payment__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__program_code__coding {
    view_label: "Explanation Of Benefit: Item Detail Programcode Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__program_code.coding}) as explanation_of_benefit__item__detail__program_code__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__modifier {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Modifier"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail.modifier}) as explanation_of_benefit__item__detail__sub_detail__modifier ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__benefit_balance__category__coding {
    view_label: "Explanation Of Benefit: Benefitbalance Category Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__benefit_balance.category__coding}) as explanation_of_benefit__benefit_balance__category__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__detail__modifier__coding {
    view_label: "Explanation Of Benefit: Additem Detail Modifier Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item__detail__modifier.coding}) as explanation_of_benefit__add_item__detail__modifier__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__detail__category__coding {
    view_label: "Explanation Of Benefit: Additem Detail Category Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item__detail.category__coding}) as explanation_of_benefit__add_item__detail__category__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__insurer__identifier__type__coding {
    view_label: "Explanation Of Benefit: Insurer Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.insurer__identifier__type__coding}) as explanation_of_benefit__insurer__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__patient__identifier__type__coding {
    view_label: "Explanation Of Benefit: Patient Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.patient__identifier__type__coding}) as explanation_of_benefit__patient__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__payment__adjustment_reason__coding {
    view_label: "Explanation Of Benefit: Payment Adjustmentreason Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.payment__adjustment_reason__coding}) as explanation_of_benefit__payment__adjustment_reason__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__adjudication__reason__coding {
    view_label: "Explanation Of Benefit: Item Adjudication Reason Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__adjudication.reason__coding}) as explanation_of_benefit__item__adjudication__reason__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__udi__identifier__type__coding {
    view_label: "Explanation Of Benefit: Item Udi Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__udi.identifier__type__coding}) as explanation_of_benefit__item__udi__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__provider__identifier__type__coding {
    view_label: "Explanation Of Benefit: Provider Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.provider__identifier__type__coding}) as explanation_of_benefit__provider__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__referral__identifier__type__coding {
    view_label: "Explanation Of Benefit: Referral Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.referral__identifier__type__coding}) as explanation_of_benefit__referral__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__facility__identifier__type__coding {
    view_label: "Explanation Of Benefit: Facility Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.facility__identifier__type__coding}) as explanation_of_benefit__facility__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__adjudication__category__coding {
    view_label: "Explanation Of Benefit: Item Adjudication Category Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__adjudication.category__coding}) as explanation_of_benefit__item__adjudication__category__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__program_code {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Programcode"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail.program_code}) as explanation_of_benefit__item__detail__sub_detail__program_code ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__type__coding {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail.type__coding}) as explanation_of_benefit__item__detail__sub_detail__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__benefit_balance__sub_category__coding {
    view_label: "Explanation Of Benefit: Benefitbalance Subcategory Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__benefit_balance.sub_category__coding}) as explanation_of_benefit__benefit_balance__sub_category__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__payee__party__identifier__type__coding {
    view_label: "Explanation Of Benefit: Payee Party Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.payee__party__identifier__type__coding}) as explanation_of_benefit__payee__party__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__adjudication__reason__coding {
    view_label: "Explanation Of Benefit: Additem Adjudication Reason Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item__adjudication.reason__coding}) as explanation_of_benefit__add_item__adjudication__reason__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__adjudication {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Adjudication"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail.adjudication}) as explanation_of_benefit__item__detail__sub_detail__adjudication ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__prescription__identifier__type__coding {
    view_label: "Explanation Of Benefit: Prescription Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.prescription__identifier__type__coding}) as explanation_of_benefit__prescription__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__organization__identifier__type__coding {
    view_label: "Explanation Of Benefit: Organization Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.organization__identifier__type__coding}) as explanation_of_benefit__organization__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__claim_response__identifier__type__coding {
    view_label: "Explanation Of Benefit: Claimresponse Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.claim_response__identifier__type__coding}) as explanation_of_benefit__claim_response__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__location__codeable_concept__coding {
    view_label: "Explanation Of Benefit: Item Location Codeableconcept Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.location__codeable_concept__coding}) as explanation_of_benefit__item__location__codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__revenue__coding {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Revenue Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail.revenue__coding}) as explanation_of_benefit__item__detail__sub_detail__revenue__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__service__coding {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Service Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail.service__coding}) as explanation_of_benefit__item__detail__sub_detail__service__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__benefit_balance__financial__type__coding {
    view_label: "Explanation Of Benefit: Benefitbalance Financial Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__benefit_balance__financial.type__coding}) as explanation_of_benefit__benefit_balance__financial__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__adjudication__category__coding {
    view_label: "Explanation Of Benefit: Additem Adjudication Category Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item__adjudication.category__coding}) as explanation_of_benefit__add_item__adjudication__category__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__related__claim__identifier__type__coding {
    view_label: "Explanation Of Benefit: Related Claim Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__related.claim__identifier__type__coding}) as explanation_of_benefit__related__claim__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__encounter__identifier__type__coding {
    view_label: "Explanation Of Benefit: Item Encounter Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__encounter.identifier__type__coding}) as explanation_of_benefit__item__encounter__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__modifier__coding {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Modifier Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail__modifier.coding}) as explanation_of_benefit__item__detail__sub_detail__modifier__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__category__coding {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Category Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail.category__coding}) as explanation_of_benefit__item__detail__sub_detail__category__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__adjudication__reason__coding {
    view_label: "Explanation Of Benefit: Item Detail Adjudication Reason Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__adjudication.reason__coding}) as explanation_of_benefit__item__detail__adjudication__reason__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__udi__identifier__type__coding {
    view_label: "Explanation Of Benefit: Item Detail Udi Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__udi.identifier__type__coding}) as explanation_of_benefit__item__detail__udi__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__care_team__provider__identifier__type__coding {
    view_label: "Explanation Of Benefit: Careteam Provider Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__care_team.provider__identifier__type__coding}) as explanation_of_benefit__care_team__provider__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__program_code__coding {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Programcode Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail__program_code.coding}) as explanation_of_benefit__item__detail__sub_detail__program_code__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__adjudication__category__coding {
    view_label: "Explanation Of Benefit: Item Detail Adjudication Category Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__adjudication.category__coding}) as explanation_of_benefit__item__detail__adjudication__category__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__insurance__coverage__identifier__type__coding {
    view_label: "Explanation Of Benefit: Insurance Coverage Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.insurance__coverage__identifier__type__coding}) as explanation_of_benefit__insurance__coverage__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__detail__adjudication__reason__coding {
    view_label: "Explanation Of Benefit: Additem Detail Adjudication Reason Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item__detail__adjudication.reason__coding}) as explanation_of_benefit__add_item__detail__adjudication__reason__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__identifier.assigner__identifier__type__coding}) as explanation_of_benefit__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__diagnosis__diagnosis__codeable_concept__coding {
    view_label: "Explanation Of Benefit: Diagnosis Diagnosis Codeableconcept Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__diagnosis.diagnosis__codeable_concept__coding}) as explanation_of_benefit__diagnosis__diagnosis__codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__procedure__procedure__codeable_concept__coding {
    view_label: "Explanation Of Benefit: Procedure Procedure Codeableconcept Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__procedure.procedure__codeable_concept__coding}) as explanation_of_benefit__procedure__procedure__codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__add_item__detail__adjudication__category__coding {
    view_label: "Explanation Of Benefit: Additem Detail Adjudication Category Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__add_item__detail__adjudication.category__coding}) as explanation_of_benefit__add_item__detail__adjudication__category__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__original_prescription__identifier__type__coding {
    view_label: "Explanation Of Benefit: Originalprescription Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.original_prescription__identifier__type__coding}) as explanation_of_benefit__original_prescription__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__location__reference__identifier__type__coding {
    view_label: "Explanation Of Benefit: Item Location Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.location__reference__identifier__type__coding}) as explanation_of_benefit__item__location__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__claim__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Claim Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.claim__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__claim__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__adjudication__reason__coding {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Adjudication Reason Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail__adjudication.reason__coding}) as explanation_of_benefit__item__detail__sub_detail__adjudication__reason__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__udi__identifier__type__coding {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Udi Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail__udi.identifier__type__coding}) as explanation_of_benefit__item__detail__sub_detail__udi__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__related__reference__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Related Reference Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__related.reference__assigner__identifier__type__coding}) as explanation_of_benefit__related__reference__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__enterer__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Enterer Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.enterer__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__enterer__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__payment__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Payment Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.payment__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__payment__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__adjudication__category__coding {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Adjudication Category Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail__adjudication.category__coding}) as explanation_of_benefit__item__detail__sub_detail__adjudication__category__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__accident__location__reference__identifier__type__coding {
    view_label: "Explanation Of Benefit: Accident Location Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.accident__location__reference__identifier__type__coding}) as explanation_of_benefit__accident__location__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__insurer__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Insurer Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.insurer__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__insurer__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__patient__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Patient Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.patient__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__patient__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__information__value__reference__identifier__type__coding {
    view_label: "Explanation Of Benefit: Information Value Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__information.value__reference__identifier__type__coding}) as explanation_of_benefit__information__value__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__udi__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Item Udi Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__udi.identifier__assigner__identifier__type__coding}) as explanation_of_benefit__item__udi__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__provider__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Provider Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.provider__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__provider__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__referral__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Referral Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.referral__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__referral__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__facility__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Facility Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.facility__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__facility__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__diagnosis__diagnosis__reference__identifier__type__coding {
    view_label: "Explanation Of Benefit: Diagnosis Diagnosis Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__diagnosis.diagnosis__reference__identifier__type__coding}) as explanation_of_benefit__diagnosis__diagnosis__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__procedure__procedure__reference__identifier__type__coding {
    view_label: "Explanation Of Benefit: Procedure Procedure Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__procedure.procedure__reference__identifier__type__coding}) as explanation_of_benefit__procedure__procedure__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__payee__party__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Payee Party Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.payee__party__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__payee__party__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__prescription__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Prescription Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.prescription__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__prescription__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__organization__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Organization Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.organization__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__organization__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__claim_response__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Claimresponse Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.claim_response__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__claim_response__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__related__claim__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Related Claim Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__related.claim__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__related__claim__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__encounter__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Item Encounter Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__encounter.identifier__assigner__identifier__type__coding}) as explanation_of_benefit__item__encounter__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__udi__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Item Detail Udi Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__udi.identifier__assigner__identifier__type__coding}) as explanation_of_benefit__item__detail__udi__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__care_team__provider__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Careteam Provider Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__care_team.provider__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__care_team__provider__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__insurance__coverage__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Insurance Coverage Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.insurance__coverage__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__insurance__coverage__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__original_prescription__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Originalprescription Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.original_prescription__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__original_prescription__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__location__reference__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Item Location Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item.location__reference__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__item__location__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__item__detail__sub_detail__udi__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Item Detail Subdetail Udi Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__item__detail__sub_detail__udi.identifier__assigner__identifier__type__coding}) as explanation_of_benefit__item__detail__sub_detail__udi__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__related__reference__assigner__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Related Reference Assigner Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__related.reference__assigner__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__related__reference__assigner__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__accident__location__reference__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Accident Location Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit.accident__location__reference__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__accident__location__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__information__value__reference__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Information Value Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__information.value__reference__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__information__value__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__diagnosis__diagnosis__reference__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Diagnosis Diagnosis Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__diagnosis.diagnosis__reference__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__diagnosis__diagnosis__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: explanation_of_benefit__procedure__procedure__reference__identifier__assigner__identifier__type__coding {
    view_label: "Explanation Of Benefit: Procedure Procedure Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${explanation_of_benefit__procedure.procedure__reference__identifier__assigner__identifier__type__coding}) as explanation_of_benefit__procedure__procedure__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: claim {
  join: claim__item {
    view_label: "Claim: Item"
    sql: LEFT JOIN UNNEST(${claim.item}) as claim__item ;;
    relationship: one_to_many
  }

  join: claim__related {
    view_label: "Claim: Related"
    sql: LEFT JOIN UNNEST(${claim.related}) as claim__related ;;
    relationship: one_to_many
  }

  join: claim__sub_type {
    view_label: "Claim: Subtype"
    sql: LEFT JOIN UNNEST(${claim.sub_type}) as claim__sub_type ;;
    relationship: one_to_many
  }

  join: claim__care_team {
    view_label: "Claim: Careteam"
    sql: LEFT JOIN UNNEST(${claim.care_team}) as claim__care_team ;;
    relationship: one_to_many
  }

  join: claim__insurance {
    view_label: "Claim: Insurance"
    sql: LEFT JOIN UNNEST(${claim.insurance}) as claim__insurance ;;
    relationship: one_to_many
  }

  join: claim__diagnosis {
    view_label: "Claim: Diagnosis"
    sql: LEFT JOIN UNNEST(${claim.diagnosis}) as claim__diagnosis ;;
    relationship: one_to_many
  }

  join: claim__procedure {
    view_label: "Claim: Procedure"
    sql: LEFT JOIN UNNEST(${claim.procedure}) as claim__procedure ;;
    relationship: one_to_many
  }

  join: claim__identifier {
    view_label: "Claim: Identifier"
    sql: LEFT JOIN UNNEST(${claim.identifier}) as claim__identifier ;;
    relationship: one_to_many
  }

  join: claim__information {
    view_label: "Claim: Information"
    sql: LEFT JOIN UNNEST(${claim.information}) as claim__information ;;
    relationship: one_to_many
  }

  join: claim__meta__profile {
    view_label: "Claim: Meta Profile"
    sql: LEFT JOIN UNNEST(${claim.meta__profile}) as claim__meta__profile ;;
    relationship: one_to_many
  }

  join: claim__meta__tag {
    view_label: "Claim: Meta Tag"
    sql: LEFT JOIN UNNEST(${claim.meta__tag}) as claim__meta__tag ;;
    relationship: one_to_many
  }

  join: claim__type__coding {
    view_label: "Claim: Type Coding"
    sql: LEFT JOIN UNNEST(${claim.type__coding}) as claim__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__udi {
    view_label: "Claim: Item Udi"
    sql: LEFT JOIN UNNEST(${claim__item.udi}) as claim__item__udi ;;
    relationship: one_to_many
  }

  join: claim__item__sub_site {
    view_label: "Claim: Item Subsite"
    sql: LEFT JOIN UNNEST(${claim__item.sub_site}) as claim__item__sub_site ;;
    relationship: one_to_many
  }

  join: claim__item__modifier {
    view_label: "Claim: Item Modifier"
    sql: LEFT JOIN UNNEST(${claim__item.modifier}) as claim__item__modifier ;;
    relationship: one_to_many
  }

  join: claim__item__detail {
    view_label: "Claim: Item Detail"
    sql: LEFT JOIN UNNEST(${claim__item.detail}) as claim__item__detail ;;
    relationship: one_to_many
  }

  join: claim__meta__security {
    view_label: "Claim: Meta Security"
    sql: LEFT JOIN UNNEST(${claim.meta__security}) as claim__meta__security ;;
    relationship: one_to_many
  }

  join: claim__item__care_team_link_id {
    view_label: "Claim: Item Careteamlinkid"
    sql: LEFT JOIN UNNEST(${claim__item.care_team_link_id}) as claim__item__care_team_link_id ;;
    relationship: one_to_many
  }

  join: claim__diagnosis__type {
    view_label: "Claim: Diagnosis Type"
    sql: LEFT JOIN UNNEST(${claim__diagnosis.type}) as claim__diagnosis__type ;;
    relationship: one_to_many
  }

  join: claim__sub_type__coding {
    view_label: "Claim: Subtype Coding"
    sql: LEFT JOIN UNNEST(${claim__sub_type.coding}) as claim__sub_type__coding ;;
    relationship: one_to_many
  }

  join: claim__insurance__pre_auth_ref {
    view_label: "Claim: Insurance Preauthref"
    sql: LEFT JOIN UNNEST(${claim__insurance.pre_auth_ref}) as claim__insurance__pre_auth_ref ;;
    relationship: one_to_many
  }

  join: claim__item__procedure_link_id {
    view_label: "Claim: Item Procedurelinkid"
    sql: LEFT JOIN UNNEST(${claim__item.procedure_link_id}) as claim__item__procedure_link_id ;;
    relationship: one_to_many
  }

  join: claim__item__diagnosis_link_id {
    view_label: "Claim: Item Diagnosislinkid"
    sql: LEFT JOIN UNNEST(${claim__item.diagnosis_link_id}) as claim__item__diagnosis_link_id ;;
    relationship: one_to_many
  }

  join: claim__priority__coding {
    view_label: "Claim: Priority Coding"
    sql: LEFT JOIN UNNEST(${claim.priority__coding}) as claim__priority__coding ;;
    relationship: one_to_many
  }

  join: claim__item__program_code {
    view_label: "Claim: Item Programcode"
    sql: LEFT JOIN UNNEST(${claim__item.program_code}) as claim__item__program_code ;;
    relationship: one_to_many
  }

  join: claim__payee__type__coding {
    view_label: "Claim: Payee Type Coding"
    sql: LEFT JOIN UNNEST(${claim.payee__type__coding}) as claim__payee__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__information_link_id {
    view_label: "Claim: Item Informationlinkid"
    sql: LEFT JOIN UNNEST(${claim__item.information_link_id}) as claim__item__information_link_id ;;
    relationship: one_to_many
  }

  join: claim__item__encounter {
    view_label: "Claim: Item Encounter"
    sql: LEFT JOIN UNNEST(${claim__item.encounter}) as claim__item__encounter ;;
    relationship: one_to_many
  }

  join: claim__item__detail__udi {
    view_label: "Claim: Item Detail Udi"
    sql: LEFT JOIN UNNEST(${claim__item__detail.udi}) as claim__item__detail__udi ;;
    relationship: one_to_many
  }

  join: claim__funds_reserve__coding {
    view_label: "Claim: Fundsreserve Coding"
    sql: LEFT JOIN UNNEST(${claim.funds_reserve__coding}) as claim__funds_reserve__coding ;;
    relationship: one_to_many
  }

  join: claim__item__revenue__coding {
    view_label: "Claim: Item Revenue Coding"
    sql: LEFT JOIN UNNEST(${claim__item.revenue__coding}) as claim__item__revenue__coding ;;
    relationship: one_to_many
  }

  join: claim__item__service__coding {
    view_label: "Claim: Item Service Coding"
    sql: LEFT JOIN UNNEST(${claim__item.service__coding}) as claim__item__service__coding ;;
    relationship: one_to_many
  }

  join: claim__item__sub_site__coding {
    view_label: "Claim: Item Subsite Coding"
    sql: LEFT JOIN UNNEST(${claim__item__sub_site.coding}) as claim__item__sub_site__coding ;;
    relationship: one_to_many
  }

  join: claim__accident__type__coding {
    view_label: "Claim: Accident Type Coding"
    sql: LEFT JOIN UNNEST(${claim.accident__type__coding}) as claim__accident__type__coding ;;
    relationship: one_to_many
  }

  join: claim__care_team__role__coding {
    view_label: "Claim: Careteam Role Coding"
    sql: LEFT JOIN UNNEST(${claim__care_team.role__coding}) as claim__care_team__role__coding ;;
    relationship: one_to_many
  }

  join: claim__item__modifier__coding {
    view_label: "Claim: Item Modifier Coding"
    sql: LEFT JOIN UNNEST(${claim__item__modifier.coding}) as claim__item__modifier__coding ;;
    relationship: one_to_many
  }

  join: claim__item__body_site__coding {
    view_label: "Claim: Item Bodysite Coding"
    sql: LEFT JOIN UNNEST(${claim__item.body_site__coding}) as claim__item__body_site__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__modifier {
    view_label: "Claim: Item Detail Modifier"
    sql: LEFT JOIN UNNEST(${claim__item__detail.modifier}) as claim__item__detail__modifier ;;
    relationship: one_to_many
  }

  join: claim__item__category__coding {
    view_label: "Claim: Item Category Coding"
    sql: LEFT JOIN UNNEST(${claim__item.category__coding}) as claim__item__category__coding ;;
    relationship: one_to_many
  }

  join: claim__item__location__address__line {
    view_label: "Claim: Item Location Address Line"
    sql: LEFT JOIN UNNEST(${claim__item.location__address__line}) as claim__item__location__address__line ;;
    relationship: one_to_many
  }

  join: claim__diagnosis__type__coding {
    view_label: "Claim: Diagnosis Type Coding"
    sql: LEFT JOIN UNNEST(${claim__diagnosis__type.coding}) as claim__diagnosis__type__coding ;;
    relationship: one_to_many
  }

  join: claim__identifier__type__coding {
    view_label: "Claim: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__identifier.type__coding}) as claim__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__program_code__coding {
    view_label: "Claim: Item Programcode Coding"
    sql: LEFT JOIN UNNEST(${claim__item__program_code.coding}) as claim__item__program_code__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__program_code {
    view_label: "Claim: Item Detail Programcode"
    sql: LEFT JOIN UNNEST(${claim__item__detail.program_code}) as claim__item__detail__program_code ;;
    relationship: one_to_many
  }

  join: claim__item__detail__sub_detail {
    view_label: "Claim: Item Detail Subdetail"
    sql: LEFT JOIN UNNEST(${claim__item__detail.sub_detail}) as claim__item__detail__sub_detail ;;
    relationship: one_to_many
  }

  join: claim__information__code__coding {
    view_label: "Claim: Information Code Coding"
    sql: LEFT JOIN UNNEST(${claim__information.code__coding}) as claim__information__code__coding ;;
    relationship: one_to_many
  }

  join: claim__accident__location__address__line {
    view_label: "Claim: Accident Location Address Line"
    sql: LEFT JOIN UNNEST(${claim.accident__location__address__line}) as claim__accident__location__address__line ;;
    relationship: one_to_many
  }

  join: claim__information__reason__coding {
    view_label: "Claim: Information Reason Coding"
    sql: LEFT JOIN UNNEST(${claim__information.reason__coding}) as claim__information__reason__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__revenue__coding {
    view_label: "Claim: Item Detail Revenue Coding"
    sql: LEFT JOIN UNNEST(${claim__item__detail.revenue__coding}) as claim__item__detail__revenue__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__service__coding {
    view_label: "Claim: Item Detail Service Coding"
    sql: LEFT JOIN UNNEST(${claim__item__detail.service__coding}) as claim__item__detail__service__coding ;;
    relationship: one_to_many
  }

  join: claim__related__relationship__coding {
    view_label: "Claim: Related Relationship Coding"
    sql: LEFT JOIN UNNEST(${claim__related.relationship__coding}) as claim__related__relationship__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__modifier__coding {
    view_label: "Claim: Item Detail Modifier Coding"
    sql: LEFT JOIN UNNEST(${claim__item__detail__modifier.coding}) as claim__item__detail__modifier__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__category__coding {
    view_label: "Claim: Item Detail Category Coding"
    sql: LEFT JOIN UNNEST(${claim__item__detail.category__coding}) as claim__item__detail__category__coding ;;
    relationship: one_to_many
  }

  join: claim__information__category__coding {
    view_label: "Claim: Information Category Coding"
    sql: LEFT JOIN UNNEST(${claim__information.category__coding}) as claim__information__category__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__sub_detail__udi {
    view_label: "Claim: Item Detail Subdetail Udi"
    sql: LEFT JOIN UNNEST(${claim__item__detail__sub_detail.udi}) as claim__item__detail__sub_detail__udi ;;
    relationship: one_to_many
  }

  join: claim__diagnosis__package_code__coding {
    view_label: "Claim: Diagnosis Packagecode Coding"
    sql: LEFT JOIN UNNEST(${claim__diagnosis.package_code__coding}) as claim__diagnosis__package_code__coding ;;
    relationship: one_to_many
  }

  join: claim__related__reference__type__coding {
    view_label: "Claim: Related Reference Type Coding"
    sql: LEFT JOIN UNNEST(${claim__related.reference__type__coding}) as claim__related__reference__type__coding ;;
    relationship: one_to_many
  }

  join: claim__care_team__qualification__coding {
    view_label: "Claim: Careteam Qualification Coding"
    sql: LEFT JOIN UNNEST(${claim__care_team.qualification__coding}) as claim__care_team__qualification__coding ;;
    relationship: one_to_many
  }

  join: claim__insurer__identifier__type__coding {
    view_label: "Claim: Insurer Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.insurer__identifier__type__coding}) as claim__insurer__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__patient__identifier__type__coding {
    view_label: "Claim: Patient Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.patient__identifier__type__coding}) as claim__patient__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__enterer__identifier__type__coding {
    view_label: "Claim: Enterer Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.enterer__identifier__type__coding}) as claim__enterer__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__program_code__coding {
    view_label: "Claim: Item Detail Programcode Coding"
    sql: LEFT JOIN UNNEST(${claim__item__detail__program_code.coding}) as claim__item__detail__program_code__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__sub_detail__modifier {
    view_label: "Claim: Item Detail Subdetail Modifier"
    sql: LEFT JOIN UNNEST(${claim__item__detail__sub_detail.modifier}) as claim__item__detail__sub_detail__modifier ;;
    relationship: one_to_many
  }

  join: claim__provider__identifier__type__coding {
    view_label: "Claim: Provider Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.provider__identifier__type__coding}) as claim__provider__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__udi__identifier__type__coding {
    view_label: "Claim: Item Udi Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__item__udi.identifier__type__coding}) as claim__item__udi__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__referral__identifier__type__coding {
    view_label: "Claim: Referral Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.referral__identifier__type__coding}) as claim__referral__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__facility__identifier__type__coding {
    view_label: "Claim: Facility Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.facility__identifier__type__coding}) as claim__facility__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__sub_detail__program_code {
    view_label: "Claim: Item Detail Subdetail Programcode"
    sql: LEFT JOIN UNNEST(${claim__item__detail__sub_detail.program_code}) as claim__item__detail__sub_detail__program_code ;;
    relationship: one_to_many
  }

  join: claim__payee__party__identifier__type__coding {
    view_label: "Claim: Payee Party Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.payee__party__identifier__type__coding}) as claim__payee__party__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__prescription__identifier__type__coding {
    view_label: "Claim: Prescription Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.prescription__identifier__type__coding}) as claim__prescription__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__organization__identifier__type__coding {
    view_label: "Claim: Organization Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.organization__identifier__type__coding}) as claim__organization__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__related__claim__identifier__type__coding {
    view_label: "Claim: Related Claim Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__related.claim__identifier__type__coding}) as claim__related__claim__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__location__codeable_concept__coding {
    view_label: "Claim: Item Location Codeableconcept Coding"
    sql: LEFT JOIN UNNEST(${claim__item.location__codeable_concept__coding}) as claim__item__location__codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__sub_detail__revenue__coding {
    view_label: "Claim: Item Detail Subdetail Revenue Coding"
    sql: LEFT JOIN UNNEST(${claim__item__detail__sub_detail.revenue__coding}) as claim__item__detail__sub_detail__revenue__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__sub_detail__service__coding {
    view_label: "Claim: Item Detail Subdetail Service Coding"
    sql: LEFT JOIN UNNEST(${claim__item__detail__sub_detail.service__coding}) as claim__item__detail__sub_detail__service__coding ;;
    relationship: one_to_many
  }

  join: claim__item__encounter__identifier__type__coding {
    view_label: "Claim: Item Encounter Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__item__encounter.identifier__type__coding}) as claim__item__encounter__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__sub_detail__modifier__coding {
    view_label: "Claim: Item Detail Subdetail Modifier Coding"
    sql: LEFT JOIN UNNEST(${claim__item__detail__sub_detail__modifier.coding}) as claim__item__detail__sub_detail__modifier__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__sub_detail__category__coding {
    view_label: "Claim: Item Detail Subdetail Category Coding"
    sql: LEFT JOIN UNNEST(${claim__item__detail__sub_detail.category__coding}) as claim__item__detail__sub_detail__category__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__udi__identifier__type__coding {
    view_label: "Claim: Item Detail Udi Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__item__detail__udi.identifier__type__coding}) as claim__item__detail__udi__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__care_team__provider__identifier__type__coding {
    view_label: "Claim: Careteam Provider Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__care_team.provider__identifier__type__coding}) as claim__care_team__provider__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__sub_detail__program_code__coding {
    view_label: "Claim: Item Detail Subdetail Programcode Coding"
    sql: LEFT JOIN UNNEST(${claim__item__detail__sub_detail__program_code.coding}) as claim__item__detail__sub_detail__program_code__coding ;;
    relationship: one_to_many
  }

  join: claim__insurance__coverage__identifier__type__coding {
    view_label: "Claim: Insurance Coverage Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__insurance.coverage__identifier__type__coding}) as claim__insurance__coverage__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__identifier.assigner__identifier__type__coding}) as claim__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__diagnosis__diagnosis__codeable_concept__coding {
    view_label: "Claim: Diagnosis Diagnosis Codeableconcept Coding"
    sql: LEFT JOIN UNNEST(${claim__diagnosis.diagnosis__codeable_concept__coding}) as claim__diagnosis__diagnosis__codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: claim__procedure__procedure__codeable_concept__coding {
    view_label: "Claim: Procedure Procedure Codeableconcept Coding"
    sql: LEFT JOIN UNNEST(${claim__procedure.procedure__codeable_concept__coding}) as claim__procedure__procedure__codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: claim__original_prescription__identifier__type__coding {
    view_label: "Claim: Originalprescription Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.original_prescription__identifier__type__coding}) as claim__original_prescription__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__insurance__claim_response__identifier__type__coding {
    view_label: "Claim: Insurance Claimresponse Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__insurance.claim_response__identifier__type__coding}) as claim__insurance__claim_response__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__location__reference__identifier__type__coding {
    view_label: "Claim: Item Location Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__item.location__reference__identifier__type__coding}) as claim__item__location__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__sub_detail__udi__identifier__type__coding {
    view_label: "Claim: Item Detail Subdetail Udi Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__item__detail__sub_detail__udi.identifier__type__coding}) as claim__item__detail__sub_detail__udi__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__related__reference__assigner__identifier__type__coding {
    view_label: "Claim: Related Reference Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__related.reference__assigner__identifier__type__coding}) as claim__related__reference__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__accident__location__reference__identifier__type__coding {
    view_label: "Claim: Accident Location Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.accident__location__reference__identifier__type__coding}) as claim__accident__location__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__insurer__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Insurer Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.insurer__identifier__assigner__identifier__type__coding}) as claim__insurer__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__patient__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Patient Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.patient__identifier__assigner__identifier__type__coding}) as claim__patient__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__enterer__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Enterer Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.enterer__identifier__assigner__identifier__type__coding}) as claim__enterer__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__information__value__reference__identifier__type__coding {
    view_label: "Claim: Information Value Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__information.value__reference__identifier__type__coding}) as claim__information__value__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__provider__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Provider Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.provider__identifier__assigner__identifier__type__coding}) as claim__provider__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__udi__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Item Udi Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__item__udi.identifier__assigner__identifier__type__coding}) as claim__item__udi__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__referral__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Referral Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.referral__identifier__assigner__identifier__type__coding}) as claim__referral__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__facility__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Facility Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.facility__identifier__assigner__identifier__type__coding}) as claim__facility__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__diagnosis__diagnosis__reference__identifier__type__coding {
    view_label: "Claim: Diagnosis Diagnosis Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__diagnosis.diagnosis__reference__identifier__type__coding}) as claim__diagnosis__diagnosis__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__procedure__procedure__reference__identifier__type__coding {
    view_label: "Claim: Procedure Procedure Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__procedure.procedure__reference__identifier__type__coding}) as claim__procedure__procedure__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__payee__party__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Payee Party Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.payee__party__identifier__assigner__identifier__type__coding}) as claim__payee__party__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__prescription__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Prescription Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.prescription__identifier__assigner__identifier__type__coding}) as claim__prescription__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__organization__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Organization Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.organization__identifier__assigner__identifier__type__coding}) as claim__organization__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__related__claim__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Related Claim Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__related.claim__identifier__assigner__identifier__type__coding}) as claim__related__claim__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__encounter__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Item Encounter Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__item__encounter.identifier__assigner__identifier__type__coding}) as claim__item__encounter__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__udi__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Item Detail Udi Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__item__detail__udi.identifier__assigner__identifier__type__coding}) as claim__item__detail__udi__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__care_team__provider__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Careteam Provider Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__care_team.provider__identifier__assigner__identifier__type__coding}) as claim__care_team__provider__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__insurance__coverage__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Insurance Coverage Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__insurance.coverage__identifier__assigner__identifier__type__coding}) as claim__insurance__coverage__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__original_prescription__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Originalprescription Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.original_prescription__identifier__assigner__identifier__type__coding}) as claim__original_prescription__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__insurance__claim_response__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Insurance Claimresponse Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__insurance.claim_response__identifier__assigner__identifier__type__coding}) as claim__insurance__claim_response__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__location__reference__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Item Location Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__item.location__reference__identifier__assigner__identifier__type__coding}) as claim__item__location__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__item__detail__sub_detail__udi__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Item Detail Subdetail Udi Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__item__detail__sub_detail__udi.identifier__assigner__identifier__type__coding}) as claim__item__detail__sub_detail__udi__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__related__reference__assigner__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Related Reference Assigner Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__related.reference__assigner__identifier__assigner__identifier__type__coding}) as claim__related__reference__assigner__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__accident__location__reference__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Accident Location Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim.accident__location__reference__identifier__assigner__identifier__type__coding}) as claim__accident__location__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__information__value__reference__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Information Value Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__information.value__reference__identifier__assigner__identifier__type__coding}) as claim__information__value__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__diagnosis__diagnosis__reference__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Diagnosis Diagnosis Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__diagnosis.diagnosis__reference__identifier__assigner__identifier__type__coding}) as claim__diagnosis__diagnosis__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: claim__procedure__procedure__reference__identifier__assigner__identifier__type__coding {
    view_label: "Claim: Procedure Procedure Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${claim__procedure.procedure__reference__identifier__assigner__identifier__type__coding}) as claim__procedure__procedure__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: allergy_intolerance {
  join: allergy_intolerance__note {
    view_label: "Allergy Intolerance: Note"
    sql: LEFT JOIN UNNEST(${allergy_intolerance.note}) as allergy_intolerance__note ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__reaction {
    view_label: "Allergy Intolerance: Reaction"
    sql: LEFT JOIN UNNEST(${allergy_intolerance.reaction}) as allergy_intolerance__reaction ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__category {
    view_label: "Allergy Intolerance: Category"
    sql: LEFT JOIN UNNEST(${allergy_intolerance.category}) as allergy_intolerance__category ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__identifier {
    view_label: "Allergy Intolerance: Identifier"
    sql: LEFT JOIN UNNEST(${allergy_intolerance.identifier}) as allergy_intolerance__identifier ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__meta__profile {
    view_label: "Allergy Intolerance: Meta Profile"
    sql: LEFT JOIN UNNEST(${allergy_intolerance.meta__profile}) as allergy_intolerance__meta__profile ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__meta__tag {
    view_label: "Allergy Intolerance: Meta Tag"
    sql: LEFT JOIN UNNEST(${allergy_intolerance.meta__tag}) as allergy_intolerance__meta__tag ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__code__coding {
    view_label: "Allergy Intolerance: Code Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance.code__coding}) as allergy_intolerance__code__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__reaction__note {
    view_label: "Allergy Intolerance: Reaction Note"
    sql: LEFT JOIN UNNEST(${allergy_intolerance__reaction.note}) as allergy_intolerance__reaction__note ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__meta__security {
    view_label: "Allergy Intolerance: Meta Security"
    sql: LEFT JOIN UNNEST(${allergy_intolerance.meta__security}) as allergy_intolerance__meta__security ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__identifier__type__coding {
    view_label: "Allergy Intolerance: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance__identifier.type__coding}) as allergy_intolerance__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__reaction__manifestation {
    view_label: "Allergy Intolerance: Reaction Manifestation"
    sql: LEFT JOIN UNNEST(${allergy_intolerance__reaction.manifestation}) as allergy_intolerance__reaction__manifestation ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__reaction__substance__coding {
    view_label: "Allergy Intolerance: Reaction Substance Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance__reaction.substance__coding}) as allergy_intolerance__reaction__substance__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__reaction__manifestation__coding {
    view_label: "Allergy Intolerance: Reaction Manifestation Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance__reaction__manifestation.coding}) as allergy_intolerance__reaction__manifestation__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__reaction__exposure_route__coding {
    view_label: "Allergy Intolerance: Reaction Exposureroute Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance__reaction.exposure_route__coding}) as allergy_intolerance__reaction__exposure_route__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__patient__identifier__type__coding {
    view_label: "Allergy Intolerance: Patient Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance.patient__identifier__type__coding}) as allergy_intolerance__patient__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__recorder__identifier__type__coding {
    view_label: "Allergy Intolerance: Recorder Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance.recorder__identifier__type__coding}) as allergy_intolerance__recorder__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__asserter__identifier__type__coding {
    view_label: "Allergy Intolerance: Asserter Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance.asserter__identifier__type__coding}) as allergy_intolerance__asserter__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__identifier__assigner__identifier__type__coding {
    view_label: "Allergy Intolerance: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance__identifier.assigner__identifier__type__coding}) as allergy_intolerance__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__note__author__reference__identifier__type__coding {
    view_label: "Allergy Intolerance: Note Author Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance__note.author__reference__identifier__type__coding}) as allergy_intolerance__note__author__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__patient__identifier__assigner__identifier__type__coding {
    view_label: "Allergy Intolerance: Patient Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance.patient__identifier__assigner__identifier__type__coding}) as allergy_intolerance__patient__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__recorder__identifier__assigner__identifier__type__coding {
    view_label: "Allergy Intolerance: Recorder Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance.recorder__identifier__assigner__identifier__type__coding}) as allergy_intolerance__recorder__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__asserter__identifier__assigner__identifier__type__coding {
    view_label: "Allergy Intolerance: Asserter Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance.asserter__identifier__assigner__identifier__type__coding}) as allergy_intolerance__asserter__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__reaction__note__author__reference__identifier__type__coding {
    view_label: "Allergy Intolerance: Reaction Note Author Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance__reaction__note.author__reference__identifier__type__coding}) as allergy_intolerance__reaction__note__author__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__note__author__reference__identifier__assigner__identifier__type__coding {
    view_label: "Allergy Intolerance: Note Author Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance__note.author__reference__identifier__assigner__identifier__type__coding}) as allergy_intolerance__note__author__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: allergy_intolerance__reaction__note__author__reference__identifier__assigner__identifier__type__coding {
    view_label: "Allergy Intolerance: Reaction Note Author Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${allergy_intolerance__reaction__note.author__reference__identifier__assigner__identifier__type__coding}) as allergy_intolerance__reaction__note__author__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: condition {
  join: condition__note {
    view_label: "Condition: Note"
    sql: LEFT JOIN UNNEST(${condition.note}) as condition__note ;;
    relationship: one_to_many
  }

  join: condition__evidence {
    view_label: "Condition: Evidence"
    sql: LEFT JOIN UNNEST(${condition.evidence}) as condition__evidence ;;
    relationship: one_to_many
  }

  join: condition__body_site {
    view_label: "Condition: Bodysite"
    sql: LEFT JOIN UNNEST(${condition.body_site}) as condition__body_site ;;
    relationship: one_to_many
  }

  join: condition__category {
    view_label: "Condition: Category"
    sql: LEFT JOIN UNNEST(${condition.category}) as condition__category ;;
    relationship: one_to_many
  }

  join: condition__identifier {
    view_label: "Condition: Identifier"
    sql: LEFT JOIN UNNEST(${condition.identifier}) as condition__identifier ;;
    relationship: one_to_many
  }

  join: condition__meta__profile {
    view_label: "Condition: Meta Profile"
    sql: LEFT JOIN UNNEST(${condition.meta__profile}) as condition__meta__profile ;;
    relationship: one_to_many
  }

  join: condition__meta__tag {
    view_label: "Condition: Meta Tag"
    sql: LEFT JOIN UNNEST(${condition.meta__tag}) as condition__meta__tag ;;
    relationship: one_to_many
  }

  join: condition__code__coding {
    view_label: "Condition: Code Coding"
    sql: LEFT JOIN UNNEST(${condition.code__coding}) as condition__code__coding ;;
    relationship: one_to_many
  }

  join: condition__evidence__code {
    view_label: "Condition: Evidence Code"
    sql: LEFT JOIN UNNEST(${condition__evidence.code}) as condition__evidence__code ;;
    relationship: one_to_many
  }

  join: condition__meta__security {
    view_label: "Condition: Meta Security"
    sql: LEFT JOIN UNNEST(${condition.meta__security}) as condition__meta__security ;;
    relationship: one_to_many
  }

  join: condition__severity__coding {
    view_label: "Condition: Severity Coding"
    sql: LEFT JOIN UNNEST(${condition.severity__coding}) as condition__severity__coding ;;
    relationship: one_to_many
  }

  join: condition__body_site__coding {
    view_label: "Condition: Bodysite Coding"
    sql: LEFT JOIN UNNEST(${condition__body_site.coding}) as condition__body_site__coding ;;
    relationship: one_to_many
  }

  join: condition__category__coding {
    view_label: "Condition: Category Coding"
    sql: LEFT JOIN UNNEST(${condition__category.coding}) as condition__category__coding ;;
    relationship: one_to_many
  }

  join: condition__evidence__detail {
    view_label: "Condition: Evidence Detail"
    sql: LEFT JOIN UNNEST(${condition__evidence.detail}) as condition__evidence__detail ;;
    relationship: one_to_many
  }

  join: condition__stage__assessment {
    view_label: "Condition: Stage Assessment"
    sql: LEFT JOIN UNNEST(${condition.stage__assessment}) as condition__stage__assessment ;;
    relationship: one_to_many
  }

  join: condition__evidence__code__coding {
    view_label: "Condition: Evidence Code Coding"
    sql: LEFT JOIN UNNEST(${condition__evidence__code.coding}) as condition__evidence__code__coding ;;
    relationship: one_to_many
  }

  join: condition__stage__summary__coding {
    view_label: "Condition: Stage Summary Coding"
    sql: LEFT JOIN UNNEST(${condition.stage__summary__coding}) as condition__stage__summary__coding ;;
    relationship: one_to_many
  }

  join: condition__identifier__type__coding {
    view_label: "Condition: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${condition__identifier.type__coding}) as condition__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: condition__subject__identifier__type__coding {
    view_label: "Condition: Subject Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${condition.subject__identifier__type__coding}) as condition__subject__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: condition__context__identifier__type__coding {
    view_label: "Condition: Context Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${condition.context__identifier__type__coding}) as condition__context__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: condition__asserter__identifier__type__coding {
    view_label: "Condition: Asserter Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${condition.asserter__identifier__type__coding}) as condition__asserter__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: condition__evidence__detail__identifier__type__coding {
    view_label: "Condition: Evidence Detail Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${condition__evidence__detail.identifier__type__coding}) as condition__evidence__detail__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: condition__stage__assessment__identifier__type__coding {
    view_label: "Condition: Stage Assessment Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${condition__stage__assessment.identifier__type__coding}) as condition__stage__assessment__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: condition__identifier__assigner__identifier__type__coding {
    view_label: "Condition: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${condition__identifier.assigner__identifier__type__coding}) as condition__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: condition__note__author__reference__identifier__type__coding {
    view_label: "Condition: Note Author Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${condition__note.author__reference__identifier__type__coding}) as condition__note__author__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: condition__subject__identifier__assigner__identifier__type__coding {
    view_label: "Condition: Subject Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${condition.subject__identifier__assigner__identifier__type__coding}) as condition__subject__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: condition__context__identifier__assigner__identifier__type__coding {
    view_label: "Condition: Context Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${condition.context__identifier__assigner__identifier__type__coding}) as condition__context__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: condition__asserter__identifier__assigner__identifier__type__coding {
    view_label: "Condition: Asserter Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${condition.asserter__identifier__assigner__identifier__type__coding}) as condition__asserter__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: condition__evidence__detail__identifier__assigner__identifier__type__coding {
    view_label: "Condition: Evidence Detail Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${condition__evidence__detail.identifier__assigner__identifier__type__coding}) as condition__evidence__detail__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: condition__stage__assessment__identifier__assigner__identifier__type__coding {
    view_label: "Condition: Stage Assessment Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${condition__stage__assessment.identifier__assigner__identifier__type__coding}) as condition__stage__assessment__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: condition__note__author__reference__identifier__assigner__identifier__type__coding {
    view_label: "Condition: Note Author Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${condition__note.author__reference__identifier__assigner__identifier__type__coding}) as condition__note__author__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: diagnostic_report {
  join: diagnostic_report__image {
    view_label: "Diagnostic Report: Image"
    sql: LEFT JOIN UNNEST(${diagnostic_report.image}) as diagnostic_report__image ;;
    relationship: one_to_many
  }

  join: diagnostic_report__result {
    view_label: "Diagnostic Report: Result"
    sql: LEFT JOIN UNNEST(${diagnostic_report.result}) as diagnostic_report__result ;;
    relationship: one_to_many
  }

  join: diagnostic_report__based_on {
    view_label: "Diagnostic Report: Basedon"
    sql: LEFT JOIN UNNEST(${diagnostic_report.based_on}) as diagnostic_report__based_on ;;
    relationship: one_to_many
  }

  join: diagnostic_report__specimen {
    view_label: "Diagnostic Report: Specimen"
    sql: LEFT JOIN UNNEST(${diagnostic_report.specimen}) as diagnostic_report__specimen ;;
    relationship: one_to_many
  }

  join: diagnostic_report__performer {
    view_label: "Diagnostic Report: Performer"
    sql: LEFT JOIN UNNEST(${diagnostic_report.performer}) as diagnostic_report__performer ;;
    relationship: one_to_many
  }

  join: diagnostic_report__identifier {
    view_label: "Diagnostic Report: Identifier"
    sql: LEFT JOIN UNNEST(${diagnostic_report.identifier}) as diagnostic_report__identifier ;;
    relationship: one_to_many
  }

  join: diagnostic_report__meta__profile {
    view_label: "Diagnostic Report: Meta Profile"
    sql: LEFT JOIN UNNEST(${diagnostic_report.meta__profile}) as diagnostic_report__meta__profile ;;
    relationship: one_to_many
  }

  join: diagnostic_report__imaging_study {
    view_label: "Diagnostic Report: Imagingstudy"
    sql: LEFT JOIN UNNEST(${diagnostic_report.imaging_study}) as diagnostic_report__imaging_study ;;
    relationship: one_to_many
  }

  join: diagnostic_report__presented_form {
    view_label: "Diagnostic Report: Presentedform"
    sql: LEFT JOIN UNNEST(${diagnostic_report.presented_form}) as diagnostic_report__presented_form ;;
    relationship: one_to_many
  }

  join: diagnostic_report__meta__tag {
    view_label: "Diagnostic Report: Meta Tag"
    sql: LEFT JOIN UNNEST(${diagnostic_report.meta__tag}) as diagnostic_report__meta__tag ;;
    relationship: one_to_many
  }

  join: diagnostic_report__coded_diagnosis {
    view_label: "Diagnostic Report: Codeddiagnosis"
    sql: LEFT JOIN UNNEST(${diagnostic_report.coded_diagnosis}) as diagnostic_report__coded_diagnosis ;;
    relationship: one_to_many
  }

  join: diagnostic_report__code__coding {
    view_label: "Diagnostic Report: Code Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report.code__coding}) as diagnostic_report__code__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__meta__security {
    view_label: "Diagnostic Report: Meta Security"
    sql: LEFT JOIN UNNEST(${diagnostic_report.meta__security}) as diagnostic_report__meta__security ;;
    relationship: one_to_many
  }

  join: diagnostic_report__category__coding {
    view_label: "Diagnostic Report: Category Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report.category__coding}) as diagnostic_report__category__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__performer__role__coding {
    view_label: "Diagnostic Report: Performer Role Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__performer.role__coding}) as diagnostic_report__performer__role__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__coded_diagnosis__coding {
    view_label: "Diagnostic Report: Codeddiagnosis Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__coded_diagnosis.coding}) as diagnostic_report__coded_diagnosis__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__identifier__type__coding {
    view_label: "Diagnostic Report: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__identifier.type__coding}) as diagnostic_report__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__result__identifier__type__coding {
    view_label: "Diagnostic Report: Result Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__result.identifier__type__coding}) as diagnostic_report__result__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__subject__identifier__type__coding {
    view_label: "Diagnostic Report: Subject Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report.subject__identifier__type__coding}) as diagnostic_report__subject__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__context__identifier__type__coding {
    view_label: "Diagnostic Report: Context Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report.context__identifier__type__coding}) as diagnostic_report__context__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__based_on__identifier__type__coding {
    view_label: "Diagnostic Report: Basedon Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__based_on.identifier__type__coding}) as diagnostic_report__based_on__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__specimen__identifier__type__coding {
    view_label: "Diagnostic Report: Specimen Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__specimen.identifier__type__coding}) as diagnostic_report__specimen__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__image__link__identifier__type__coding {
    view_label: "Diagnostic Report: Image Link Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__image.link__identifier__type__coding}) as diagnostic_report__image__link__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__imaging_study__identifier__type__coding {
    view_label: "Diagnostic Report: Imagingstudy Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__imaging_study.identifier__type__coding}) as diagnostic_report__imaging_study__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__performer__actor__identifier__type__coding {
    view_label: "Diagnostic Report: Performer Actor Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__performer.actor__identifier__type__coding}) as diagnostic_report__performer__actor__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__identifier__assigner__identifier__type__coding {
    view_label: "Diagnostic Report: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__identifier.assigner__identifier__type__coding}) as diagnostic_report__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__result__identifier__assigner__identifier__type__coding {
    view_label: "Diagnostic Report: Result Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__result.identifier__assigner__identifier__type__coding}) as diagnostic_report__result__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__subject__identifier__assigner__identifier__type__coding {
    view_label: "Diagnostic Report: Subject Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report.subject__identifier__assigner__identifier__type__coding}) as diagnostic_report__subject__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__context__identifier__assigner__identifier__type__coding {
    view_label: "Diagnostic Report: Context Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report.context__identifier__assigner__identifier__type__coding}) as diagnostic_report__context__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__based_on__identifier__assigner__identifier__type__coding {
    view_label: "Diagnostic Report: Basedon Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__based_on.identifier__assigner__identifier__type__coding}) as diagnostic_report__based_on__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__specimen__identifier__assigner__identifier__type__coding {
    view_label: "Diagnostic Report: Specimen Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__specimen.identifier__assigner__identifier__type__coding}) as diagnostic_report__specimen__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__image__link__identifier__assigner__identifier__type__coding {
    view_label: "Diagnostic Report: Image Link Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__image.link__identifier__assigner__identifier__type__coding}) as diagnostic_report__image__link__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__imaging_study__identifier__assigner__identifier__type__coding {
    view_label: "Diagnostic Report: Imagingstudy Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__imaging_study.identifier__assigner__identifier__type__coding}) as diagnostic_report__imaging_study__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: diagnostic_report__performer__actor__identifier__assigner__identifier__type__coding {
    view_label: "Diagnostic Report: Performer Actor Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${diagnostic_report__performer.actor__identifier__assigner__identifier__type__coding}) as diagnostic_report__performer__actor__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: goal {
  join: goal__note {
    view_label: "Goal: Note"
    sql: LEFT JOIN UNNEST(${goal.note}) as goal__note ;;
    relationship: one_to_many
  }

  join: goal__category {
    view_label: "Goal: Category"
    sql: LEFT JOIN UNNEST(${goal.category}) as goal__category ;;
    relationship: one_to_many
  }

  join: goal__addresses {
    view_label: "Goal: Addresses"
    sql: LEFT JOIN UNNEST(${goal.addresses}) as goal__addresses ;;
    relationship: one_to_many
  }

  join: goal__identifier {
    view_label: "Goal: Identifier"
    sql: LEFT JOIN UNNEST(${goal.identifier}) as goal__identifier ;;
    relationship: one_to_many
  }

  join: goal__outcome_code {
    view_label: "Goal: Outcomecode"
    sql: LEFT JOIN UNNEST(${goal.outcome_code}) as goal__outcome_code ;;
    relationship: one_to_many
  }

  join: goal__meta__profile {
    view_label: "Goal: Meta Profile"
    sql: LEFT JOIN UNNEST(${goal.meta__profile}) as goal__meta__profile ;;
    relationship: one_to_many
  }

  join: goal__meta__tag {
    view_label: "Goal: Meta Tag"
    sql: LEFT JOIN UNNEST(${goal.meta__tag}) as goal__meta__tag ;;
    relationship: one_to_many
  }

  join: goal__outcome_reference {
    view_label: "Goal: Outcomereference"
    sql: LEFT JOIN UNNEST(${goal.outcome_reference}) as goal__outcome_reference ;;
    relationship: one_to_many
  }

  join: goal__meta__security {
    view_label: "Goal: Meta Security"
    sql: LEFT JOIN UNNEST(${goal.meta__security}) as goal__meta__security ;;
    relationship: one_to_many
  }

  join: goal__priority__coding {
    view_label: "Goal: Priority Coding"
    sql: LEFT JOIN UNNEST(${goal.priority__coding}) as goal__priority__coding ;;
    relationship: one_to_many
  }

  join: goal__category__coding {
    view_label: "Goal: Category Coding"
    sql: LEFT JOIN UNNEST(${goal__category.coding}) as goal__category__coding ;;
    relationship: one_to_many
  }

  join: goal__description__coding {
    view_label: "Goal: Description Coding"
    sql: LEFT JOIN UNNEST(${goal.description__coding}) as goal__description__coding ;;
    relationship: one_to_many
  }

  join: goal__outcome_code__coding {
    view_label: "Goal: Outcomecode Coding"
    sql: LEFT JOIN UNNEST(${goal__outcome_code.coding}) as goal__outcome_code__coding ;;
    relationship: one_to_many
  }

  join: goal__target__measure__coding {
    view_label: "Goal: Target Measure Coding"
    sql: LEFT JOIN UNNEST(${goal.target__measure__coding}) as goal__target__measure__coding ;;
    relationship: one_to_many
  }

  join: goal__identifier__type__coding {
    view_label: "Goal: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${goal__identifier.type__coding}) as goal__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: goal__start__codeable_concept__coding {
    view_label: "Goal: Start Codeableconcept Coding"
    sql: LEFT JOIN UNNEST(${goal.start__codeable_concept__coding}) as goal__start__codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: goal__subject__identifier__type__coding {
    view_label: "Goal: Subject Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${goal.subject__identifier__type__coding}) as goal__subject__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: goal__addresses__identifier__type__coding {
    view_label: "Goal: Addresses Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${goal__addresses.identifier__type__coding}) as goal__addresses__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: goal__expressed_by__identifier__type__coding {
    view_label: "Goal: Expressedby Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${goal.expressed_by__identifier__type__coding}) as goal__expressed_by__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: goal__target__detail__codeable_concept__coding {
    view_label: "Goal: Target Detail Codeableconcept Coding"
    sql: LEFT JOIN UNNEST(${goal.target__detail__codeable_concept__coding}) as goal__target__detail__codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: goal__outcome_reference__identifier__type__coding {
    view_label: "Goal: Outcomereference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${goal__outcome_reference.identifier__type__coding}) as goal__outcome_reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: goal__identifier__assigner__identifier__type__coding {
    view_label: "Goal: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${goal__identifier.assigner__identifier__type__coding}) as goal__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: goal__note__author__reference__identifier__type__coding {
    view_label: "Goal: Note Author Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${goal__note.author__reference__identifier__type__coding}) as goal__note__author__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: goal__subject__identifier__assigner__identifier__type__coding {
    view_label: "Goal: Subject Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${goal.subject__identifier__assigner__identifier__type__coding}) as goal__subject__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: goal__addresses__identifier__assigner__identifier__type__coding {
    view_label: "Goal: Addresses Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${goal__addresses.identifier__assigner__identifier__type__coding}) as goal__addresses__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: goal__expressed_by__identifier__assigner__identifier__type__coding {
    view_label: "Goal: Expressedby Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${goal.expressed_by__identifier__assigner__identifier__type__coding}) as goal__expressed_by__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: goal__outcome_reference__identifier__assigner__identifier__type__coding {
    view_label: "Goal: Outcomereference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${goal__outcome_reference.identifier__assigner__identifier__type__coding}) as goal__outcome_reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: goal__note__author__reference__identifier__assigner__identifier__type__coding {
    view_label: "Goal: Note Author Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${goal__note.author__reference__identifier__assigner__identifier__type__coding}) as goal__note__author__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: imaging_study {
  join: imaging_study__series {
    view_label: "Imaging Study: Series"
    sql: LEFT JOIN UNNEST(${imaging_study.series}) as imaging_study__series ;;
    relationship: one_to_many
  }

  join: imaging_study__based_on {
    view_label: "Imaging Study: Basedon"
    sql: LEFT JOIN UNNEST(${imaging_study.based_on}) as imaging_study__based_on ;;
    relationship: one_to_many
  }

  join: imaging_study__endpoint {
    view_label: "Imaging Study: Endpoint"
    sql: LEFT JOIN UNNEST(${imaging_study.endpoint}) as imaging_study__endpoint ;;
    relationship: one_to_many
  }

  join: imaging_study__identifier {
    view_label: "Imaging Study: Identifier"
    sql: LEFT JOIN UNNEST(${imaging_study.identifier}) as imaging_study__identifier ;;
    relationship: one_to_many
  }

  join: imaging_study__interpreter {
    view_label: "Imaging Study: Interpreter"
    sql: LEFT JOIN UNNEST(${imaging_study.interpreter}) as imaging_study__interpreter ;;
    relationship: one_to_many
  }

  join: imaging_study__modality_list {
    view_label: "Imaging Study: Modalitylist"
    sql: LEFT JOIN UNNEST(${imaging_study.modality_list}) as imaging_study__modality_list ;;
    relationship: one_to_many
  }

  join: imaging_study__meta__profile {
    view_label: "Imaging Study: Meta Profile"
    sql: LEFT JOIN UNNEST(${imaging_study.meta__profile}) as imaging_study__meta__profile ;;
    relationship: one_to_many
  }

  join: imaging_study__procedure_code {
    view_label: "Imaging Study: Procedurecode"
    sql: LEFT JOIN UNNEST(${imaging_study.procedure_code}) as imaging_study__procedure_code ;;
    relationship: one_to_many
  }

  join: imaging_study__meta__tag {
    view_label: "Imaging Study: Meta Tag"
    sql: LEFT JOIN UNNEST(${imaging_study.meta__tag}) as imaging_study__meta__tag ;;
    relationship: one_to_many
  }

  join: imaging_study__reason__coding {
    view_label: "Imaging Study: Reason Coding"
    sql: LEFT JOIN UNNEST(${imaging_study.reason__coding}) as imaging_study__reason__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__meta__security {
    view_label: "Imaging Study: Meta Security"
    sql: LEFT JOIN UNNEST(${imaging_study.meta__security}) as imaging_study__meta__security ;;
    relationship: one_to_many
  }

  join: imaging_study__procedure_reference {
    view_label: "Imaging Study: Procedurereference"
    sql: LEFT JOIN UNNEST(${imaging_study.procedure_reference}) as imaging_study__procedure_reference ;;
    relationship: one_to_many
  }

  join: imaging_study__series__instance {
    view_label: "Imaging Study: Series Instance"
    sql: LEFT JOIN UNNEST(${imaging_study__series.instance}) as imaging_study__series__instance ;;
    relationship: one_to_many
  }

  join: imaging_study__series__endpoint {
    view_label: "Imaging Study: Series Endpoint"
    sql: LEFT JOIN UNNEST(${imaging_study__series.endpoint}) as imaging_study__series__endpoint ;;
    relationship: one_to_many
  }

  join: imaging_study__series__performer {
    view_label: "Imaging Study: Series Performer"
    sql: LEFT JOIN UNNEST(${imaging_study__series.performer}) as imaging_study__series__performer ;;
    relationship: one_to_many
  }

  join: imaging_study__procedure_code__coding {
    view_label: "Imaging Study: Procedurecode Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__procedure_code.coding}) as imaging_study__procedure_code__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__accession__type__coding {
    view_label: "Imaging Study: Accession Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study.accession__type__coding}) as imaging_study__accession__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__identifier__type__coding {
    view_label: "Imaging Study: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__identifier.type__coding}) as imaging_study__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__patient__identifier__type__coding {
    view_label: "Imaging Study: Patient Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study.patient__identifier__type__coding}) as imaging_study__patient__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__context__identifier__type__coding {
    view_label: "Imaging Study: Context Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study.context__identifier__type__coding}) as imaging_study__context__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__based_on__identifier__type__coding {
    view_label: "Imaging Study: Basedon Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__based_on.identifier__type__coding}) as imaging_study__based_on__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__referrer__identifier__type__coding {
    view_label: "Imaging Study: Referrer Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study.referrer__identifier__type__coding}) as imaging_study__referrer__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__endpoint__identifier__type__coding {
    view_label: "Imaging Study: Endpoint Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__endpoint.identifier__type__coding}) as imaging_study__endpoint__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__interpreter__identifier__type__coding {
    view_label: "Imaging Study: Interpreter Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__interpreter.identifier__type__coding}) as imaging_study__interpreter__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__series__endpoint__identifier__type__coding {
    view_label: "Imaging Study: Series Endpoint Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__series__endpoint.identifier__type__coding}) as imaging_study__series__endpoint__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__series__performer__identifier__type__coding {
    view_label: "Imaging Study: Series Performer Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__series__performer.identifier__type__coding}) as imaging_study__series__performer__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__accession__assigner__identifier__type__coding {
    view_label: "Imaging Study: Accession Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study.accession__assigner__identifier__type__coding}) as imaging_study__accession__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__procedure_reference__identifier__type__coding {
    view_label: "Imaging Study: Procedurereference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__procedure_reference.identifier__type__coding}) as imaging_study__procedure_reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__identifier__assigner__identifier__type__coding {
    view_label: "Imaging Study: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__identifier.assigner__identifier__type__coding}) as imaging_study__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__patient__identifier__assigner__identifier__type__coding {
    view_label: "Imaging Study: Patient Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study.patient__identifier__assigner__identifier__type__coding}) as imaging_study__patient__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__context__identifier__assigner__identifier__type__coding {
    view_label: "Imaging Study: Context Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study.context__identifier__assigner__identifier__type__coding}) as imaging_study__context__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__based_on__identifier__assigner__identifier__type__coding {
    view_label: "Imaging Study: Basedon Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__based_on.identifier__assigner__identifier__type__coding}) as imaging_study__based_on__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__referrer__identifier__assigner__identifier__type__coding {
    view_label: "Imaging Study: Referrer Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study.referrer__identifier__assigner__identifier__type__coding}) as imaging_study__referrer__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__endpoint__identifier__assigner__identifier__type__coding {
    view_label: "Imaging Study: Endpoint Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__endpoint.identifier__assigner__identifier__type__coding}) as imaging_study__endpoint__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__interpreter__identifier__assigner__identifier__type__coding {
    view_label: "Imaging Study: Interpreter Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__interpreter.identifier__assigner__identifier__type__coding}) as imaging_study__interpreter__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__series__endpoint__identifier__assigner__identifier__type__coding {
    view_label: "Imaging Study: Series Endpoint Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__series__endpoint.identifier__assigner__identifier__type__coding}) as imaging_study__series__endpoint__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__series__performer__identifier__assigner__identifier__type__coding {
    view_label: "Imaging Study: Series Performer Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__series__performer.identifier__assigner__identifier__type__coding}) as imaging_study__series__performer__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__accession__assigner__identifier__assigner__identifier__type__coding {
    view_label: "Imaging Study: Accession Assigner Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study.accession__assigner__identifier__assigner__identifier__type__coding}) as imaging_study__accession__assigner__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: imaging_study__procedure_reference__identifier__assigner__identifier__type__coding {
    view_label: "Imaging Study: Procedurereference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${imaging_study__procedure_reference.identifier__assigner__identifier__type__coding}) as imaging_study__procedure_reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: immunization {
  join: immunization__note {
    view_label: "Immunization: Note"
    sql: LEFT JOIN UNNEST(${immunization.note}) as immunization__note ;;
    relationship: one_to_many
  }

  join: immunization__reaction {
    view_label: "Immunization: Reaction"
    sql: LEFT JOIN UNNEST(${immunization.reaction}) as immunization__reaction ;;
    relationship: one_to_many
  }

  join: immunization__identifier {
    view_label: "Immunization: Identifier"
    sql: LEFT JOIN UNNEST(${immunization.identifier}) as immunization__identifier ;;
    relationship: one_to_many
  }

  join: immunization__practitioner {
    view_label: "Immunization: Practitioner"
    sql: LEFT JOIN UNNEST(${immunization.practitioner}) as immunization__practitioner ;;
    relationship: one_to_many
  }

  join: immunization__meta__profile {
    view_label: "Immunization: Meta Profile"
    sql: LEFT JOIN UNNEST(${immunization.meta__profile}) as immunization__meta__profile ;;
    relationship: one_to_many
  }

  join: immunization__meta__tag {
    view_label: "Immunization: Meta Tag"
    sql: LEFT JOIN UNNEST(${immunization.meta__tag}) as immunization__meta__tag ;;
    relationship: one_to_many
  }

  join: immunization__site__coding {
    view_label: "Immunization: Site Coding"
    sql: LEFT JOIN UNNEST(${immunization.site__coding}) as immunization__site__coding ;;
    relationship: one_to_many
  }

  join: immunization__route__coding {
    view_label: "Immunization: Route Coding"
    sql: LEFT JOIN UNNEST(${immunization.route__coding}) as immunization__route__coding ;;
    relationship: one_to_many
  }

  join: immunization__meta__security {
    view_label: "Immunization: Meta Security"
    sql: LEFT JOIN UNNEST(${immunization.meta__security}) as immunization__meta__security ;;
    relationship: one_to_many
  }

  join: immunization__vaccination_protocol {
    view_label: "Immunization: Vaccinationprotocol"
    sql: LEFT JOIN UNNEST(${immunization.vaccination_protocol}) as immunization__vaccination_protocol ;;
    relationship: one_to_many
  }

  join: immunization__explanation__reason {
    view_label: "Immunization: Explanation Reason"
    sql: LEFT JOIN UNNEST(${immunization.explanation__reason}) as immunization__explanation__reason ;;
    relationship: one_to_many
  }

  join: immunization__vaccine_code__coding {
    view_label: "Immunization: Vaccinecode Coding"
    sql: LEFT JOIN UNNEST(${immunization.vaccine_code__coding}) as immunization__vaccine_code__coding ;;
    relationship: one_to_many
  }

  join: immunization__report_origin__coding {
    view_label: "Immunization: Reportorigin Coding"
    sql: LEFT JOIN UNNEST(${immunization.report_origin__coding}) as immunization__report_origin__coding ;;
    relationship: one_to_many
  }

  join: immunization__identifier__type__coding {
    view_label: "Immunization: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization__identifier.type__coding}) as immunization__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__practitioner__role__coding {
    view_label: "Immunization: Practitioner Role Coding"
    sql: LEFT JOIN UNNEST(${immunization__practitioner.role__coding}) as immunization__practitioner__role__coding ;;
    relationship: one_to_many
  }

  join: immunization__explanation__reason__coding {
    view_label: "Immunization: Explanation Reason Coding"
    sql: LEFT JOIN UNNEST(${immunization__explanation__reason.coding}) as immunization__explanation__reason__coding ;;
    relationship: one_to_many
  }

  join: immunization__explanation__reason_not_given {
    view_label: "Immunization: Explanation Reasonnotgiven"
    sql: LEFT JOIN UNNEST(${immunization.explanation__reason_not_given}) as immunization__explanation__reason_not_given ;;
    relationship: one_to_many
  }

  join: immunization__patient__identifier__type__coding {
    view_label: "Immunization: Patient Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization.patient__identifier__type__coding}) as immunization__patient__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__location__identifier__type__coding {
    view_label: "Immunization: Location Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization.location__identifier__type__coding}) as immunization__location__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__encounter__identifier__type__coding {
    view_label: "Immunization: Encounter Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization.encounter__identifier__type__coding}) as immunization__encounter__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__explanation__reason_not_given__coding {
    view_label: "Immunization: Explanation Reasonnotgiven Coding"
    sql: LEFT JOIN UNNEST(${immunization__explanation__reason_not_given.coding}) as immunization__explanation__reason_not_given__coding ;;
    relationship: one_to_many
  }

  join: immunization__vaccination_protocol__target_disease {
    view_label: "Immunization: Vaccinationprotocol Targetdisease"
    sql: LEFT JOIN UNNEST(${immunization__vaccination_protocol.target_disease}) as immunization__vaccination_protocol__target_disease ;;
    relationship: one_to_many
  }

  join: immunization__manufacturer__identifier__type__coding {
    view_label: "Immunization: Manufacturer Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization.manufacturer__identifier__type__coding}) as immunization__manufacturer__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__vaccination_protocol__dose_status__coding {
    view_label: "Immunization: Vaccinationprotocol Dosestatus Coding"
    sql: LEFT JOIN UNNEST(${immunization__vaccination_protocol.dose_status__coding}) as immunization__vaccination_protocol__dose_status__coding ;;
    relationship: one_to_many
  }

  join: immunization__reaction__detail__identifier__type__coding {
    view_label: "Immunization: Reaction Detail Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization__reaction.detail__identifier__type__coding}) as immunization__reaction__detail__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__vaccination_protocol__target_disease__coding {
    view_label: "Immunization: Vaccinationprotocol Targetdisease Coding"
    sql: LEFT JOIN UNNEST(${immunization__vaccination_protocol__target_disease.coding}) as immunization__vaccination_protocol__target_disease__coding ;;
    relationship: one_to_many
  }

  join: immunization__practitioner__actor__identifier__type__coding {
    view_label: "Immunization: Practitioner Actor Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization__practitioner.actor__identifier__type__coding}) as immunization__practitioner__actor__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__identifier__assigner__identifier__type__coding {
    view_label: "Immunization: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization__identifier.assigner__identifier__type__coding}) as immunization__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__vaccination_protocol__dose_status_reason__coding {
    view_label: "Immunization: Vaccinationprotocol Dosestatusreason Coding"
    sql: LEFT JOIN UNNEST(${immunization__vaccination_protocol.dose_status_reason__coding}) as immunization__vaccination_protocol__dose_status_reason__coding ;;
    relationship: one_to_many
  }

  join: immunization__note__author__reference__identifier__type__coding {
    view_label: "Immunization: Note Author Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization__note.author__reference__identifier__type__coding}) as immunization__note__author__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__patient__identifier__assigner__identifier__type__coding {
    view_label: "Immunization: Patient Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization.patient__identifier__assigner__identifier__type__coding}) as immunization__patient__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__location__identifier__assigner__identifier__type__coding {
    view_label: "Immunization: Location Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization.location__identifier__assigner__identifier__type__coding}) as immunization__location__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__encounter__identifier__assigner__identifier__type__coding {
    view_label: "Immunization: Encounter Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization.encounter__identifier__assigner__identifier__type__coding}) as immunization__encounter__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__vaccination_protocol__authority__identifier__type__coding {
    view_label: "Immunization: Vaccinationprotocol Authority Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization__vaccination_protocol.authority__identifier__type__coding}) as immunization__vaccination_protocol__authority__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__manufacturer__identifier__assigner__identifier__type__coding {
    view_label: "Immunization: Manufacturer Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization.manufacturer__identifier__assigner__identifier__type__coding}) as immunization__manufacturer__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__reaction__detail__identifier__assigner__identifier__type__coding {
    view_label: "Immunization: Reaction Detail Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization__reaction.detail__identifier__assigner__identifier__type__coding}) as immunization__reaction__detail__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__practitioner__actor__identifier__assigner__identifier__type__coding {
    view_label: "Immunization: Practitioner Actor Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization__practitioner.actor__identifier__assigner__identifier__type__coding}) as immunization__practitioner__actor__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__note__author__reference__identifier__assigner__identifier__type__coding {
    view_label: "Immunization: Note Author Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization__note.author__reference__identifier__assigner__identifier__type__coding}) as immunization__note__author__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: immunization__vaccination_protocol__authority__identifier__assigner__identifier__type__coding {
    view_label: "Immunization: Vaccinationprotocol Authority Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${immunization__vaccination_protocol.authority__identifier__assigner__identifier__type__coding}) as immunization__vaccination_protocol__authority__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: observation {
  join: observation__related {
    view_label: "Observation: Related"
    sql: LEFT JOIN UNNEST(${observation.related}) as observation__related ;;
    relationship: one_to_many
  }

  join: observation__based_on {
    view_label: "Observation: Basedon"
    sql: LEFT JOIN UNNEST(${observation.based_on}) as observation__based_on ;;
    relationship: one_to_many
  }

  join: observation__category {
    view_label: "Observation: Category"
    sql: LEFT JOIN UNNEST(${observation.category}) as observation__category ;;
    relationship: one_to_many
  }

  join: observation__performer {
    view_label: "Observation: Performer"
    sql: LEFT JOIN UNNEST(${observation.performer}) as observation__performer ;;
    relationship: one_to_many
  }

  join: observation__component {
    view_label: "Observation: Component"
    sql: LEFT JOIN UNNEST(${observation.component}) as observation__component ;;
    relationship: one_to_many
  }

  join: observation__identifier {
    view_label: "Observation: Identifier"
    sql: LEFT JOIN UNNEST(${observation.identifier}) as observation__identifier ;;
    relationship: one_to_many
  }

  join: observation__meta__profile {
    view_label: "Observation: Meta Profile"
    sql: LEFT JOIN UNNEST(${observation.meta__profile}) as observation__meta__profile ;;
    relationship: one_to_many
  }

  join: observation__meta__tag {
    view_label: "Observation: Meta Tag"
    sql: LEFT JOIN UNNEST(${observation.meta__tag}) as observation__meta__tag ;;
    relationship: one_to_many
  }

  join: observation__reference_range {
    view_label: "Observation: Referencerange"
    sql: LEFT JOIN UNNEST(${observation.reference_range}) as observation__reference_range ;;
    relationship: one_to_many
  }

  join: observation__code__coding {
    view_label: "Observation: Code Coding"
    sql: LEFT JOIN UNNEST(${observation.code__coding}) as observation__code__coding ;;
    relationship: one_to_many
  }

  join: observation__method__coding {
    view_label: "Observation: Method Coding"
    sql: LEFT JOIN UNNEST(${observation.method__coding}) as observation__method__coding ;;
    relationship: one_to_many
  }

  join: observation__meta__security {
    view_label: "Observation: Meta Security"
    sql: LEFT JOIN UNNEST(${observation.meta__security}) as observation__meta__security ;;
    relationship: one_to_many
  }

  join: observation__body_site__coding {
    view_label: "Observation: Bodysite Coding"
    sql: LEFT JOIN UNNEST(${observation.body_site__coding}) as observation__body_site__coding ;;
    relationship: one_to_many
  }

  join: observation__category__coding {
    view_label: "Observation: Category Coding"
    sql: LEFT JOIN UNNEST(${observation__category.coding}) as observation__category__coding ;;
    relationship: one_to_many
  }

  join: observation__component__code__coding {
    view_label: "Observation: Component Code Coding"
    sql: LEFT JOIN UNNEST(${observation__component.code__coding}) as observation__component__code__coding ;;
    relationship: one_to_many
  }

  join: observation__interpretation__coding {
    view_label: "Observation: Interpretation Coding"
    sql: LEFT JOIN UNNEST(${observation.interpretation__coding}) as observation__interpretation__coding ;;
    relationship: one_to_many
  }

  join: observation__identifier__type__coding {
    view_label: "Observation: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation__identifier.type__coding}) as observation__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__data_absent_reason__coding {
    view_label: "Observation: Dataabsentreason Coding"
    sql: LEFT JOIN UNNEST(${observation.data_absent_reason__coding}) as observation__data_absent_reason__coding ;;
    relationship: one_to_many
  }

  join: observation__reference_range__applies_to {
    view_label: "Observation: Referencerange Appliesto"
    sql: LEFT JOIN UNNEST(${observation__reference_range.applies_to}) as observation__reference_range__applies_to ;;
    relationship: one_to_many
  }

  join: observation__component__reference_range {
    view_label: "Observation: Component Referencerange"
    sql: LEFT JOIN UNNEST(${observation__component.reference_range}) as observation__component__reference_range ;;
    relationship: one_to_many
  }

  join: observation__reference_range__type__coding {
    view_label: "Observation: Referencerange Type Coding"
    sql: LEFT JOIN UNNEST(${observation__reference_range.type__coding}) as observation__reference_range__type__coding ;;
    relationship: one_to_many
  }

  join: observation__value__codeable_concept__coding {
    view_label: "Observation: Value Codeableconcept Coding"
    sql: LEFT JOIN UNNEST(${observation.value__codeable_concept__coding}) as observation__value__codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: observation__device__identifier__type__coding {
    view_label: "Observation: Device Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation.device__identifier__type__coding}) as observation__device__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__subject__identifier__type__coding {
    view_label: "Observation: Subject Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation.subject__identifier__type__coding}) as observation__subject__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__context__identifier__type__coding {
    view_label: "Observation: Context Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation.context__identifier__type__coding}) as observation__context__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__based_on__identifier__type__coding {
    view_label: "Observation: Basedon Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation__based_on.identifier__type__coding}) as observation__based_on__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__specimen__identifier__type__coding {
    view_label: "Observation: Specimen Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation.specimen__identifier__type__coding}) as observation__specimen__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__reference_range__applies_to__coding {
    view_label: "Observation: Referencerange Appliesto Coding"
    sql: LEFT JOIN UNNEST(${observation__reference_range__applies_to.coding}) as observation__reference_range__applies_to__coding ;;
    relationship: one_to_many
  }

  join: observation__component__interpretation__coding {
    view_label: "Observation: Component Interpretation Coding"
    sql: LEFT JOIN UNNEST(${observation__component.interpretation__coding}) as observation__component__interpretation__coding ;;
    relationship: one_to_many
  }

  join: observation__performer__identifier__type__coding {
    view_label: "Observation: Performer Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation__performer.identifier__type__coding}) as observation__performer__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__component__data_absent_reason__coding {
    view_label: "Observation: Component Dataabsentreason Coding"
    sql: LEFT JOIN UNNEST(${observation__component.data_absent_reason__coding}) as observation__component__data_absent_reason__coding ;;
    relationship: one_to_many
  }

  join: observation__component__reference_range__applies_to {
    view_label: "Observation: Component Referencerange Appliesto"
    sql: LEFT JOIN UNNEST(${observation__component__reference_range.applies_to}) as observation__component__reference_range__applies_to ;;
    relationship: one_to_many
  }

  join: observation__component__reference_range__type__coding {
    view_label: "Observation: Component Referencerange Type Coding"
    sql: LEFT JOIN UNNEST(${observation__component__reference_range.type__coding}) as observation__component__reference_range__type__coding ;;
    relationship: one_to_many
  }

  join: observation__related__target__identifier__type__coding {
    view_label: "Observation: Related Target Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation__related.target__identifier__type__coding}) as observation__related__target__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__component__value__codeable_concept__coding {
    view_label: "Observation: Component Value Codeableconcept Coding"
    sql: LEFT JOIN UNNEST(${observation__component.value__codeable_concept__coding}) as observation__component__value__codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: observation__component__reference_range__applies_to__coding {
    view_label: "Observation: Component Referencerange Appliesto Coding"
    sql: LEFT JOIN UNNEST(${observation__component__reference_range__applies_to.coding}) as observation__component__reference_range__applies_to__coding ;;
    relationship: one_to_many
  }

  join: observation__identifier__assigner__identifier__type__coding {
    view_label: "Observation: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation__identifier.assigner__identifier__type__coding}) as observation__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__device__identifier__assigner__identifier__type__coding {
    view_label: "Observation: Device Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation.device__identifier__assigner__identifier__type__coding}) as observation__device__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__subject__identifier__assigner__identifier__type__coding {
    view_label: "Observation: Subject Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation.subject__identifier__assigner__identifier__type__coding}) as observation__subject__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__context__identifier__assigner__identifier__type__coding {
    view_label: "Observation: Context Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation.context__identifier__assigner__identifier__type__coding}) as observation__context__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__based_on__identifier__assigner__identifier__type__coding {
    view_label: "Observation: Basedon Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation__based_on.identifier__assigner__identifier__type__coding}) as observation__based_on__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__specimen__identifier__assigner__identifier__type__coding {
    view_label: "Observation: Specimen Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation.specimen__identifier__assigner__identifier__type__coding}) as observation__specimen__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__performer__identifier__assigner__identifier__type__coding {
    view_label: "Observation: Performer Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation__performer.identifier__assigner__identifier__type__coding}) as observation__performer__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: observation__related__target__identifier__assigner__identifier__type__coding {
    view_label: "Observation: Related Target Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${observation__related.target__identifier__assigner__identifier__type__coding}) as observation__related__target__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: organization {
  join: organization__type {
    view_label: "Organization: Type"
    sql: LEFT JOIN UNNEST(${organization.type}) as organization__type ;;
    relationship: one_to_many
  }

  join: organization__alias {
    view_label: "Organization: Alias"
    sql: LEFT JOIN UNNEST(${organization.alias}) as organization__alias ;;
    relationship: one_to_many
  }

  join: organization__address {
    view_label: "Organization: Address"
    sql: LEFT JOIN UNNEST(${organization.address}) as organization__address ;;
    relationship: one_to_many
  }

  join: organization__contact {
    view_label: "Organization: Contact"
    sql: LEFT JOIN UNNEST(${organization.contact}) as organization__contact ;;
    relationship: one_to_many
  }

  join: organization__telecom {
    view_label: "Organization: Telecom"
    sql: LEFT JOIN UNNEST(${organization.telecom}) as organization__telecom ;;
    relationship: one_to_many
  }

  join: organization__endpoint {
    view_label: "Organization: Endpoint"
    sql: LEFT JOIN UNNEST(${organization.endpoint}) as organization__endpoint ;;
    relationship: one_to_many
  }

  join: organization__identifier {
    view_label: "Organization: Identifier"
    sql: LEFT JOIN UNNEST(${organization.identifier}) as organization__identifier ;;
    relationship: one_to_many
  }

  join: organization__address__line {
    view_label: "Organization: Address Line"
    sql: LEFT JOIN UNNEST(${organization__address.line}) as organization__address__line ;;
    relationship: one_to_many
  }

  join: organization__meta__profile {
    view_label: "Organization: Meta Profile"
    sql: LEFT JOIN UNNEST(${organization.meta__profile}) as organization__meta__profile ;;
    relationship: one_to_many
  }

  join: organization__meta__tag {
    view_label: "Organization: Meta Tag"
    sql: LEFT JOIN UNNEST(${organization.meta__tag}) as organization__meta__tag ;;
    relationship: one_to_many
  }

  join: organization__type__coding {
    view_label: "Organization: Type Coding"
    sql: LEFT JOIN UNNEST(${organization__type.coding}) as organization__type__coding ;;
    relationship: one_to_many
  }

  join: organization__meta__security {
    view_label: "Organization: Meta Security"
    sql: LEFT JOIN UNNEST(${organization.meta__security}) as organization__meta__security ;;
    relationship: one_to_many
  }

  join: organization__contact__name__given {
    view_label: "Organization: Contact Name Given"
    sql: LEFT JOIN UNNEST(${organization__contact.name__given}) as organization__contact__name__given ;;
    relationship: one_to_many
  }

  join: organization__contact__name__prefix {
    view_label: "Organization: Contact Name Prefix"
    sql: LEFT JOIN UNNEST(${organization__contact.name__prefix}) as organization__contact__name__prefix ;;
    relationship: one_to_many
  }

  join: organization__contact__name__suffix {
    view_label: "Organization: Contact Name Suffix"
    sql: LEFT JOIN UNNEST(${organization__contact.name__suffix}) as organization__contact__name__suffix ;;
    relationship: one_to_many
  }

  join: organization__contact__telecom {
    view_label: "Organization: Contact Telecom"
    sql: LEFT JOIN UNNEST(${organization__contact.telecom}) as organization__contact__telecom ;;
    relationship: one_to_many
  }

  join: organization__contact__address__line {
    view_label: "Organization: Contact Address Line"
    sql: LEFT JOIN UNNEST(${organization__contact.address__line}) as organization__contact__address__line ;;
    relationship: one_to_many
  }

  join: organization__identifier__type__coding {
    view_label: "Organization: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${organization__identifier.type__coding}) as organization__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: organization__contact__purpose__coding {
    view_label: "Organization: Contact Purpose Coding"
    sql: LEFT JOIN UNNEST(${organization__contact.purpose__coding}) as organization__contact__purpose__coding ;;
    relationship: one_to_many
  }

  join: organization__part_of__identifier__type__coding {
    view_label: "Organization: Partof Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${organization.part_of__identifier__type__coding}) as organization__part_of__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: organization__endpoint__identifier__type__coding {
    view_label: "Organization: Endpoint Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${organization__endpoint.identifier__type__coding}) as organization__endpoint__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: organization__identifier__assigner__identifier__type__coding {
    view_label: "Organization: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${organization__identifier.assigner__identifier__type__coding}) as organization__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: organization__part_of__identifier__assigner__identifier__type__coding {
    view_label: "Organization: Partof Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${organization.part_of__identifier__assigner__identifier__type__coding}) as organization__part_of__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: organization__endpoint__identifier__assigner__identifier__type__coding {
    view_label: "Organization: Endpoint Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${organization__endpoint.identifier__assigner__identifier__type__coding}) as organization__endpoint__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: practitioner {
  join: practitioner__name {
    view_label: "Practitioner: Name"
    sql: LEFT JOIN UNNEST(${practitioner.name}) as practitioner__name ;;
    relationship: one_to_many
  }

  join: practitioner__photo {
    view_label: "Practitioner: Photo"
    sql: LEFT JOIN UNNEST(${practitioner.photo}) as practitioner__photo ;;
    relationship: one_to_many
  }

  join: practitioner__address {
    view_label: "Practitioner: Address"
    sql: LEFT JOIN UNNEST(${practitioner.address}) as practitioner__address ;;
    relationship: one_to_many
  }

  join: practitioner__telecom {
    view_label: "Practitioner: Telecom"
    sql: LEFT JOIN UNNEST(${practitioner.telecom}) as practitioner__telecom ;;
    relationship: one_to_many
  }

  join: practitioner__identifier {
    view_label: "Practitioner: Identifier"
    sql: LEFT JOIN UNNEST(${practitioner.identifier}) as practitioner__identifier ;;
    relationship: one_to_many
  }

  join: practitioner__name__given {
    view_label: "Practitioner: Name Given"
    sql: LEFT JOIN UNNEST(${practitioner__name.given}) as practitioner__name__given ;;
    relationship: one_to_many
  }

  join: practitioner__name__prefix {
    view_label: "Practitioner: Name Prefix"
    sql: LEFT JOIN UNNEST(${practitioner__name.prefix}) as practitioner__name__prefix ;;
    relationship: one_to_many
  }

  join: practitioner__name__suffix {
    view_label: "Practitioner: Name Suffix"
    sql: LEFT JOIN UNNEST(${practitioner__name.suffix}) as practitioner__name__suffix ;;
    relationship: one_to_many
  }

  join: practitioner__address__line {
    view_label: "Practitioner: Address Line"
    sql: LEFT JOIN UNNEST(${practitioner__address.line}) as practitioner__address__line ;;
    relationship: one_to_many
  }

  join: practitioner__meta__profile {
    view_label: "Practitioner: Meta Profile"
    sql: LEFT JOIN UNNEST(${practitioner.meta__profile}) as practitioner__meta__profile ;;
    relationship: one_to_many
  }

  join: practitioner__qualification {
    view_label: "Practitioner: Qualification"
    sql: LEFT JOIN UNNEST(${practitioner.qualification}) as practitioner__qualification ;;
    relationship: one_to_many
  }

  join: practitioner__meta__tag {
    view_label: "Practitioner: Meta Tag"
    sql: LEFT JOIN UNNEST(${practitioner.meta__tag}) as practitioner__meta__tag ;;
    relationship: one_to_many
  }

  join: practitioner__communication {
    view_label: "Practitioner: Communication"
    sql: LEFT JOIN UNNEST(${practitioner.communication}) as practitioner__communication ;;
    relationship: one_to_many
  }

  join: practitioner__meta__security {
    view_label: "Practitioner: Meta Security"
    sql: LEFT JOIN UNNEST(${practitioner.meta__security}) as practitioner__meta__security ;;
    relationship: one_to_many
  }

  join: practitioner__communication__coding {
    view_label: "Practitioner: Communication Coding"
    sql: LEFT JOIN UNNEST(${practitioner__communication.coding}) as practitioner__communication__coding ;;
    relationship: one_to_many
  }

  join: practitioner__identifier__type__coding {
    view_label: "Practitioner: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${practitioner__identifier.type__coding}) as practitioner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: practitioner__qualification__identifier {
    view_label: "Practitioner: Qualification Identifier"
    sql: LEFT JOIN UNNEST(${practitioner__qualification.identifier}) as practitioner__qualification__identifier ;;
    relationship: one_to_many
  }

  join: practitioner__qualification__code__coding {
    view_label: "Practitioner: Qualification Code Coding"
    sql: LEFT JOIN UNNEST(${practitioner__qualification.code__coding}) as practitioner__qualification__code__coding ;;
    relationship: one_to_many
  }

  join: practitioner__qualification__identifier__type__coding {
    view_label: "Practitioner: Qualification Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${practitioner__qualification__identifier.type__coding}) as practitioner__qualification__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: practitioner__identifier__assigner__identifier__type__coding {
    view_label: "Practitioner: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${practitioner__identifier.assigner__identifier__type__coding}) as practitioner__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: practitioner__qualification__issuer__identifier__type__coding {
    view_label: "Practitioner: Qualification Issuer Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${practitioner__qualification.issuer__identifier__type__coding}) as practitioner__qualification__issuer__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: practitioner__qualification__identifier__assigner__identifier__type__coding {
    view_label: "Practitioner: Qualification Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${practitioner__qualification__identifier.assigner__identifier__type__coding}) as practitioner__qualification__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: practitioner__qualification__issuer__identifier__assigner__identifier__type__coding {
    view_label: "Practitioner: Qualification Issuer Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${practitioner__qualification.issuer__identifier__assigner__identifier__type__coding}) as practitioner__qualification__issuer__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: medication_request {
  join: medication_request__note {
    view_label: "Medication Request: Note"
    sql: LEFT JOIN UNNEST(${medication_request.note}) as medication_request__note ;;
    relationship: one_to_many
  }

  join: medication_request__based_on {
    view_label: "Medication Request: Basedon"
    sql: LEFT JOIN UNNEST(${medication_request.based_on}) as medication_request__based_on ;;
    relationship: one_to_many
  }

  join: medication_request__definition {
    view_label: "Medication Request: Definition"
    sql: LEFT JOIN UNNEST(${medication_request.definition}) as medication_request__definition ;;
    relationship: one_to_many
  }

  join: medication_request__reason_code {
    view_label: "Medication Request: Reasoncode"
    sql: LEFT JOIN UNNEST(${medication_request.reason_code}) as medication_request__reason_code ;;
    relationship: one_to_many
  }

  join: medication_request__identifier {
    view_label: "Medication Request: Identifier"
    sql: LEFT JOIN UNNEST(${medication_request.identifier}) as medication_request__identifier ;;
    relationship: one_to_many
  }

  join: medication_request__meta__profile {
    view_label: "Medication Request: Meta Profile"
    sql: LEFT JOIN UNNEST(${medication_request.meta__profile}) as medication_request__meta__profile ;;
    relationship: one_to_many
  }

  join: medication_request__event_history {
    view_label: "Medication Request: Eventhistory"
    sql: LEFT JOIN UNNEST(${medication_request.event_history}) as medication_request__event_history ;;
    relationship: one_to_many
  }

  join: medication_request__detected_issue {
    view_label: "Medication Request: Detectedissue"
    sql: LEFT JOIN UNNEST(${medication_request.detected_issue}) as medication_request__detected_issue ;;
    relationship: one_to_many
  }

  join: medication_request__meta__tag {
    view_label: "Medication Request: Meta Tag"
    sql: LEFT JOIN UNNEST(${medication_request.meta__tag}) as medication_request__meta__tag ;;
    relationship: one_to_many
  }

  join: medication_request__reason_reference {
    view_label: "Medication Request: Reasonreference"
    sql: LEFT JOIN UNNEST(${medication_request.reason_reference}) as medication_request__reason_reference ;;
    relationship: one_to_many
  }

  join: medication_request__dosage_instruction {
    view_label: "Medication Request: Dosageinstruction"
    sql: LEFT JOIN UNNEST(${medication_request.dosage_instruction}) as medication_request__dosage_instruction ;;
    relationship: one_to_many
  }

  join: medication_request__meta__security {
    view_label: "Medication Request: Meta Security"
    sql: LEFT JOIN UNNEST(${medication_request.meta__security}) as medication_request__meta__security ;;
    relationship: one_to_many
  }

  join: medication_request__category__coding {
    view_label: "Medication Request: Category Coding"
    sql: LEFT JOIN UNNEST(${medication_request.category__coding}) as medication_request__category__coding ;;
    relationship: one_to_many
  }

  join: medication_request__supporting_information {
    view_label: "Medication Request: Supportinginformation"
    sql: LEFT JOIN UNNEST(${medication_request.supporting_information}) as medication_request__supporting_information ;;
    relationship: one_to_many
  }

  join: medication_request__reason_code__coding {
    view_label: "Medication Request: Reasoncode Coding"
    sql: LEFT JOIN UNNEST(${medication_request__reason_code.coding}) as medication_request__reason_code__coding ;;
    relationship: one_to_many
  }

  join: medication_request__identifier__type__coding {
    view_label: "Medication Request: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__identifier.type__coding}) as medication_request__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__dosage_instruction__timing__event {
    view_label: "Medication Request: Dosageinstruction Timing Event"
    sql: LEFT JOIN UNNEST(${medication_request__dosage_instruction.timing__event}) as medication_request__dosage_instruction__timing__event ;;
    relationship: one_to_many
  }

  join: medication_request__substitution__reason__coding {
    view_label: "Medication Request: Substitution Reason Coding"
    sql: LEFT JOIN UNNEST(${medication_request.substitution__reason__coding}) as medication_request__substitution__reason__coding ;;
    relationship: one_to_many
  }

  join: medication_request__group_identifier__type__coding {
    view_label: "Medication Request: Groupidentifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.group_identifier__type__coding}) as medication_request__group_identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__dosage_instruction__site__coding {
    view_label: "Medication Request: Dosageinstruction Site Coding"
    sql: LEFT JOIN UNNEST(${medication_request__dosage_instruction.site__coding}) as medication_request__dosage_instruction__site__coding ;;
    relationship: one_to_many
  }

  join: medication_request__subject__identifier__type__coding {
    view_label: "Medication Request: Subject Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.subject__identifier__type__coding}) as medication_request__subject__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__context__identifier__type__coding {
    view_label: "Medication Request: Context Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.context__identifier__type__coding}) as medication_request__context__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__based_on__identifier__type__coding {
    view_label: "Medication Request: Basedon Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__based_on.identifier__type__coding}) as medication_request__based_on__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__dosage_instruction__route__coding {
    view_label: "Medication Request: Dosageinstruction Route Coding"
    sql: LEFT JOIN UNNEST(${medication_request__dosage_instruction.route__coding}) as medication_request__dosage_instruction__route__coding ;;
    relationship: one_to_many
  }

  join: medication_request__recorder__identifier__type__coding {
    view_label: "Medication Request: Recorder Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.recorder__identifier__type__coding}) as medication_request__recorder__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__dosage_instruction__method__coding {
    view_label: "Medication Request: Dosageinstruction Method Coding"
    sql: LEFT JOIN UNNEST(${medication_request__dosage_instruction.method__coding}) as medication_request__dosage_instruction__method__coding ;;
    relationship: one_to_many
  }

  join: medication_request__definition__identifier__type__coding {
    view_label: "Medication Request: Definition Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__definition.identifier__type__coding}) as medication_request__definition__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__medication__codeable_concept__coding {
    view_label: "Medication Request: Medication Codeableconcept Coding"
    sql: LEFT JOIN UNNEST(${medication_request.medication__codeable_concept__coding}) as medication_request__medication__codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: medication_request__dosage_instruction__timing__repeat__when {
    view_label: "Medication Request: Dosageinstruction Timing Repeat When"
    sql: LEFT JOIN UNNEST(${medication_request__dosage_instruction.timing__repeat__when}) as medication_request__dosage_instruction__timing__repeat__when ;;
    relationship: one_to_many
  }

  join: medication_request__event_history__identifier__type__coding {
    view_label: "Medication Request: Eventhistory Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__event_history.identifier__type__coding}) as medication_request__event_history__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__detected_issue__identifier__type__coding {
    view_label: "Medication Request: Detectedissue Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__detected_issue.identifier__type__coding}) as medication_request__detected_issue__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__dosage_instruction__timing__code__coding {
    view_label: "Medication Request: Dosageinstruction Timing Code Coding"
    sql: LEFT JOIN UNNEST(${medication_request__dosage_instruction.timing__code__coding}) as medication_request__dosage_instruction__timing__code__coding ;;
    relationship: one_to_many
  }

  join: medication_request__dosage_instruction__timing__repeat__day_of_week {
    view_label: "Medication Request: Dosageinstruction Timing Repeat Dayofweek"
    sql: LEFT JOIN UNNEST(${medication_request__dosage_instruction.timing__repeat__day_of_week}) as medication_request__dosage_instruction__timing__repeat__day_of_week ;;
    relationship: one_to_many
  }

  join: medication_request__dosage_instruction__timing__repeat__time_of_day {
    view_label: "Medication Request: Dosageinstruction Timing Repeat Timeofday"
    sql: LEFT JOIN UNNEST(${medication_request__dosage_instruction.timing__repeat__time_of_day}) as medication_request__dosage_instruction__timing__repeat__time_of_day ;;
    relationship: one_to_many
  }

  join: medication_request__reason_reference__identifier__type__coding {
    view_label: "Medication Request: Reasonreference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__reason_reference.identifier__type__coding}) as medication_request__reason_reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__requester__agent__identifier__type__coding {
    view_label: "Medication Request: Requester Agent Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.requester__agent__identifier__type__coding}) as medication_request__requester__agent__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__dosage_instruction__additional_instruction {
    view_label: "Medication Request: Dosageinstruction Additionalinstruction"
    sql: LEFT JOIN UNNEST(${medication_request__dosage_instruction.additional_instruction}) as medication_request__dosage_instruction__additional_instruction ;;
    relationship: one_to_many
  }

  join: medication_request__prior_prescription__identifier__type__coding {
    view_label: "Medication Request: Priorprescription Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.prior_prescription__identifier__type__coding}) as medication_request__prior_prescription__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__identifier.assigner__identifier__type__coding}) as medication_request__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__requester__on_behalf_of__identifier__type__coding {
    view_label: "Medication Request: Requester Onbehalfof Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.requester__on_behalf_of__identifier__type__coding}) as medication_request__requester__on_behalf_of__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__medication__reference__identifier__type__coding {
    view_label: "Medication Request: Medication Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.medication__reference__identifier__type__coding}) as medication_request__medication__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__note__author__reference__identifier__type__coding {
    view_label: "Medication Request: Note Author Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__note.author__reference__identifier__type__coding}) as medication_request__note__author__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__supporting_information__identifier__type__coding {
    view_label: "Medication Request: Supportinginformation Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__supporting_information.identifier__type__coding}) as medication_request__supporting_information__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__dosage_instruction__additional_instruction__coding {
    view_label: "Medication Request: Dosageinstruction Additionalinstruction Coding"
    sql: LEFT JOIN UNNEST(${medication_request__dosage_instruction__additional_instruction.coding}) as medication_request__dosage_instruction__additional_instruction__coding ;;
    relationship: one_to_many
  }

  join: medication_request__group_identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Groupidentifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.group_identifier__assigner__identifier__type__coding}) as medication_request__group_identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__dispense_request__performer__identifier__type__coding {
    view_label: "Medication Request: Dispenserequest Performer Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.dispense_request__performer__identifier__type__coding}) as medication_request__dispense_request__performer__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__dosage_instruction__as_needed__codeable_concept__coding {
    view_label: "Medication Request: Dosageinstruction Asneeded Codeableconcept Coding"
    sql: LEFT JOIN UNNEST(${medication_request__dosage_instruction.as_needed__codeable_concept__coding}) as medication_request__dosage_instruction__as_needed__codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: medication_request__subject__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Subject Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.subject__identifier__assigner__identifier__type__coding}) as medication_request__subject__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__context__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Context Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.context__identifier__assigner__identifier__type__coding}) as medication_request__context__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__based_on__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Basedon Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__based_on.identifier__assigner__identifier__type__coding}) as medication_request__based_on__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__recorder__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Recorder Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.recorder__identifier__assigner__identifier__type__coding}) as medication_request__recorder__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__definition__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Definition Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__definition.identifier__assigner__identifier__type__coding}) as medication_request__definition__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__event_history__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Eventhistory Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__event_history.identifier__assigner__identifier__type__coding}) as medication_request__event_history__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__detected_issue__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Detectedissue Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__detected_issue.identifier__assigner__identifier__type__coding}) as medication_request__detected_issue__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__reason_reference__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Reasonreference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__reason_reference.identifier__assigner__identifier__type__coding}) as medication_request__reason_reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__requester__agent__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Requester Agent Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.requester__agent__identifier__assigner__identifier__type__coding}) as medication_request__requester__agent__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__shr_base_action_code_extension__value__codeable_concept__coding {
    view_label: "Medication Request: Shr Base Actioncode Extension Value Codeableconcept Coding"
    sql: LEFT JOIN UNNEST(${medication_request.shr_base_action_code_extension__value__codeable_concept__coding}) as medication_request__shr_base_action_code_extension__value__codeable_concept__coding ;;
    relationship: one_to_many
  }

  join: medication_request__prior_prescription__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Priorprescription Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.prior_prescription__identifier__assigner__identifier__type__coding}) as medication_request__prior_prescription__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__requester__on_behalf_of__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Requester Onbehalfof Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.requester__on_behalf_of__identifier__assigner__identifier__type__coding}) as medication_request__requester__on_behalf_of__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__medication__reference__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Medication Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.medication__reference__identifier__assigner__identifier__type__coding}) as medication_request__medication__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__note__author__reference__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Note Author Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__note.author__reference__identifier__assigner__identifier__type__coding}) as medication_request__note__author__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__supporting_information__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Supportinginformation Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request__supporting_information.identifier__assigner__identifier__type__coding}) as medication_request__supporting_information__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__group_identifier__assigner__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Groupidentifier Assigner Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.group_identifier__assigner__identifier__assigner__identifier__type__coding}) as medication_request__group_identifier__assigner__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: medication_request__dispense_request__performer__identifier__assigner__identifier__type__coding {
    view_label: "Medication Request: Dispenserequest Performer Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${medication_request.dispense_request__performer__identifier__assigner__identifier__type__coding}) as medication_request__dispense_request__performer__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: patient {
  join: patient__link {
    view_label: "Patient: Link"
    sql: LEFT JOIN UNNEST(${patient.link}) as patient__link ;;
    relationship: one_to_many
  }

  join: patient__name {
    view_label: "Patient: Name"
    sql: LEFT JOIN UNNEST(${patient.name}) as patient__name ;;
    relationship: one_to_many
  }

  join: patient__photo {
    view_label: "Patient: Photo"
    sql: LEFT JOIN UNNEST(${patient.photo}) as patient__photo ;;
    relationship: one_to_many
  }

  join: patient__contact {
    view_label: "Patient: Contact"
    sql: LEFT JOIN UNNEST(${patient.contact}) as patient__contact ;;
    relationship: one_to_many
  }

  join: patient__telecom {
    view_label: "Patient: Telecom"
    sql: LEFT JOIN UNNEST(${patient.telecom}) as patient__telecom ;;
    relationship: one_to_many
  }

  join: patient__address {
    view_label: "Patient: Address"
    sql: LEFT JOIN UNNEST(${patient.address}) as patient__address ;;
    relationship: one_to_many
  }

  join: patient__identifier {
    view_label: "Patient: Identifier"
    sql: LEFT JOIN UNNEST(${patient.identifier}) as patient__identifier ;;
    relationship: one_to_many
  }

  join: patient__name__given {
    view_label: "Patient: Name Given"
    sql: LEFT JOIN UNNEST(${patient__name.given}) as patient__name__given ;;
    relationship: one_to_many
  }

  join: patient__name__prefix {
    view_label: "Patient: Name Prefix"
    sql: LEFT JOIN UNNEST(${patient__name.prefix}) as patient__name__prefix ;;
    relationship: one_to_many
  }

  join: patient__name__suffix {
    view_label: "Patient: Name Suffix"
    sql: LEFT JOIN UNNEST(${patient__name.suffix}) as patient__name__suffix ;;
    relationship: one_to_many
  }

  join: patient__address__line {
    view_label: "Patient: Address Line"
    sql: LEFT JOIN UNNEST(${patient__address.line}) as patient__address__line ;;
    relationship: one_to_many
  }

  join: patient__meta__profile {
    view_label: "Patient: Meta Profile"
    sql: LEFT JOIN UNNEST(${patient.meta__profile}) as patient__meta__profile ;;
    relationship: one_to_many
  }

  join: patient__communication {
    view_label: "Patient: Communication"
    sql: LEFT JOIN UNNEST(${patient.communication}) as patient__communication ;;
    relationship: one_to_many
  }

  join: patient__meta__tag {
    view_label: "Patient: Meta Tag"
    sql: LEFT JOIN UNNEST(${patient.meta__tag}) as patient__meta__tag ;;
    relationship: one_to_many
  }

  join: patient__contact__name__given {
    view_label: "Patient: Contact Name Given"
    sql: LEFT JOIN UNNEST(${patient__contact.name__given}) as patient__contact__name__given ;;
    relationship: one_to_many
  }

  join: patient__meta__security {
    view_label: "Patient: Meta Security"
    sql: LEFT JOIN UNNEST(${patient.meta__security}) as patient__meta__security ;;
    relationship: one_to_many
  }

  join: patient__contact__name__prefix {
    view_label: "Patient: Contact Name Prefix"
    sql: LEFT JOIN UNNEST(${patient__contact.name__prefix}) as patient__contact__name__prefix ;;
    relationship: one_to_many
  }

  join: patient__contact__name__suffix {
    view_label: "Patient: Contact Name Suffix"
    sql: LEFT JOIN UNNEST(${patient__contact.name__suffix}) as patient__contact__name__suffix ;;
    relationship: one_to_many
  }

  join: patient__contact__telecom {
    view_label: "Patient: Contact Telecom"
    sql: LEFT JOIN UNNEST(${patient__contact.telecom}) as patient__contact__telecom ;;
    relationship: one_to_many
  }

  join: patient__general_practitioner {
    view_label: "Patient: Generalpractitioner"
    sql: LEFT JOIN UNNEST(${patient.general_practitioner}) as patient__general_practitioner ;;
    relationship: one_to_many
  }

  join: patient__contact__address__line {
    view_label: "Patient: Contact Address Line"
    sql: LEFT JOIN UNNEST(${patient__contact.address__line}) as patient__contact__address__line ;;
    relationship: one_to_many
  }

  join: patient__animal__breed__coding {
    view_label: "Patient: Animal Breed Coding"
    sql: LEFT JOIN UNNEST(${patient.animal__breed__coding}) as patient__animal__breed__coding ;;
    relationship: one_to_many
  }

  join: patient__contact__relationship {
    view_label: "Patient: Contact Relationship"
    sql: LEFT JOIN UNNEST(${patient__contact.relationship}) as patient__contact__relationship ;;
    relationship: one_to_many
  }

  join: patient__marital_status__coding {
    view_label: "Patient: Maritalstatus Coding"
    sql: LEFT JOIN UNNEST(${patient.marital_status__coding}) as patient__marital_status__coding ;;
    relationship: one_to_many
  }

  join: patient__animal__species__coding {
    view_label: "Patient: Animal Species Coding"
    sql: LEFT JOIN UNNEST(${patient.animal__species__coding}) as patient__animal__species__coding ;;
    relationship: one_to_many
  }

  join: patient__identifier__type__coding {
    view_label: "Patient: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__identifier.type__coding}) as patient__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: patient__animal__gender_status__coding {
    view_label: "Patient: Animal Genderstatus Coding"
    sql: LEFT JOIN UNNEST(${patient.animal__gender_status__coding}) as patient__animal__gender_status__coding ;;
    relationship: one_to_many
  }

  join: patient__contact__relationship__coding {
    view_label: "Patient: Contact Relationship Coding"
    sql: LEFT JOIN UNNEST(${patient__contact__relationship.coding}) as patient__contact__relationship__coding ;;
    relationship: one_to_many
  }

  join: patient__communication__language__coding {
    view_label: "Patient: Communication Language Coding"
    sql: LEFT JOIN UNNEST(${patient__communication.language__coding}) as patient__communication__language__coding ;;
    relationship: one_to_many
  }

  join: patient__link__other__identifier__type__coding {
    view_label: "Patient: Link Other Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__link.other__identifier__type__coding}) as patient__link__other__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: patient__general_practitioner__identifier__type__coding {
    view_label: "Patient: Generalpractitioner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__general_practitioner.identifier__type__coding}) as patient__general_practitioner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: patient__identifier__assigner__identifier__type__coding {
    view_label: "Patient: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__identifier.assigner__identifier__type__coding}) as patient__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: patient__contact__organization__identifier__type__coding {
    view_label: "Patient: Contact Organization Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__contact.organization__identifier__type__coding}) as patient__contact__organization__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: patient__managing_organization__identifier__type__coding {
    view_label: "Patient: Managingorganization Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient.managing_organization__identifier__type__coding}) as patient__managing_organization__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: patient__link__other__identifier__assigner__identifier__type__coding {
    view_label: "Patient: Link Other Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__link.other__identifier__assigner__identifier__type__coding}) as patient__link__other__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: patient__general_practitioner__identifier__assigner__identifier__type__coding {
    view_label: "Patient: Generalpractitioner Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__general_practitioner.identifier__assigner__identifier__type__coding}) as patient__general_practitioner__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: patient__contact__organization__identifier__assigner__identifier__type__coding {
    view_label: "Patient: Contact Organization Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient__contact.organization__identifier__assigner__identifier__type__coding}) as patient__contact__organization__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: patient__managing_organization__identifier__assigner__identifier__type__coding {
    view_label: "Patient: Managingorganization Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${patient.managing_organization__identifier__assigner__identifier__type__coding}) as patient__managing_organization__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

explore: procedure {
  join: procedure__note {
    view_label: "Procedure: Note"
    sql: LEFT JOIN UNNEST(${procedure.note}) as procedure__note ;;
    relationship: one_to_many
  }

  join: procedure__part_of {
    view_label: "Procedure: Partof"
    sql: LEFT JOIN UNNEST(${procedure.part_of}) as procedure__part_of ;;
    relationship: one_to_many
  }

  join: procedure__report {
    view_label: "Procedure: Report"
    sql: LEFT JOIN UNNEST(${procedure.report}) as procedure__report ;;
    relationship: one_to_many
  }

  join: procedure__based_on {
    view_label: "Procedure: Basedon"
    sql: LEFT JOIN UNNEST(${procedure.based_on}) as procedure__based_on ;;
    relationship: one_to_many
  }

  join: procedure__follow_up {
    view_label: "Procedure: Followup"
    sql: LEFT JOIN UNNEST(${procedure.follow_up}) as procedure__follow_up ;;
    relationship: one_to_many
  }

  join: procedure__used_code {
    view_label: "Procedure: Usedcode"
    sql: LEFT JOIN UNNEST(${procedure.used_code}) as procedure__used_code ;;
    relationship: one_to_many
  }

  join: procedure__body_site {
    view_label: "Procedure: Bodysite"
    sql: LEFT JOIN UNNEST(${procedure.body_site}) as procedure__body_site ;;
    relationship: one_to_many
  }

  join: procedure__performer {
    view_label: "Procedure: Performer"
    sql: LEFT JOIN UNNEST(${procedure.performer}) as procedure__performer ;;
    relationship: one_to_many
  }

  join: procedure__definition {
    view_label: "Procedure: Definition"
    sql: LEFT JOIN UNNEST(${procedure.definition}) as procedure__definition ;;
    relationship: one_to_many
  }

  join: procedure__reason_code {
    view_label: "Procedure: Reasoncode"
    sql: LEFT JOIN UNNEST(${procedure.reason_code}) as procedure__reason_code ;;
    relationship: one_to_many
  }

  join: procedure__identifier {
    view_label: "Procedure: Identifier"
    sql: LEFT JOIN UNNEST(${procedure.identifier}) as procedure__identifier ;;
    relationship: one_to_many
  }

  join: procedure__focal_device {
    view_label: "Procedure: Focaldevice"
    sql: LEFT JOIN UNNEST(${procedure.focal_device}) as procedure__focal_device ;;
    relationship: one_to_many
  }

  join: procedure__complication {
    view_label: "Procedure: Complication"
    sql: LEFT JOIN UNNEST(${procedure.complication}) as procedure__complication ;;
    relationship: one_to_many
  }

  join: procedure__meta__profile {
    view_label: "Procedure: Meta Profile"
    sql: LEFT JOIN UNNEST(${procedure.meta__profile}) as procedure__meta__profile ;;
    relationship: one_to_many
  }

  join: procedure__used_reference {
    view_label: "Procedure: Usedreference"
    sql: LEFT JOIN UNNEST(${procedure.used_reference}) as procedure__used_reference ;;
    relationship: one_to_many
  }

  join: procedure__meta__tag {
    view_label: "Procedure: Meta Tag"
    sql: LEFT JOIN UNNEST(${procedure.meta__tag}) as procedure__meta__tag ;;
    relationship: one_to_many
  }

  join: procedure__reason_reference {
    view_label: "Procedure: Reasonreference"
    sql: LEFT JOIN UNNEST(${procedure.reason_reference}) as procedure__reason_reference ;;
    relationship: one_to_many
  }

  join: procedure__code__coding {
    view_label: "Procedure: Code Coding"
    sql: LEFT JOIN UNNEST(${procedure.code__coding}) as procedure__code__coding ;;
    relationship: one_to_many
  }

  join: procedure__complication_detail {
    view_label: "Procedure: Complicationdetail"
    sql: LEFT JOIN UNNEST(${procedure.complication_detail}) as procedure__complication_detail ;;
    relationship: one_to_many
  }

  join: procedure__meta__security {
    view_label: "Procedure: Meta Security"
    sql: LEFT JOIN UNNEST(${procedure.meta__security}) as procedure__meta__security ;;
    relationship: one_to_many
  }

  join: procedure__outcome__coding {
    view_label: "Procedure: Outcome Coding"
    sql: LEFT JOIN UNNEST(${procedure.outcome__coding}) as procedure__outcome__coding ;;
    relationship: one_to_many
  }

  join: procedure__follow_up__coding {
    view_label: "Procedure: Followup Coding"
    sql: LEFT JOIN UNNEST(${procedure__follow_up.coding}) as procedure__follow_up__coding ;;
    relationship: one_to_many
  }

  join: procedure__used_code__coding {
    view_label: "Procedure: Usedcode Coding"
    sql: LEFT JOIN UNNEST(${procedure__used_code.coding}) as procedure__used_code__coding ;;
    relationship: one_to_many
  }

  join: procedure__body_site__coding {
    view_label: "Procedure: Bodysite Coding"
    sql: LEFT JOIN UNNEST(${procedure__body_site.coding}) as procedure__body_site__coding ;;
    relationship: one_to_many
  }

  join: procedure__category__coding {
    view_label: "Procedure: Category Coding"
    sql: LEFT JOIN UNNEST(${procedure.category__coding}) as procedure__category__coding ;;
    relationship: one_to_many
  }

  join: procedure__reason_code__coding {
    view_label: "Procedure: Reasoncode Coding"
    sql: LEFT JOIN UNNEST(${procedure__reason_code.coding}) as procedure__reason_code__coding ;;
    relationship: one_to_many
  }

  join: procedure__complication__coding {
    view_label: "Procedure: Complication Coding"
    sql: LEFT JOIN UNNEST(${procedure__complication.coding}) as procedure__complication__coding ;;
    relationship: one_to_many
  }

  join: procedure__not_done_reason__coding {
    view_label: "Procedure: Notdonereason Coding"
    sql: LEFT JOIN UNNEST(${procedure.not_done_reason__coding}) as procedure__not_done_reason__coding ;;
    relationship: one_to_many
  }

  join: procedure__performer__role__coding {
    view_label: "Procedure: Performer Role Coding"
    sql: LEFT JOIN UNNEST(${procedure__performer.role__coding}) as procedure__performer__role__coding ;;
    relationship: one_to_many
  }

  join: procedure__identifier__type__coding {
    view_label: "Procedure: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__identifier.type__coding}) as procedure__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__focal_device__action__coding {
    view_label: "Procedure: Focaldevice Action Coding"
    sql: LEFT JOIN UNNEST(${procedure__focal_device.action__coding}) as procedure__focal_device__action__coding ;;
    relationship: one_to_many
  }

  join: procedure__part_of__identifier__type__coding {
    view_label: "Procedure: Partof Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__part_of.identifier__type__coding}) as procedure__part_of__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__report__identifier__type__coding {
    view_label: "Procedure: Report Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__report.identifier__type__coding}) as procedure__report__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__subject__identifier__type__coding {
    view_label: "Procedure: Subject Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure.subject__identifier__type__coding}) as procedure__subject__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__context__identifier__type__coding {
    view_label: "Procedure: Context Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure.context__identifier__type__coding}) as procedure__context__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__based_on__identifier__type__coding {
    view_label: "Procedure: Basedon Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__based_on.identifier__type__coding}) as procedure__based_on__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__location__identifier__type__coding {
    view_label: "Procedure: Location Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure.location__identifier__type__coding}) as procedure__location__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__definition__identifier__type__coding {
    view_label: "Procedure: Definition Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__definition.identifier__type__coding}) as procedure__definition__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__used_reference__identifier__type__coding {
    view_label: "Procedure: Usedreference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__used_reference.identifier__type__coding}) as procedure__used_reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__reason_reference__identifier__type__coding {
    view_label: "Procedure: Reasonreference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__reason_reference.identifier__type__coding}) as procedure__reason_reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__performer__actor__identifier__type__coding {
    view_label: "Procedure: Performer Actor Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__performer.actor__identifier__type__coding}) as procedure__performer__actor__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__complication_detail__identifier__type__coding {
    view_label: "Procedure: Complicationdetail Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__complication_detail.identifier__type__coding}) as procedure__complication_detail__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__identifier.assigner__identifier__type__coding}) as procedure__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__performer__on_behalf_of__identifier__type__coding {
    view_label: "Procedure: Performer Onbehalfof Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__performer.on_behalf_of__identifier__type__coding}) as procedure__performer__on_behalf_of__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__note__author__reference__identifier__type__coding {
    view_label: "Procedure: Note Author Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__note.author__reference__identifier__type__coding}) as procedure__note__author__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__focal_device__manipulated__identifier__type__coding {
    view_label: "Procedure: Focaldevice Manipulated Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__focal_device.manipulated__identifier__type__coding}) as procedure__focal_device__manipulated__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__part_of__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Partof Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__part_of.identifier__assigner__identifier__type__coding}) as procedure__part_of__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__report__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Report Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__report.identifier__assigner__identifier__type__coding}) as procedure__report__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__subject__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Subject Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure.subject__identifier__assigner__identifier__type__coding}) as procedure__subject__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__context__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Context Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure.context__identifier__assigner__identifier__type__coding}) as procedure__context__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__based_on__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Basedon Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__based_on.identifier__assigner__identifier__type__coding}) as procedure__based_on__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__location__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Location Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure.location__identifier__assigner__identifier__type__coding}) as procedure__location__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__definition__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Definition Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__definition.identifier__assigner__identifier__type__coding}) as procedure__definition__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__used_reference__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Usedreference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__used_reference.identifier__assigner__identifier__type__coding}) as procedure__used_reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__reason_reference__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Reasonreference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__reason_reference.identifier__assigner__identifier__type__coding}) as procedure__reason_reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__performer__actor__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Performer Actor Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__performer.actor__identifier__assigner__identifier__type__coding}) as procedure__performer__actor__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__complication_detail__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Complicationdetail Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__complication_detail.identifier__assigner__identifier__type__coding}) as procedure__complication_detail__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__performer__on_behalf_of__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Performer Onbehalfof Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__performer.on_behalf_of__identifier__assigner__identifier__type__coding}) as procedure__performer__on_behalf_of__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__note__author__reference__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Note Author Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__note.author__reference__identifier__assigner__identifier__type__coding}) as procedure__note__author__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__focal_device__manipulated__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Focaldevice Manipulated Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__focal_device.manipulated__identifier__assigner__identifier__type__coding}) as procedure__focal_device__manipulated__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}
