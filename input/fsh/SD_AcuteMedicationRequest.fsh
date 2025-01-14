Invariant: acute-pain-expected-supply-duration-invariant
Description: "Acute pain MedicationRequest SHALL have a duration of < 28 days"
Severity: #error
* expression = "exists((value.toString() + unit).toQuantity() < 28 days)"

Invariant: acute-pain-bounds-period-invariant
Description: "Acute pain MedicationRequest SHALL have a duration of < 28 days"
Severity: #error
* expression = "exists(end.toDateTime() < (start.toDateTime() + 28 days))"

Invariant: acute-pain-bounds-duration-invariant
Description: "Acute pain MedicationRequest SHALL have a duration of < 28 days"
Severity: #error
* expression = "exists((value.toString() + unit).toQuantity() < 28 days)"

Invariant: acute-pain-bounds-range-invariant
Description: "Acute pain MedicationRequest SHALL have a duration of < 28 days"
Severity: #error
* expression = "exists((high.value.toString() + high.unit).toQuantity() < 28 days)"

Profile: AcuteMedicationRequest
Parent: $QICoreMedicationRequest
Id: AcuteMedicationRequest
Title: "Acute MedicationRequest Profile"
Description: "Defines the essential criteria for a MedicationRequest intended for acute pain management, with a duration of under 28 days."

* medicationCodeableConcept from $OpioidMedicationVS (required) 
* medicationReference only Reference(OpioidMedication)
* dosageInstruction.timing.repeat.boundsPeriod MS
* dosageInstruction.timing.repeat.boundsPeriod obeys acute-pain-bounds-period-invariant
* dosageInstruction.timing.repeat.boundsDuration MS
* dosageInstruction.timing.repeat.boundsDuration obeys acute-pain-bounds-duration-invariant
* dosageInstruction.timing.repeat.boundsRange MS
* dosageInstruction.timing.repeat.boundsRange obeys acute-pain-bounds-range-invariant
* dispenseRequest.expectedSupplyDuration MS
* dispenseRequest.expectedSupplyDuration obeys acute-pain-expected-supply-duration-invariant