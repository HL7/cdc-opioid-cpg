Invariant: subacute-or-chronic-pain-expected-supply-duration-invariant
Description: "Subacute or chronic pain MedicationRequest SHALL have a duration of 28 days or more"
Severity: #error
* expression = "exists(((value.toString() + unit).toQuantity() >= 28 days) )"

Invariant: subacute-or-chronic-pain-bounds-period-invariant
Description: "Subacute or chronic pain MedicationRequest SHALL have a duration of 28 days or more"
Severity: #error
* expression = "exists((end.toDateTime() >= (start.toDateTime() + 28 days)))"

Invariant: subacute-or-chronic-pain-bounds-duration-invariant
Description: "Subacute or chronic pain MedicationRequest SHALL have a duration of 28 days or more"
Severity: #error
* expression = "exists(((value.toString() + unit).toQuantity() >= 28 days))"

Invariant: subacute-or-chronic-pain-bounds-range-invariant
Description: "Subacute or chronic pain MedicationRequest SHALL have a duration of 28 days or more"
Severity: #error
* expression = "exists(((high.value.toString() + high.unit).toQuantity() >= 28 days))"

Invariant: subacute-or-chronic-pain-required-elements-invariant
Description: "One of courseOfTherapyType, dosageInstruction.timing.repeat.bounds[x] or dispenseRequest.expectedSupplyDuration SHALL be present."
Severity: #error
* expression = "courseOfTherapyType.exists() or dosageInstruction.timing.repeat.bounds.exists() or dispenseRequest.expectedSupplyDuration.exists()"

Profile: SubacuteOrChronicPainManagementMedicationRequest
Parent: OpioidMedicationRequest
Id: SubacuteOrChronicPainManagementMedicationRequest
Title: "Subacute or Chronic Pain Management MedicationRequest Profile"
Description: "Defines the essential criteria for a MedicationRequest prescribed for subacute or chronic pain management with a treatment duration of 28 days or more."

* courseOfTherapyType MS
* courseOfTherapyType = http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy#continuous
* dosageInstruction.timing.repeat.boundsPeriod MS
* dosageInstruction.timing.repeat.boundsPeriod obeys subacute-or-chronic-pain-bounds-period-invariant
* dosageInstruction.timing.repeat.boundsDuration MS
* dosageInstruction.timing.repeat.boundsDuration obeys subacute-or-chronic-pain-bounds-duration-invariant
* dosageInstruction.timing.repeat.boundsRange MS
* dosageInstruction.timing.repeat.boundsRange obeys subacute-or-chronic-pain-bounds-range-invariant
* dispenseRequest.expectedSupplyDuration MS
* dispenseRequest.expectedSupplyDuration obeys subacute-or-chronic-pain-expected-supply-duration-invariant
* obeys subacute-or-chronic-pain-required-elements-invariant