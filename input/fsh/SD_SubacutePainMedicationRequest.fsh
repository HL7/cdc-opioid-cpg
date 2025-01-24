Invariant: subacute-pain-expected-supply-duration-invariant
Description: "Subacute pain MedicationRequest SHALL have a duration of 28 days (1 month) to 56 days (2 months)"
Severity: #error
* expression = "exists(((value.toString() + unit).toQuantity() >= 28 days) and ((value.toString() + unit).toQuantity() <= 56 days) )"

Invariant: subacute-pain-bounds-period-invariant
Description: "Subacute pain MedicationRequest SHALL have a duration of 28 days (1 month) to 56 days (2 months)"
Severity: #error
* expression = "exists((end.toDateTime() >= (start.toDateTime() + 28 days)) and (end.toDateTime() <= (start.toDateTime() + 56 days)))"

Invariant: subacute-pain-bounds-duration-invariant
Description: "Subacute pain MedicationRequest SHALL have a duration of 28 days (1 month) to 56 days (2 months)"
Severity: #error
* expression = "exists(((value.toString() + unit).toQuantity() >= 28 days) and ((value.toString() + unit).toQuantity() <= 56 days))"

Invariant: subacute-pain-bounds-range-invariant
Description: "Subacute pain MedicationRequest SHALL have a duration of 28 days (1 month) to 56 days (2 months)"
Severity: #error
* expression = "exists(((high.value.toString() + high.unit).toQuantity() >= 28 days) and ((high.value.toString() + high.unit).toQuantity() <= 56 days))"

Invariant: subacute-pain-required-elements-invariant
Description: "One of dosageInstruction.timing.repeat.bounds[x] or dispenseRequest.expectedSupplyDuration SHALL be present."
Severity: #error
* expression = "dosageInstruction.timing.repeat.bounds.exists() or dispenseRequest.expectedSupplyDuration.exists()"

Profile: SubacutePainManagementMedicationRequest
Parent: OpioidMedicationRequest
Id: SubacutePainManagementMedicationRequest
Title: "Subacute Pain Management MedicationRequest Profile"
Description: "Defines the essential criteria for a MedicationRequest prescribed for subacute pain management with a treatment duration of 28 to 56 days"

* dosageInstruction.timing.repeat.boundsPeriod MS
* dosageInstruction.timing.repeat.boundsPeriod obeys subacute-pain-bounds-period-invariant
* dosageInstruction.timing.repeat.boundsDuration MS
* dosageInstruction.timing.repeat.boundsDuration obeys subacute-pain-bounds-duration-invariant
* dosageInstruction.timing.repeat.boundsRange MS
* dosageInstruction.timing.repeat.boundsRange obeys subacute-pain-bounds-range-invariant
* dispenseRequest.expectedSupplyDuration MS
* dispenseRequest.expectedSupplyDuration obeys subacute-pain-expected-supply-duration-invariant
* obeys subacute-pain-required-elements-invariant