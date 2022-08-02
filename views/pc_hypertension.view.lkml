view: pc_hypertension {
  derived_table: {
    sql: WITH patient AS (
      SELECT id as patientid, i.value as MRN, birthDate
      FROM
      `bigquery-public-data.fhir_synthea.patient`
      #This is a correlated cross join
      ,UNNEST(identifier) i
      ,UNNEST(i.type.coding) it
      WHERE
      # identifier.type.coding.code
      it.code = "MR"
      #uncomment to get data for one patient, this MRN exists
      #AND i.value = "a55c8c2f-474b-4dbd-9c84-effe5c0aed5b"
      ),
      condition AS (
      SELECT abatement.dateTime as abatement_dateTime, assertedDate, category, clinicalStatus, code, onset.dateTime as onset_dateTime, subject.patientid
      FROM
      `bigquery-public-data.fhir_synthea.condition`
      ,UNNEST(code.coding) as code
      WHERE
      code.system = 'http://snomed.info/sct'
      #snomed code for Hypertension
      AND code.code = '38341003'
      )
      SELECT patient.patientid, patient.MRN, patient.birthDate as birthDate_string,
      #current patient age. now - birthdate
      DATE_DIFF(CURRENT_DATE(),CAST(patient.birthDate AS DATE),YEAR) as patient_current_age,
      #age at onset. onset date - birthdate
      DATE_DIFF(CAST(SUBSTR(condition.onset_dateTime,1,10) AS DATE),CAST(patient.birthDate AS DATE),YEAR)as patient_age_at_onset,
      condition.onset_dateTime, condition.code.code, condition.code.display, condition.code.system
      FROM patient JOIN condition
      ON patient.patientid = condition.patientid
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: patientid {
    type: string
    sql: ${TABLE}.patientid ;;
  }

  dimension: mrn {
    type: string
    sql: ${TABLE}.MRN ;;
  }

  dimension: birth_date_string {
    type: string
    sql: ${TABLE}.birthDate_string ;;
  }

  dimension: patient_current_age {
    type: number
    sql: ${TABLE}.patient_current_age ;;
  }

  dimension: patient_age_at_onset {
    type: number
    sql: ${TABLE}.patient_age_at_onset ;;
  }

  dimension: onset_date_time {
    type: string
    sql: ${TABLE}.onset_dateTime ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  set: detail {
    fields: [
      patientid,
      mrn,
      birth_date_string,
      patient_current_age,
      patient_age_at_onset,
      onset_date_time,
      code,
      display,
      system
    ]
  }
}
