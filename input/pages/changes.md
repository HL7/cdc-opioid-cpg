{: toc}

{: #changes}

This page details changes made in each version of the Data Exchange Profiles for 2022 CDC Clinical Practice Guideline for Prescribing Opioids.

### 1.0.0 Publication

Changes made as a result of reconciliation of ballot comments:

* [FHIR-52574](https://jira.hl7.org/browse/FHIR-52574): Changed the use of "Useful" to "Indicated" throughout to clarify intent of profiles used in Opioid Review logic
* [FHIR-52798](https://jira.hl7.org/browse/FHIR-52798): Added project team
* [FHIR-52751](https://jira.hl7.org/browse/FHIR-52571): Noted rationale for inclusion of guideline version year in the title of the implementation guide
* [FHIR-52705](https://jira.hl7.org/browse/FHIR-52705), [FHIR-52568](https://jira.hl7.org/browse/FHIR-52568): Refactored value sets to use published Opioid IG
* [FHIR-52420](https://jira.hl7.org/browse/FHIR-52420): Added profile listings by recommendation, subroutine, and resource
* [FHIR-52422](https://jira.hl7.org/browse/FHIR-52422): Noted rationale for not using MedicationDispense and MedicationUseStatement resources
* [FHIR-52567](https://jira.hl7.org/browse/FHIR-52567), [FHIR-52574](https://jira.hl7.org/browse/FHIR-52574), [FHIR-52570](https://jira.hl7.org/browse/FHIR-52570): Documented and realigned profiles as computability profiles
* [FHIR-52573](https://jira.hl7.org/browse/FHIR-52573): Removed duration invariants from MedicationRequest proposals, since that must be inferred through logic across potentially multiple orders
