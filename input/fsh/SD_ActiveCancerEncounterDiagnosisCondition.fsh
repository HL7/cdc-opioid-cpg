Profile: ActiveCancerEncounterDiagnosisCondition
Parent: $QICoreConditionEncounterDiagnosis
Id: ActiveCancerEncounterDiagnosisCondition
Title: "Active Cancer Encounter Diagnosis Condition Profile"
Description: "Defines the essential criteria for a Condition resource with an encounter diagnosis for active cancer."

* code from $MalignantCancerVS
* subject only Reference(OpioidReviewUsefulPatient)
* encounter only Reference(OpioidReviewUsefulPatientEncounter)
* encounter 1..1