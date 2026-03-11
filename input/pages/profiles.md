{:toc}

{: #profiles}

This page provides listings of the various profiles defined in this implementation guide, organized from different perspectives:

1. By Recommendation: Lists the profiles used in each recommendation
2. By Subroutine: Lists the profiles used in each subroutine
3. By Resource: Lists the profiles by Resource

Note that the profiles defined in this implementation guide are [_computability profiles_]({{site.data.fhir.ver.cpg}}/profiles.html#computability-profiles), meaning that they are focused on identifying the elements involved in calculating logic. It is expected that these profiles will be used in combination with _interoperability_ profiles, and this guide derives from US Core profiles for that purpose.

### Profiles by Recommendation

The following table lists the profiles associated with each recommendation in the [2022 CDC Clinical Practice Guideline for Prescribing Opioids Implementation Guide]({{site.data.fhir.ver.opioidcds}})

<table class="grid">
  <tr>
    <th>Recommendation</th>
    <th>Profiles</th>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.ver.opioidcds}}/recommendation-01.html">Recommendation #1 - Nonpharmacologic and Nonopioid Pharmacologic Therapy Consideration</a></td>
    <td>
      <a href="#opioid-order-for-acute-pain">Opioid Order for Acute Pain <i>(subroutine)</i></a><br>
      <a href="#opioid-review-indicated">Opioid Review Indicated <i>(subroutine)</i></a><br>
      <a href="#opioid-naive">Opioid Naive <i>(subroutine)</i></a>
    </td>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.ver.opioidcds}}/recommendation-02.html">Recommendation #2 - Prioritize Nonopioid Pain Therapies</a></td>
    <td>
      <a href="opioid-order-for-subacute-or-chronic-pain">Opioid Order for Subacute or Chronic Pain <i>(subroutine)</i></a><br>
      <a href="#opioid-review-indicated">Opioid Review Indicated <i>(subroutine)</i></a><br>
      <a href="#opioid-naive">Opioid Naive <i>(subroutine)</i></a>
      <a href="StructureDefinition-PainManagementProcedure.html">Pain Management Procedure</a><br>
      <a href="StructureDefinition-PainTreatmentCarePlan.html">Pain Treatment Plan</a>
    </td>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.ver.opioidcds}}/recommendation-03.html">Recommendation #3 - Opioid Immediate Release Form When Starting Opioid Therapy</a></td>
    <td>
      <a href="StructureDefinition-ExtendedReleaseOpioidMedicationRequest.html">Extended Release Opioid MedicationRequest</a><br>
      <a href="#opioid-review-indicated">Opioid Review Indicated <i>(subroutine)</i></a><br>
      <a href="#opioid-naive">Opioid Naive <i>(subroutine)</i></a>
    </td>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.ver.opioidcds}}/recommendation-04-05.html">Recommendations #4 and #5 - Lowest Effective Dose</a></td>
    <td>
      <a href="StructureDefinition-MMEMedicationRequest.html">MME MedicationRequest</a><br>
      <a href="#opioid-review-indicated">Opioid Review Indicated <i>(subroutine)</i></a>
    </td>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.ver.opioidcds}}/recommendation-06.html">Recommendation #6 - Prescribe Lowest Effective Dose and Duration</a></td>
    <td>
      <a href="#opioid-order-for-acute-pain">Opioid Order for Acute Pain <i>(subroutine)</i></a><br>
      <a href="#opioid-review-indicated">Opioid Review Indicated <i>(subroutine)</i></a>
    </td>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.ver.opioidcds}}/recommendation-07.html">Recommendation #7 - Opioid Therapy Risk Assessment</a></td>
    <td>
      <a href="opioid-order-for-subacute-or-chronic-pain">Opioid Order for Subacute or Chronic Pain <i>(subroutine)</i></a><br>
      <a href="#opioid-review-indicated">Opioid Review Indicated <i>(subroutine)</i></a><br>
      <a href="StructureDefinition-OpioidMisuseAssessmentProcedure.html">Opioid Misuse Assessment Procedure</a>
    </td>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.ver.opioidcds}}/recommendation-08.html">Recommendation #8 - Naloxone Consideration</a></td>
    <td>
      <a href="#opioid-order">Opioid Order <i>(subroutine)</i></a><br>
      <a href="#opioid-review-indicated">Opioid Review Indicated <i>(subroutine)</i></a><br>
      <a href="StructureDefinition-NaloxoneMedicationRequest.html">Naloxone MedicationRequest</a>
    </td>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.ver.opioidcds}}/recommendation-09.html">Recommendation #9 - Consider Patient's History of Controlled Substance Prescriptions</a></td>
    <td>
      <a href="#opioid-order">Opioid Order <i>(subroutine)</i></a><br>
      <a href="#opioid-review-indicated">Opioid Review Indicated <i>(subroutine)</i></a><br>
      <a href="StructureDefinition-PDMPReviewObservation.html">PDMP Review Observation</a><br>
      <a href="StructureDefinition-PDMPReviewProcedure.html">PDMP Review Procedure</a>
    </td>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.ver.opioidcds}}/recommendation-10.html">Recommendation #10 - Urine Drug Testing</a></td>
    <td>
      <a href="opioid-order-for-subacute-or-chronic-pain">Opioid Order for Subacute or Chronic Pain <i>(subroutine)</i></a><br>
      <a href="#opioid-review-indicated">Opioid Review Indicated <i>(subroutine)</i></a><br>
      <a href="StructureDefinition-UrineDrugScreeningResultObservation.html">Urine Drug Screening Result Observation</a>
    </td>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.ver.opioidcds}}/recommendation-11.html">Recommendation #11 - Concurrent Use of Opioids and Benzodiazepines</a></td>
    <td>
      <a href="#opioid-order">Opioid Order <i>(subroutine)</i></a><br>
      <a href="StructureDefinition-BenzodiazepineMedicationRequest.html">Benzodiazepine MedicationRequest</a><br>
      <a href="StructureDefinition-CNSDepressantMedicationRequest.html">CNS Depressant MedicationRequest</a><br>
      <a href="#opioid-review-indicated">Opioid Review Indicated <i>(subroutine)</i></a>
    </td>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.ver.opioidcds}}/recommendation-12.html">Recommendation #12 - Evidence-based Treatment for Patients with Opioid Use Disorder</a></td>
    <td>
      <a href="#opioid-review-indicated">Opioid Review Indicated <i>(subroutine)</i></a><br>
      <a href="StructureDefinition-BuprenorphineMedicationRequest.html">Buprenorphine MedicationRequest</a><br>
      <a href="StructureDefinition-MethadoneMedicationRequest.html">Methadone MedicationRequest</a>
    </td>
  </tr>
