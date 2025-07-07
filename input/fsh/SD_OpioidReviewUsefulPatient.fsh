Invariant: patient-18-or-older-invariant
Description: "Patient SHALL be 18 years old or older"
Severity: #error
* expression = "birthDate.exists() and (birthDate <= (today() - 18 years))"

Profile: OpioidReviewUsefulPatient
Parent: $QICorePatient
Id: OpioidReviewUsefulPatient
Title: "Opioid Review Useful Patient Profile"
Description: "Defines the essential criteria for determining whether an opioid review should be conducted for a patient."

* birthDate 1..1 
* obeys patient-18-or-older-invariant