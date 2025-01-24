Invariant: chronic-pain-expected-supply-duration-invariant
Description: "Chronic pain MedicationRequest SHALL have a duration of > 56 days"
Severity: #error
* expression = "exists((value.toString() + unit).toQuantity() > 56 days)"

Invariant: chronic-pain-bounds-period-invariant
Description: "Chronic pain MedicationRequest SHALL have a duration of > 56 days"
Severity: #error
* expression = "exists(end.toDateTime() > (start.toDateTime() + 56 days))"

Invariant: chronic-pain-bounds-duration-invariant
Description: "Chronic pain MedicationRequest SHALL have a duration of > 56 days"
Severity: #error
* expression = "exists((value.toString() + unit).toQuantity() > 56 days)"

Invariant: chronic-pain-bounds-range-invariant
Description: "Chronic pain MedicationRequest SHALL have a duration of > 56 days"
Severity: #error
* expression = "exists((high.value.toString() + high.unit).toQuantity() > 56 days)"

Invariant: chronic-pain-required-elements-invariant
Description: "One of courseOfTherapyType, dosageInstruction.timing.repeat.bounds[x] or dispenseRequest.expectedSupplyDuration SHALL be present."
Severity: #error
* expression = "courseOfTherapyType.exists() or dosageInstruction.timing.repeat.bounds.exists() or dispenseRequest.expectedSupplyDuration.exists()"

Profile: ChronicPainManagementMedicationRequest
Parent: OpioidMedicationRequest
Id: ChronicPainManagementMedicationRequest
Title: "Chronic Pain Management MedicationRequest Profile"
Description: "Defines the essential criteria for a MedicationRequest intended for chronic pain management, with a duration of more than 56 days."

* courseOfTherapyType MS
* courseOfTherapyType = http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy#continuous
* dosageInstruction.timing.repeat.boundsPeriod MS
* dosageInstruction.timing.repeat.boundsPeriod obeys chronic-pain-bounds-period-invariant
* dosageInstruction.timing.repeat.boundsDuration MS
* dosageInstruction.timing.repeat.boundsDuration obeys chronic-pain-bounds-duration-invariant
* dosageInstruction.timing.repeat.boundsRange MS
* dosageInstruction.timing.repeat.boundsRange obeys chronic-pain-bounds-range-invariant
* dispenseRequest.expectedSupplyDuration MS
* dispenseRequest.expectedSupplyDuration obeys chronic-pain-expected-supply-duration-invariant
* obeys chronic-pain-required-elements-invariant