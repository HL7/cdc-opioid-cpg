Profile: SickleCellEncounterDiagnosisCondition
Parent: $QICoreConditionEncounterDiagnosis
Id: SickleCellEncounterDiagnosisCondition
Title: "Sickle Cell Encounter Diagnosis Condition Profile"
Description: "Defines the essential criteria for a Condition resource with an encounter diagnosis for Sickle Cell disease."

* code from $SickleCellDiseaseVS
* subject only Reference(OpioidReviewIndicatedPatient)
* encounter only Reference(OpioidReviewIndicatedPatientEncounter)
* encounter 1..1