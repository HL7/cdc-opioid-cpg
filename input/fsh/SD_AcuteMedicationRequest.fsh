Invariant: acute-pain-expected-supply-duration-invariant
Description: "Acute pain MedicationRequest SHALL have a duration of < 28 days"
Severity: #error
* expression = "dispenseRequest.exists() and dispenseRequest.expectedSupplyDuration.exists((value.toString() + unit).toQuantity() < 28 days)"

Invariant: acute-pain-bounds-period-invariant
Description: "Acute pain MedicationRequest SHALL have a duration of < 28 days"
Severity: #error
* expression = "dosageInstruction.exists() and dosageInstruction.timing.exists() and dosageInstruction.timing.boundsPeriod.exists(end.toDate() < (start.toDate() + 28 days))"

Invariant: acute-pain-bounds-duration-invariant
Description: "Acute pain MedicationRequest SHALL have a duration of < 28 days"
Severity: #error
* expression = "dosageInstruction.exists() and dosageInstruction.timing.exists() and dosageInstruction.timing.boundsDuration.exists((value.toString() + unit).toQuantity() < 28 days)"

Invariant: acute-pain-bounds-range-invariant
Description: "Acute pain MedicationRequest SHALL have a duration of < 28 days"
Severity: #error
* expression = "dosageInstruction.exists() and dosageInstruction.timing.exists() and dosageInstruction.timing.boundsRange.exists((high.value.toString() + high.unit).toQuantity() < 28 days)"

Profile: AcuteMedicationRequest
Parent: $QICoreMedicationRequest
Id: AcuteMedicationRequest
Title: "Acute MedicationRequest Profile"
Description: "Defines the essential criteria for a MedicationRequest intended for acute pain management, with a duration of under 28 days."

* medicationCodeableConcept from $OpioidMedicationVS (required) 
* medicationReference only Reference(OpioidMedication)
* dosageInstruction.timing.repeat.boundsPeriod MS
* obeys acute-pain-bounds-period-invariant
* dosageInstruction.timing.repeat.boundsDuration MS
* obeys acute-pain-bounds-duration-invariant
* dosageInstruction.timing.repeat.boundsRange MS
* obeys acute-pain-bounds-range-invariant
* dispenseRequest.expectedSupplyDuration MS
* obeys acute-pain-expected-supply-duration-invariant