
### Changes and Updates for Version 1.2.0


The following high level changes addressed in this release:

* Updated dependencies to reference to multiple versions of US Core per latest Da Vinci recommendations (7.0.0, 6.1.0, and 3.1.1)
* Updated dependencies to reference Da Vinci HRex version 1.1.0
* Updated IG organization and structure to match the latest Da Vinci recommendations

Specific JIRA tickets applied in this update are listed below:

[FHIR-46786](https://jira.hl7.org/browse/FHIR-46786)	SearchParameter with code `network`	
[FHIR-46353](https://jira.hl7.org/browse/FHIR-46353)	Add capabilitystatement-expectation extensions to CapabilityStatement supportedProfile elements	
[FHIR-45635](https://jira.hl7.org/browse/FHIR-45635)	DaVinci vs. Da Vinci for IG name/title/narrative	
[FHIR-45300](https://jira.hl7.org/browse/FHIR-45300)	Retrieving Inactive or Terminated Provider Data Records through BULK FHIR API	
[FHIR-43796](https://jira.hl7.org/browse/FHIR-43796)	PractitionerRole newpatients extension cardinality	
[FHIR-41844](https://jira.hl7.org/browse/FHIR-41844)	Remove the requirement of meta.profile	
[FHIR-40923](https://jira.hl7.org/browse/FHIR-40923)	Please remove value: 'OTHER' from Extensible Value Set: HealthcareServiceCategoryVS	
[FHIR-40824](https://jira.hl7.org/browse/FHIR-40824)	Add operation for bulk export operation to US Da Vinci PDex Plan Net	
[FHIR-40806](https://jira.hl7.org/browse/FHIR-40806)	Category shouldn't be constrained to only 1	
[FHIR-40592](https://jira.hl7.org/browse/FHIR-40592)	Profile - Practitioner : Practitioner.qualification	
[FHIR-37680](https://jira.hl7.org/browse/FHIR-37680)	Descriptive Paragraph on Plan-Net PractitionerRole problematic	
[FHIR-36473](https://jira.hl7.org/browse/FHIR-36473)	Update specialty value sets based on changes to the referenced code system	
[FHIR-36472](https://jira.hl7.org/browse/FHIR-36472)	Update specialty value sets based on changes to the referenced code system	
[FHIR-34289](https://jira.hl7.org/browse/FHIR-34289)	Update Resource Relationship Diagam	
[FHIR-34288](https://jira.hl7.org/browse/FHIR-34288)	Upgrade plan-net to US Core 4.0.1 	
[FHIR-34140](https://jira.hl7.org/browse/FHIR-34140)	HealthcareService delivery-method is too restrictive	
[FHIR-33206](https://jira.hl7.org/browse/FHIR-33206)	Ability to manage Provider Directory List for incoming/outgoing providers	
[FHIR-33205](https://jira.hl7.org/browse/FHIR-33205)	Expand current options for InsurancePlan Plan Type 	
[FHIR-33140](https://jira.hl7.org/browse/FHIR-33140)	Spelling error in OrganizationAffiliationRoleCS	
[FHIR-31752](https://jira.hl7.org/browse/FHIR-31752)	Missing query for PlannetInsurancePlan Profile	
[FHIR-31570](https://jira.hl7.org/browse/FHIR-31570)	Cardinality of Organization.address in Plan-net Network profile	
[FHIR-31499](https://jira.hl7.org/browse/FHIR-31499)	Update specialty value sets based on changes to the referenced code system 	
[FHIR-31498](https://jira.hl7.org/browse/FHIR-31498)	Update specialty value sets based on changes to the referenced code system 	
[FHIR-31497](https://jira.hl7.org/browse/FHIR-31497)	Update specialty value sets based on changes to the referenced code system 	
[FHIR-31496](https://jira.hl7.org/browse/FHIR-31496)	Update specialty value sets based on changes to the referenced code system 	
[FHIR-31495](https://jira.hl7.org/browse/FHIR-31495)	Update specialty value sets based on changes to the referenced code system 	
[FHIR-31494](https://jira.hl7.org/browse/FHIR-31494)	Update specialty value sets based on changes to the referenced code system 	
[FHIR-29767](https://jira.hl7.org/browse/FHIR-29767)	Capture Cultural Competency proficiency for Practitioner	
[FHIR-25334](https://jira.hl7.org/browse/FHIR-25334)	Suggest adding additional words to simplify and clarify.	
[FHIR-25333](https://jira.hl7.org/browse/FHIR-25333)	Suggest removing as redundant with the first sentence.	
[FHIR-25310](https://jira.hl7.org/browse/FHIR-25310)	added may	
[FHIR-25309](https://jira.hl7.org/browse/FHIR-25309)	As there are many other use case then displayed	


### Changes and Updates for Version 1.1.0

* Fixed names of 3 search parameter files based on improved IG publisher error checking:   healthcareservice-service-category, location-address-postalcode and location-address-state.  All of these were mismatched with the search parameter name, so the file couldn't be found.
* Updated Taxonomy Codes (Jira tickets <a href='https://jira.hl7.org/browse/FHIR-33206?filter=14707'>FHIR 31494 </a> - <a href='https://jira.hl7.org/browse/FHIR-33206?filter=14707'>FHIR 31499 </a>)
* Make HealthcareService Delivery Method optional (Jira ticket <a href='https://jira.hl7.org/browse/FHIR-34140?filter=14707'>FHIR 34140</a>)
* Change Organization.type binding from OrganizationType to NetworkType (Jira ticket <a href='https://jira.hl7.org/browse/FHIR-28919?filter=14707'>FHIR 28919</a>)
* Added 'catastrophic' options to Insurance Plan Types  (Jira ticket <a href='https://jira.hl7.org/browse/FHIR-33205filter=14707'>FHIR 33205</a>)
* Ability to manage Provider Directory List for incoming/outgoing providers (Jira ticket <a href='https://jira.hl7.org/browse/FHIR-33206?filter=14707'>FHIR 33206</a>)
* Update Resource Relationships Diagram (Jira ticket <a href='https://jira.hl7.org/browse/FHIR-34289?filter=14707'>FHIR 34289</a>)
* Fix Spelling (Jira ticket <a href='https://jira.hl7.org/browse/FHIR-33140?filter=14707'>FHIR 33140</a>)
* Transitioned IG to Sushi 1.0.0 directory structure

### Changes and Updates for Version 1.0.0

* Davinci PDEX Plan Net, Release 1 - US Realm STU

### Changes and Updates for Version 0.1.0

* Davinci pdex Plan Net - STU Ballot