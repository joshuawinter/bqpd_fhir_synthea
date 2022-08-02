bqpd_fhir_synthea is built exactly on top of the fhir projected schema in bigquery public data

bigquery-public-data.fhir_synthea

leveraging this public article on querying the fhir projections, I build the looker view pc_hypertension from the example sql via the looker sqlrunner's export to model feature.
Once the view was created, I added it to the model.

https://cloud.google.com/architecture/analyzing-fhir-data-in-bigquery
