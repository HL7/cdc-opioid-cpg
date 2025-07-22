Invariant: oru-medreq-status-allowed
Description: "status must be active, completed, or stopped."
Expression: "$this = 'active' or $this = 'completed' or $this = 'stopped'"
Severity: #error

Profile: OpioidReviewUsefulPatientMedicationRequest
Parent: $QICoreMedicationRequest
Id: OpioidReviewUsefulPatientMedicationRequest
Title: "Opioid Review Useful Patient MedicationRequest Profile"
Description: "Defines the essential criteria for an Opioid Review Useful Patient MedicationRequest."

* subject only Reference(OpioidReviewUsefulPatient)
* intent = #order
* status obeys oru-medreq-status-allowed
* authoredOn 1..1