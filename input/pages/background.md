{:toc}

{: #extensions}

Translating the [2022 CDC Clinical Practice Guideline for Prescribing Opioids for Pain](https://www.cdc.gov/mmwr/volumes/71/rr/rr7103a1.htm) recommendations into everyday clinical workflows requires interoperable, computable artifacts that can travel seamlessly between health-IT systems. The [2022 CDC Clinical Practice Guideline for Prescribing Opioids Implementation Guide](https://build.fhir.org/ig/cqframework/opioid-cds-r4/index.html) delivered a foundational set of decision-support artifacts—rules, shareable libraries, and CDS Hooks examples that bring the Guideline to the point of care. What it did not attempt, by design, was to standardize the data exchange patterns needed when multiple systems—electronic health records (EHRs), prescription drug-monitoring programs (PDMPs), health information exchanges, quality-measurement services, and public-health registries—must collaborate.

This Implementation Guide (IG), Data Exchange Profiles for 2022 CDC Clinical Practice Guideline for Prescribing Opioids (2022 CDC Opioid Data Exchange Profiles CPG IG), fills that gap.

### Purpose 

This IG defines a coherent set of FHIR R4 profiles that enable systems to share the minimum necessary clinical context to support safe opioid prescribing and monitoring in accordance with the 2022 CDC Clinical Practice Guideline for Prescribing Opioids for Pain.

### Relationship to the 2022 CDC Clinical Practice Guideline for Prescribing Opioids IG

The 2022 CDC Clinical Practice Guideline for Prescribing Opioids IG focuses on clinical decision logic, this IG focuses on the data profiling necessary to execute that logic across organizational and vendor boundaries. 

Implementers are encouraged to adopt both guides together:
 
 - 2022 CDC Clinical Practice Guideline for Prescribing Opioids IG - What decision to surface (clinical decision support logic, CDS Hooks).

 - 2022 CDC Opioid Data Exchange Profiles CPG IG - How to represent the data those decisions rely on.

### Design Principles

 - Minimum necessary, maximum reuse. Profiles extend core FHIR resources only where essential, leveraging existing patterns from FHIR/USCore/QICore whenever possible.

 - Configurability. Implementation options accommodate varied deployment models—centralized repositories, point-to-point APIs, or hybrid approaches.

 - Bidirectional flow. Specifications support both push (event-driven) and pull (query-based) exchange, recognizing that clinical ecosystems differ in infrastructure maturity.

 - Alignment and compliance. All artifacts conform to FHIR R4 and reference federally endorsed code systems and value sets (e.g., RxNorm, SNOMED CT, LOINC). 

By offering a standardized data exchange foundation, the 2022 CDC Opioid Data Exchange Profiles CPG IG empowers implementers to integrate the 2022 CDC Clinical Practice Guideline for Prescribing Opioids for Pain more broadly—supporting consistent, high-quality pain management while mitigating opioid-related risks across the continuum of care.
