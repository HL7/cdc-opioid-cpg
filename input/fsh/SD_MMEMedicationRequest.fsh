Profile: MMEMedicationRequest
Parent: OpioidMedicationRequest
Id: MMEMedicationRequest
Title: "MME MedicationRequest Profile"
Description: "Defines the minimum expectations for a MedicationRequest that can be used to successfully calculate Morphine Milligram Equivalent (MME)/day according to the 2022 CDC Clinical Practice Guideline for Prescribing Opioids Implementation Guide."

* dosageInstruction 1..1 MS
* dosageInstruction.asNeeded[x] only boolean
* dosageInstruction.timing 1..1 MS
* dosageInstruction.timing.repeat 1..1 MS
* dosageInstruction.timing.repeat.timeOfDay 0..1 MS
* dosageInstruction.doseAndRate 1..1 MS
* dosageInstruction.doseAndRate.dose[x] 1..1 MS