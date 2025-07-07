Invariant: uds-value-string-invariant
Description: "The value string SHALL contain a string representation of a positive or negative result."
Severity: #error
* expression = "value.toString().lower().startsWith('pos') or value.toString().lower().startsWith('neg')"

Profile: UrineDrugScreeningResultObservation
Parent: $QICoreObservation
Id: UrineDrugScreeningResultObservation
Title: "Urine Drug Screening Result Observation Profile"
Description: "Specifies the essential criteria for interpreting the results of a urine drug screening."

* subject only Reference(OpioidReviewUsefulPatient)
* value[x] only string
* value[x] 1..1
* valueString obeys uds-value-string-invariant
* effective[x] only dateTime
* effective[x] 1..1