</table>

### Profiles by Subroutine

The following table lists the profiles associated with each subroutine in the [2022 CDC Clinical Practice Guideline for Prescribing Opioids Implementation Guide]({{site.data.fhir.ver.opioidcds}}).

Subroutines are common logic that is shared by multiple recommendations. Each subroutine is linked from the recommendation that uses it in the table above.

<table class="grid">
  <tr>
    <th>Subroutine</th>
    <th>Profiles</th>
  </tr>
  <tr>
    <td><a name="opioid-review-indicated" href="{{site.data.fhir.ver.opioidcds}}/subroutines.html#cdc-2022-general-inclusion-criteria">Opioid Review Indicated (i.e. General Inclusion Criteria)</a></td>
    <td>
      <a href="StructureDefinition-OpioidReviewIndicatedPatient.html">Opioid Review Indicated Patient</a><br>
      <a href="StructureDefinition-OpioidReviewIndicatedPatientEncounter.html">Opioid Review Indicated Encounter</a>
    </td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<a name="sickle-cell-exclusion">Sickle Cell Exclusion</a></td>
    <td>
      <a href="StructureDefinition-SickleCellEncounterDiagnosisCondition.html">Sickle Cell Encounter Diagnosis</a><br>
      <a href="StructureDefinition-SickleCellProblemListHealthConcernCondition.html">Sickle Cell Problem List Item</a>
    </td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<a name="end-of-life-exclusion">End of Life Exclusion</a></td>
    <td>
      <a href="StructureDefinition-EndOfLifeEncounterDiagnosis.html">End of Life Encounter Diagnosis</a><br>
      <a href="StructureDefinition-EndOfLifeProblemsListHealthConcernCondition.html">End of Life Problem List Item</a>
    </td>
  </tr>
  <tr>
    <td><a name="active-cancer-treatment" href="{{site.data.fhir.ver.opioidcds}}/subroutines.html#active-cancer-treatment">Active Cancer Treatment Exclusion</a></td>
    <td>
      <a href="StructureDefinition-ActiveCancerEncounterDiagnosisCondition.html">Active Cancer Encounter Diagnosis</a><br>
      <a href="StructureDefinition-ActiveCancerProblemListHealthConcernCondition.html">Active Cancer Problem List Item</a>
    </td>
  </tr>
  <tr>
    <td><a name="opioid-order">Opioid Order</a></td>
    <td>
      <a href="StructureDefinition-OpioidMedicationRequest.html">Opioid MedicationRequest</a>
    </td>
  </tr>
  <tr>
    <td><a name="opioid-order-for-acute-pain" href="{{site.data.fhir.ver.opioidcds}}/subroutines.html#for-acute-pain">Opioid Order for Acute Pain</a></td>
    <td>
      <a href="StructureDefinition-AcutePainManagementMedicationRequest.html">Acute Pain Management MedicationRequest Profile</a>
    </td>
  </tr>
  <tr>
    <td><a name="opioid-order-for-subacute-or-chronic-pain" href="{{site.data.fhir.ver.opioidcds}}/subroutines.html#for-acute-pain">Opioid Order for Subacute or Chronic Pain</a></td>
    <td>
      <a href="StructureDefinition-SubacuteOrChronicPainManagementMedicationRequest.html">Subacute or Chronic Pain Management MedicationRequest</a>
    </td>
  </tr>
  <tr>
    <td><a name="opioid-naive" href="{{site.data.fhir.ver.opioidcds}}/subroutines.html#opioid-naive">Opioid Naive</a></td>
    <td>
      <a href="StructureDefinition-OpioidMedicationRequest.html">Opioid MedicationRequest</a>
    </td>
  </tr>
