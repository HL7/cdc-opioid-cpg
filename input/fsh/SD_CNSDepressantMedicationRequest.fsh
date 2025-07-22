Invariant: cns-medreq-status-allowed
Description: "status must be active, completed, or stopped."
Expression: "$this = 'active' or $this = 'completed' or $this = 'stopped'"
Severity: #error

Profile: CNSDepressantMedicationRequest
Parent: $QICoreMedicationRequest
Id: CNSDepressantMedicationRequest
Title: "CNS Depressant MedicationRequest Profile"
Description: "Defines the essential criteria for a central nervous system depressant medication request."

* subject only Reference(OpioidReviewUsefulPatient)
* medication[x] only CodeableConcept or Reference(CNSDepressantMedication)
* medication[x] from $CNSDepressantMedicationVS (required)
* intent = #order
* status obeys cns-medreq-status-allowed
* authoredOn 1..1