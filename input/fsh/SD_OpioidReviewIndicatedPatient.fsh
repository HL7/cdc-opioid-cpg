Invariant: patient-18-or-older-invariant
Description: "Patient SHALL be 18 years old or older"
Severity: #error
* expression = "birthDate.exists() and (birthDate <= (today() - 18 years))"

Profile: OpioidReviewIndicatedPatient
Parent: $QICorePatient
Id: OpioidReviewIndicatedPatient
Title: "Opioid Review Indicated Patient Profile"
Description: "Defines the essential criteria for a patient as part of determining whether an opioid review should be conducted."

* birthDate 1..1 
* obeys patient-18-or-older-invariant