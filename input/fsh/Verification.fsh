Alias: $VerificationCommunicationMethodCS = http://terminology.hl7.org/CodeSystem/verificationresult-communication-method
Alias: $VerificationresultCommunicationMethodVS = http://terminology.hl7.org/ValueSet/verificationresult-communication-method
Alias: $verificationresult-validation-type = http://hl7.org/fhir/ValueSet/verificationresult-validation-type
Alias: $VerificationresultPrimarySourceTypeVS = http://hl7.org/fhir/ValueSet/verificationresult-primary-source-type
Alias: $ValidationProcessCS = http://terminology.hl7.org/CodeSystem/validation-process

Extension: VerificationStatus
Id: base-ext-verification-status
Title: "Plannet Verification Status"
Description: "This extension enables Plannet to communicate verification standing for directory resources in a consistent coded format, using an extensible binding to PlannetVerificationStatusVS for trust-state interoperability; it is used in Endpoint, HealthcareService, InsurancePlan, Location, Organization, OrganizationAffiliation, Practitioner, PractitionerRole, and Group."
Context:  Endpoint, HealthcareService, InsurancePlan, Location, Organization, OrganizationAffiliation, Practitioner, PractitionerRole, Group
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from PlannetVerificationStatusVS (extensible)

ValueSet: PlannetVerificationStatusVS
Title: "Plannet Verification Status Value Set"
Description:  "This value set defines Plannet verification-status concepts used to communicate whether verification is complete, incomplete, or not required."
* ^experimental = false
* codes from system PlannetVerificationStatusCS

CodeSystem: PlannetVerificationStatusCS
Title: "Plannet Resource Instance Verification Status Code System"
Description: "This code system defines Plannet resource-instance verification status concepts used to communicate whether verification is complete, incomplete, or not required."
* ^experimental = false
* ^caseSensitive = true
* #complete "Complete" "Complete"
* #incomplete "Incomplete" "Incomplete"
* #not-required "Not Required" "Not Required"

ValueSet: VerificationProcessVS
Title: "NDH Verification Process Value Set"
Description:  "This value set defines verification-process concepts used by NDH to identify how directory information was verified or attested."
* ^experimental = false
* codes from system $ValidationProcessCS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: PlannetVerification
Parent: VerificationResult
Id: Plannet-Verification
Title: "Plannet Verification"
Description: "This profile enables Plannet to capture verification provenance, status, and timing for directory data so consumers can assess trust, recency, and validation method when making decisions based on published provider, organization, and role information; it applies ValueSet bindings for validation type, process, primary-source type, and communication method to normalize attestation workflows."
* ^date = "2023-01-22T12:42:47.483-05:00"
* ^status = #active
* . ^short = "Verification"
* . ^definition = "Describes Verification requirements, source(s), status and dates for one or more elements"
* target 1..* MS
* target ^short = "The resource instance was verified or attested"
* targetLocation 0..0
* need 1..1 MS
* status MS
* statusDate 1..1 MS
* validationType 1..1 MS
* validationType from $verificationresult-validation-type
* validationType ^short = "Whether the target was verified against primary source(s), mutually attested between resource(s), or nothing"
* validationProcess 1..* MS
* validationProcess from VerificationProcessVS (extensible)
* validationProcess ^short = "The process(es) by which the target was verified"
* frequency MS
* frequency ^short = "Frequency of verification"
* lastPerformed MS
* lastPerformed ^short = "The date/time verification was last completed (including failed verifications)"
* nextScheduled MS
* nextScheduled ^short = "The date when target is next verified, if appropriate"
* failureAction 1..1 MS
* primarySource MS
* primarySource.who MS
* primarySource.who only Reference(PlannetOrganization or PlannetPractitioner or PlannetPractitionerRole)
* primarySource.type 1..* MS
* primarySource.type from $VerificationresultPrimarySourceTypeVS (extensible)
* primarySource.type ^definition = "Type of primary source"
* primarySource.communicationMethod 0..* MS
* primarySource.communicationMethod from $VerificationresultCommunicationMethodVS (extensible)
* primarySource.validationStatus MS
* primarySource.validationDate MS
* primarySource.canPushUpdates MS
* primarySource.pushTypeAvailable MS
* attestation 1..1 MS
* attestation.who 1..1 MS
* attestation.who only Reference(PlannetOrganization or PlannetPractitioner or PlannetPractitionerRole)
* attestation.onBehalfOf MS
* attestation.onBehalfOf only Reference(PlannetOrganization or PlannetPractitioner or PlannetPractitionerRole)
* attestation.communicationMethod 1..1 MS
* attestation.communicationMethod only CodeableConcept
* attestation.communicationMethod from $VerificationresultCommunicationMethodVS (extensible)
* attestation.date 1..1 MS
* attestation.sourceIdentityCertificate MS
* attestation.proxyIdentityCertificate MS
* attestation.proxySignature MS
* attestation.sourceSignature MS
* validator MS
* validator.organization MS
* validator.organization only Reference(PlannetOrganization)
* validator.identityCertificate MS
* validator.attestationSignature MS