Invariant: oru-medreq-status-allowed
Description: "status must be active, completed, or stopped."
Expression: "$this = 'active' or $this = 'completed' or $this = 'stopped'"
Severity: #error

Profile: OpioidReviewIndicatedPatientMedicationRequest
Parent: $QICoreMedicationRequest
Id: OpioidReviewIndicatedPatientMedicationRequest
Title: "Opioid Review Indicated Patient MedicationRequest Profile"
Description: "Defines the essential criteria for a MedicationRequest used as part of determining whether an opioid review should be conducted."

* subject only Reference(OpioidReviewIndicatedPatient)
* intent = #order
* status obeys oru-medreq-status-allowed
* authoredOn 1..1