Profile: BenzoMedicationRequest
Parent: OpioidReviewUsefulPatientMedicationRequest
Id: BenzoMedicationRequest
Title: "Benzo MedicationRequest Profile"
Description: "Defines the essential criteria for an Benzodiazepine class medication request."

* medication[x] only CodeableConcept or Reference(BenzoMedication)
* medication[x] from $BenzoMedicationsVS (required)