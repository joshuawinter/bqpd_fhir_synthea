# The name of this view in Looker is "Practitioner"
view: practitioner {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bigquery-public-data.fhir_synthea.practitioner`
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
  # This dimension will be called "Active" in Explore.

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: address {
    hidden: yes
    sql: ${TABLE}.address ;;
  }

  dimension: birth_date {
    type: string
    sql: ${TABLE}.birthDate ;;
  }

  dimension: communication {
    hidden: yes
    sql: ${TABLE}.communication ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
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

  dimension: name {
    hidden: yes
    sql: ${TABLE}.name ;;
  }

  dimension: photo {
    hidden: yes
    sql: ${TABLE}.photo ;;
  }

  dimension: qualification {
    hidden: yes
    sql: ${TABLE}.qualification ;;
  }

  dimension: telecom {
    hidden: yes
    sql: ${TABLE}.telecom ;;
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
    drill_fields: [id, name]
  }
}

# The name of this view in Looker is "Practitioner Name"
view: practitioner__name {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Family" in Explore.

  dimension: family {
    type: string
    sql: family ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: given {
    hidden: yes
    sql: given ;;
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

  dimension: practitioner__name {
    type: string
    hidden: yes
    sql: practitioner__name ;;
  }

  dimension: prefix {
    hidden: yes
    sql: prefix ;;
  }

  dimension: suffix {
    hidden: yes
    sql: suffix ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }

  dimension: use {
    type: string
    sql: use ;;
  }
}

# The name of this view in Looker is "Practitioner Photo"
view: practitioner__photo {
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

  dimension: hash {
    type: string
    sql: `hash`
      ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: practitioner__photo {
    type: string
    hidden: yes
    sql: practitioner__photo ;;
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

# The name of this view in Looker is "Practitioner Address"
view: practitioner__address {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: country ;;
  }

  dimension: district {
    type: string
    sql: district ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: line {
    hidden: yes
    sql: line ;;
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

  dimension: postal_code {
    type: string
    sql: postalCode ;;
  }

  dimension: practitioner__address {
    type: string
    hidden: yes
    sql: practitioner__address ;;
  }

  dimension: state {
    type: string
    sql: state ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }

  dimension: type {
    type: string
    sql: type ;;
  }

  dimension: use {
    type: string
    sql: use ;;
  }
}

# The name of this view in Looker is "Practitioner Telecom"
view: practitioner__telecom {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Period End" in Explore.

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

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: practitioner__telecom {
    type: string
    hidden: yes
    sql: practitioner__telecom ;;
  }

  dimension: rank {
    type: number
    sql: rank ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_rank {
    type: sum
    sql: ${rank} ;;
  }

  measure: average_rank {
    type: average
    sql: ${rank} ;;
  }

  dimension: system {
    type: string
    sql: system ;;
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

# The name of this view in Looker is "Practitioner Identifier"
view: practitioner__identifier {
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

  dimension: practitioner__identifier {
    type: string
    hidden: yes
    sql: practitioner__identifier ;;
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

# The name of this view in Looker is "Practitioner Name Given"
view: practitioner__name__given {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Practitioner Name Given" in Explore.

  dimension: practitioner__name__given {
    type: string
    sql: practitioner__name__given ;;
  }
}

# The name of this view in Looker is "Practitioner Name Prefix"
view: practitioner__name__prefix {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Practitioner Name Prefix" in Explore.

  dimension: practitioner__name__prefix {
    type: string
    sql: practitioner__name__prefix ;;
  }
}

# The name of this view in Looker is "Practitioner Name Suffix"
view: practitioner__name__suffix {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Practitioner Name Suffix" in Explore.

  dimension: practitioner__name__suffix {
    type: string
    sql: practitioner__name__suffix ;;
  }
}

# The name of this view in Looker is "Practitioner Address Line"
view: practitioner__address__line {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Practitioner Address Line" in Explore.

  dimension: practitioner__address__line {
    type: string
    sql: practitioner__address__line ;;
  }
}

# The name of this view in Looker is "Practitioner Meta Profile"
view: practitioner__meta__profile {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Practitioner Meta Profile" in Explore.

  dimension: practitioner__meta__profile {
    type: string
    sql: practitioner__meta__profile ;;
  }
}

# The name of this view in Looker is "Practitioner Qualification"
view: practitioner__qualification {
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

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: issuer__display {
    type: string
    sql: ${TABLE}.issuer.display ;;
    group_label: "Issuer"
    group_item_label: "Display"
  }

  dimension: issuer__identifier__assigner__display {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.display ;;
    group_label: "Issuer Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: issuer__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.assigner.display ;;
    group_label: "Issuer Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: issuer__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Issuer Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: issuer__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Issuer Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: issuer__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.period.`end` ;;
    group_label: "Issuer Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: issuer__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.period.start ;;
    group_label: "Issuer Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: issuer__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.system ;;
    group_label: "Issuer Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: issuer__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.issuer.identifier.assigner.identifier.type.coding ;;
    group_label: "Issuer Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: issuer__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.type.text ;;
    group_label: "Issuer Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: issuer__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.use ;;
    group_label: "Issuer Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: issuer__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.value ;;
    group_label: "Issuer Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: issuer__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.organizationId ;;
    group_label: "Issuer Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: issuer__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.reference ;;
    group_label: "Issuer Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: issuer__identifier__period__end {
    type: string
    sql: ${TABLE}.issuer.identifier.period.`end` ;;
    group_label: "Issuer Identifier Period"
    group_item_label: "End"
  }

  dimension: issuer__identifier__period__start {
    type: string
    sql: ${TABLE}.issuer.identifier.period.start ;;
    group_label: "Issuer Identifier Period"
    group_item_label: "Start"
  }

  dimension: issuer__identifier__system {
    type: string
    sql: ${TABLE}.issuer.identifier.system ;;
    group_label: "Issuer Identifier"
    group_item_label: "System"
  }

  dimension: issuer__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.issuer.identifier.type.coding ;;
    group_label: "Issuer Identifier Type"
    group_item_label: "Coding"
  }

  dimension: issuer__identifier__type__text {
    type: string
    sql: ${TABLE}.issuer.identifier.type.text ;;
    group_label: "Issuer Identifier Type"
    group_item_label: "Text"
  }

  dimension: issuer__identifier__use {
    type: string
    sql: ${TABLE}.issuer.identifier.use ;;
    group_label: "Issuer Identifier"
    group_item_label: "Use"
  }

  dimension: issuer__identifier__value {
    type: string
    sql: ${TABLE}.issuer.identifier.value ;;
    group_label: "Issuer Identifier"
    group_item_label: "Value"
  }

  dimension: issuer__organization_id {
    type: string
    sql: ${TABLE}.issuer.organizationId ;;
    group_label: "Issuer"
    group_item_label: "Organization ID"
  }

  dimension: issuer__reference {
    type: string
    sql: ${TABLE}.issuer.reference ;;
    group_label: "Issuer"
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

  dimension: practitioner__qualification {
    type: string
    hidden: yes
    sql: practitioner__qualification ;;
  }
}

# The name of this view in Looker is "Practitioner Meta Tag"
view: practitioner__meta__tag {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Practitioner Communication"
view: practitioner__communication {
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
  # This dimension will be called "Practitioner Communication" in Explore.

  dimension: practitioner__communication {
    type: string
    hidden: yes
    sql: practitioner__communication ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }
}

# The name of this view in Looker is "Practitioner Meta Security"
view: practitioner__meta__security {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Practitioner Communication Coding"
view: practitioner__communication__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Practitioner Identifier Type Coding"
view: practitioner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Practitioner Qualification Identifier"
view: practitioner__qualification__identifier {
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

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
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
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

# The name of this view in Looker is "Practitioner Qualification Code Coding"
view: practitioner__qualification__code__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Practitioner Qualification Identifier Type Coding"
view: practitioner__qualification__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Practitioner Identifier Assigner Identifier Type Coding"
view: practitioner__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Practitioner Qualification Issuer Identifier Type Coding"
view: practitioner__qualification__issuer__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Practitioner Qualification Identifier Assigner Identifier Type Coding"
view: practitioner__qualification__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Practitioner Qualification Issuer Identifier Assigner Identifier Type Coding"
view: practitioner__qualification__issuer__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}
