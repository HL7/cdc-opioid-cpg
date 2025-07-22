Invariant: pt-careplan-status-allowed
Description: "status must be active, completed, or stopped."
Expression: "$this = 'active' or $this = 'completed'"
Severity: #error

Profile: PainTreatmentCarePlan
Parent: QICoreCarePlan
Id: PainTreatmentCarePlan
Title: "Pain Treatment CarePlan Profile"
Description: "Specifies the essential criteria for representing a pain treatment plan. Ideally the plan should maximize use of nonpharmacologic and nonopioid pharmacologic therapies as appropriate for the specific condition and patient and only consider initiating opioid therapy if expected benefits for pain and function are anticipated to outweigh risks to the patient."

* status obeys pt-careplan-status-allowed
* category from $PainTreatmentPlanVS (required) 
* created 1..1 MS
* author MS