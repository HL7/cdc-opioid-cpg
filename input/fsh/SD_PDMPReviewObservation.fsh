Invariant: pdmp-status-allowed
Description: "status must be active, completed, or stopped."
Expression: "$this = 'final' or $this = 'amended'"
Severity: #error

Profile: PDMPReviewObservation
Parent: $USCoreSimpleObservation
Id: PDMPReviewObservation
Title: "PDMP Review Observation Profile"
Description: "Specifies the essential criteria for documentation that a PDMP review took place."

* status obeys pdmp-status-allowed
* code from $PDMPDataReviewedVS (required) 
* subject only Reference(OpioidReviewUsefulPatient)