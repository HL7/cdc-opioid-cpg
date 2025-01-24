Profile: OpioidMedicationRequest
Parent: $QICoreMedicationRequest
Id: OpioidMedicationRequest
Title: "Opioid MedicationRequest Profile"
Description: "Defines the essential criteria for an opioid analgesic MedicationRequest that presents a risk of misuse in an ambulatory (outpatient) setting."

* medication[x] only CodeableConcept or Reference(OpioidMedication)
* medication[x] from $OpioidMedicationVS (required)
* intent = #order
* status = #active,completed,stopped
* authoredOn 1..1