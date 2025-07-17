Profile: ExtendedReleaseOpioidMedicationRequest
Parent: SubacuteOrChronicPainManagementMedicationRequest
Id: ExtendedReleaseOpioidMedicationRequest
Title: "Extended Release Opioid MedicationRequest Profile"
Description: "Defines the essential criteria for an extended release opioid analgesic MedicationRequest that presents a risk of misuse in an ambulatory (outpatient) setting."

* medication[x] only CodeableConcept or Reference(ExtendedReleaseOpioidMedication)
* medication[x] from $ExtendedReleaseOpioidVS (required)