</table>

### Profiles by Resource

The following listing details the profiles by resource and derivative hierarchy.

> Note that implementation experience with these profiles indicates that the MedicationDispense and MedicationStatement resources are not available via the FHIR APIs where this decision support has been integrated. As such, the implementation guide focuses on the use of MedicationRequest resources. This is an especially relevant consideration for recommendation #9 which would greatly benefit from being able to characterize dispensing information. We seek implementer feedback on whether and when MedicationDispense and MedicationStatement information might be available.
{: .stu-note}

* CarePlan
    * [Pain Treatment CarePlan Profile](StructureDefinition-PainTreatmentCarePlan.html)
* Condition
    * [Active Cancer Encounter Diagnosis Condition Profile](StructureDefinition-ActiveCancerEncounterDiagnosisCondition.html)
    * [Active Cancer Problem List Health Concern Condition Profile](StructureDefinition-ActiveCancerProblemListHealthConcernCondition.html)
    * [Sickle Cell Encounter Diagnosis Condition Profile](StructureDefinition-SickleCellEncounterDiagnosisCondition.html)
    * [Sickle Cell Problem List Health Concern Condition Profile](StructureDefinition-SickleCellProblemListHealthConcernCondition.html)
    * [End of Life Encounter Diagnosis Profile](StructureDefinition-EndOfLifeEncounterDiagnosis.html)
    * [End of Life Problem List Health Concern Condition Profile](StructureDefinition-EndOfLifeProblemsListHealthConcernCondition.html)
* Encounter
    * [Opioid Review Indicated Patient Encounter Encounter Profile](StructureDefinition-OpioidReviewIndicatedPatientEncounter.html)
* Medication
    * [Amphetamine Medication Profile](StructureDefinition-AmphetamineMedication.html)
    * [Barbiturate Medication Profile](StructureDefinition-BarbiturateMedication.html)
    * [Benzodiazepine Medication Profile](StructureDefinition-BenzodiazepineMedication.html)
    * [Buprenorphine Medication Profile](StructureDefinition-BuprenorphineMedication.html)
    * [CNS Depressant Medication Profile](StructureDefinition-CNSDepressantMedication.html)
    * [Extended Release Opioid Medication Profile](StructureDefinition-ExtendedReleaseOpioidMedication.html)
    * [Fentanyl Medication Profile](StructureDefinition-FentanylMedication.html)
    * [Methadone Medication Profile](StructureDefinition-MethadoneMedication.html)
    * [Naloxone Medication Profile](StructureDefinition-NaloxoneMedication.html)
    * [Opiate Medication Profile](StructureDefinition-OpiateMedication.html)
    * [Opioid Medication Profile](StructureDefinition-OpioidMedication.html)
    * [Oxycodone Medication Profile](StructureDefinition-OxycodoneMedication.html)
