Alias: $VerificationCommunicationMethodCS = http://terminology.hl7.org/CodeSystem/verificationresult-communication-method
Alias: $VerificationresultCommunicationMethodVS = http://terminology.hl7.org/ValueSet/verificationresult-communication-method
Alias: $verificationresult-validation-type = http://hl7.org/fhir/ValueSet/verificationresult-validation-type
Alias: $VerificationresultPrimarySourceTypeVS = http://hl7.org/fhir/ValueSet/verificationresult-primary-source-type
Alias: $ValidationProcessCS = http://terminology.hl7.org/CodeSystem/validation-process
Alias: $VerificationResultNeedCS = http://terminology.hl7.org/CodeSystem/need
Alias: $VerificationResultStatusCS = http://hl7.org/fhir/CodeSystem/status
Alias: $VerificationTypeCS = http://terminology.hl7.org/CodeSystem/validation-type
Alias: $verificationresult-validation-type = http://hl7.org/fhir/ValueSet/verificationresult-validation-type
Alias: $VerificationFailureActionCS = http://terminology.hl7.org/CodeSystem/failure-action
Alias: $VerificationresultPrimarySourceTypeCS = http://terminology.hl7.org/CodeSystem/primary-source-type
Alias: $ValidationstatusCS = http://terminology.hl7.org/CodeSystem/validation-status

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
Title: "Plannet Verification Process Value Set"
Description:  "This value set defines verification-process concepts used by Plannet to identify how directory information was verified or attested."
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


/*
Instance: JoeSmith
InstanceOf: PlannetPractitioner
Description: "Practitioner Dr Joe Smith"
Usage: #example
* meta.profile = Canonical(PlannetPractitioner)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* extension[verification-status].valueCodeableConcept = PlannetVerificationStatusCS#complete "Complete"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1003357849"
* identifier[NPI].extension[identifier-status].valueCode = $CredentialStatusCS#active
* identifier[1].system = "http://example.org/Plannet-identifiers"
* identifier[1].value = "JoeSmith"
* identifier[1].extension[identifier-status].valueCode = $CredentialStatusCS#active
* active = true
* name.text = "Joe Smith, MD"
* name.family = "Smith"
* name.given[0] = "Joe"
* address[0].line[0] = "263 Farmington Ave"
* address[=].city = "Farmington"
* address[=].state = "CT"
* address[=].postalCode = "06030"
* address[=].country = "US"
* address[=].use = #home
* address[+].line[0] = "400 Lee Rd Farmington, CT 06032"
* address[=].city = "Farmington"
* address[=].state = "CT"
* address[=].postalCode = "06032"
* address[=].country = "US"
* address[=].use = #work
* address[=].type = #physical
* telecom[+].system = #phone
* telecom[=].value = "555-123-6666"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "555-123-1234"
* telecom[=].use = #work
* qualification[0].code = $V2table0360CS#MD
* qualification[=].issuer.display = "State of Connecticut"
* qualification[=].code.text = "MD"
* qualification[=].extension[scope].extension[status].valueCode = $CredentialStatusCS#active 
* qualification[=].extension[scope].extension[whereValid].valueCodeableConcept = $USPSStateCS#CT 
* qualification[+].code = http://nucc.org/provider-taxonomy|26.1#207R00000X "Internal Medicine Physician"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[=].code.text = "Board Certified Internal Medicine"
* qualification[=].extension[scope].extension[status].valueCode = $CredentialStatusCS#active 
* qualification[=].extension[scope].extension[whereValid].valueCodeableConcept = $USPSStateCS#CT 
* qualification[+].code = FaCeT-credentialCS#DABIM
* qualification[=].code.text = "Diplomate of the American Board of Internal Medicine"
* qualification[=].issuer.display = "American Board of Internal Medicine"
// pharmacy license, that is not used in any PractitionerRole.
* qualification[+].code = FaCeT-credentialCS#PharmD
* qualification[=].code.text = "Doctor of Pharmacy"
* extension[cms-medicare-enrollment-in-good-standing].valueBoolean = true
* extension[cms-identity-verified].valueBoolean = true
* extension[cms-aligned-with-data-network].valueBoolean = true
*/

Instance: Verify-JoeSmith
InstanceOf: PlannetVerification
Description: "Verify Practitioner Joe Smith"
Usage: #example
* meta.profile = Canonical(PlannetVerification)
* meta.lastUpdated = "2023-06-03T13:26:22.0314215+00:00"
* target[0] = Reference(Practitioner/JoeSmith)
* target[=].display = "Practitioner Joe Smith"
* target[=].extension[http://hl7.org/fhir/StructureDefinition/targetPath][0].valueString = "Practitioner.qualification"
* need = $VerificationResultNeedCS#periodic "Periodic"
* need.text = "The frequency the target(s) need to be verified is Periodic"
* status = $VerificationResultStatusCS#validated
* statusDate = "2023-06-03T13:26:22.0314215+00:00"
* validationType = $VerificationTypeCS#primary "Primary Source"
* validationType.text = "The verification type is via Primary Source"
* validationProcess = $ValidationProcessCS#primary "primary source"
* validationProcess.text = "The verification process is via primary source"
* frequency.repeat.frequency = 1
* frequency.repeat.period = 1
* frequency.repeat.periodUnit = #a
* lastPerformed = "2023-06-03T13:26:22.0314215+00:00"
* nextScheduled = "2024-06-03"
* failureAction = $VerificationFailureActionCS#fatal "Fatal"
* primarySource[0].who.display = "State of Illinois Licensing Board"
* primarySource[=].type = $VerificationresultPrimarySourceTypeCS#lic-board "License Board"
* primarySource[=].validationStatus = $ValidationstatusCS#successful "Successful"
* primarySource[=].validationDate = "2023-06-03T13:26:22.0314215+00:00"
* attestation.who = Reference(Practitioner/JoeSmith)
* attestation.who.display = "Joe Smith"
* attestation.communicationMethod = $VerificationCommunicationMethodCS#manual
* attestation.communicationMethod.coding[0].display = "Manual"
* attestation.date = "2023-03-28"


