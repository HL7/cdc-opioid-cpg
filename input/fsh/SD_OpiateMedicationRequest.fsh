Profile: OpiateMedicationRequest
Parent: OpioidMedicationRequest
Id: OpiateMedicationRequest
Title: "Opiate MedicationRequest Profile"
Description: "Defines the essential criteria for an Opiate class medication request."

* medication[x] only CodeableConcept or Reference(OpiateMedication)
* medication[x] from $OpiateMedicationsVS (required)