* MedicationRequest
    * [Opioid Review Indicated Patient MedicationRequest Profile](StructureDefinition-OpioidReviewIndicatedPatientMedicationRequest.html)
        * [Opioid MedicationRequest Profile](StructureDefinition-OpioidMedicationRequest.html)
            * [Acute Pain Management MedicationRequest Profile](StructureDefinition-AcutePainManagementMedicationRequest.html)
            * [Chronic Pain Management MedicationRequest Profile](StructureDefinition-ChronicPainManagementMedicationRequest.html)
            * [Extended Release Opioid MedicationRequest Profile](StructureDefinition-ExtendedReleaseOpioidMedicationRequest.html)
            * [MME MedicationRequest Profile](StructureDefinition-MMEMedicationRequest.html)
            * [Subacute Pain Management MedicationRequest Profile](StructureDefinition-SubacutePainManagementMedicationRequest.html)
            * [Subacute or Chronic Pain Management MedicationRequest Profile](StructureDefinition-SubacuteOrChronicPainManagementMedicationRequest.html)
        * [Amphetamine MedicationRequest Profile](StructureDefinition-AmphetamineMedicationRequest.html)
        * [Barbiturate MedicationRequest Profile](StructureDefinition-BarbiturateMedicationRequest.html)
        * [Benzodiazepine MedicationRequest Profile](StructureDefinition-BenzodiazepineMedicationRequest.html)
        * [Buprenorphine MedicationRequest Profile](StructureDefinition-BuprenorphineMedicationRequest.html)
        * [CNS Depressant MedicationRequest Profile](StructureDefinition-CNSDepressantMedicationRequest.html)
        * [Fentanyl MedicationRequest Profile](StructureDefinition-FentanylMedicationRequest.html)
        * [Methadone MedicationRequest Profile](StructureDefinition-MethadoneMedicationRequest.html)
        * [Naloxone MedicationRequest Profile](StructureDefinition-NaloxoneMedicationRequest.html)
        * [Opiate MedicationRequest Profile](StructureDefinition-OpiateMedicationRequest.html)
        * [Oxycodone MedicationRequest Profile](StructureDefinition-OxycodoneMedicationRequest.html)
* Observation
    * [PDMP Review Observation Profile](StructureDefinition-PDMPReviewObservation.html)
    * [Urine Drug Screening Result Observation Profile](StructureDefinition-UrineDrugScreeningResultObservation.html)
        * [Amphetamine Urine Drug Screening Result Observation Profile](StructureDefinition-AmphetamineUrineDrugScreeningResultObservation.html)
        * [Barbiturate Urine Drug Screening Result Observation Profile](StructureDefinition-BarbiturateUrineDrugScreeningResultObservation.html)
        * [Benzodiazepine Urine Drug Screening Result Observation Profile](StructureDefinition-BenzodiazepineUrineDrugScreeningResultObservation.html)
        * [Buprenorphine Urine Drug Screening Result Observation Profile](StructureDefinition-BuprenorphineUrineDrugScreeningResultObservation.html)
        * [Cannabinoid Urine Drug Screening Result Observation Profile](StructureDefinition-CannabinoidUrineDrugScreeningResultObservation.html)
        * [Cocaine Urine Drug Screening Result Observation Profile](StructureDefinition-CocaineUrineDrugScreeningResultObservation.html)
        * [Fentanyl Urine Drug Screening Result Observation Profile](StructureDefinition-FentanylUrineDrugScreeningResultObservation.html)
        * [Heroin Urine Drug Screening Result Observation Profile](StructureDefinition-HeroinUrineDrugScreeningResultObservation.html)
        * [Methadone Urine Drug Screening Result Observation Profile](StructureDefinition-MethadoneUrineDrugScreeningResultObservation.html)
        * [Opiate Urine Drug Screening Result Observation Profile](StructureDefinition-OpiateUrineDrugScreeningResultObservation.html)
        * [Oxycodone Urine Drug Screening Result Observation Profile](StructureDefinition-OxycodoneUrineDrugScreeningResultObservation.html)
        * [PCP Urine Drug Screening Result Observation Profile](StructureDefinition-PCPUrineDrugScreeningResultObservation.html)
* Patient
    * [Opioid Review Indicated Patient Profile](StructureDefinition-OpioidReviewIndicatedPatient.html)
* Procedure
    * [PainManagementProcedure](StructureDefinition-PainManagementProcedure.html)
    * [Opioid Misuse Assessment Procedure Profile](StructureDefinition-OpioidMisuseAssessmentProcedure.html)
    * [PDMP Review Procedure Profile](StructureDefinition-PDMPReviewProcedure.html)
    * [Pain Management Procedure Profile](StructureDefinition-PainManagementProcedure.html)

### All Profiles Index

{% include list-simple-profiles.xhtml %}