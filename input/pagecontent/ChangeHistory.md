### Changes and Updates for Version 2.0.0-ballot

The following high level changes were addressed in this release:

* Updated Bulk Data support to version 4.0.0 of the Bulk Data IG. This includes support for Bulk Publish. 
* Removed code systems that have been moved to THO
* Removed search parameters that were duplicative of core FHIR R4 search parameters. These parameters are listed below: 
  - Endpoint:
    * Plannet_sp_endpoint_organization
  - HealthcareService:
    * Plannet_sp_healthcareservice_category
    * Plannet_sp_healthcareservice_coverage_area
    * Plannet_sp_healthcareservice_endpoint
    * Plannet_sp_healthcareservice_location
    * Plannet_sp_healthcareservice_name
    * Plannet_sp_healthcareservice_organization
    * Plannet_sp_healthcareservice_specialty
    * Plannet_sp_healthcareservice_type
  - InsurancePlan:
    * Plannet_sp_insuranceplan_administered_by
    * Plannet_sp_insuranceplan_identifier
    * Plannet_sp_insuranceplan_name
    * Plannet_sp_insuranceplan_owned_by
    * Plannet_sp_insuranceplan_type
  - Location:
    * Plannet_sp_location_address
    * Plannet_sp_location_address_city
    * Plannet_sp_location_address_postalcode
    * Plannet_sp_location_address_state
    * Plannet_sp_location_endpoint
    * Plannet_sp_location_organization
    * Plannet_sp_location_partof
    * Plannet_sp_location_type
  - Organization:
    * Plannet_sp_organization_address
    * Plannet_sp_organization_endpoint
    * Plannet_sp_organization_name
    * Plannet_sp_organization_partof
    * Plannet_sp_organization_type
  - OrganizationAffiliation:
    * Plannet_sp_organizationaffiliation_endpoint
    * Plannet_sp_organizationaffiliation_location
    * Plannet_sp_organizationaffiliation_network
    * Plannet_sp_organizationaffiliation_participating_organization
    * Plannet_sp_organizationaffiliation_primary_organization
    * Plannet_sp_organizationaffiliation_role
    * Plannet_sp_organizationaffiliation_service
    * Plannet_sp_organizationaffiliation_specialty
  - Practitioner:
    * Plannet_sp_practitioner_family_name
    * Plannet_sp_practitioner_given_name
    * Plannet_sp_practitioner_name
  - PractitionerRole:
    * Plannet_sp_practitionerrole_endpoint
    * Plannet_sp_practitionerrole_location
    * Plannet_sp_practitionerrole_organization
    * Plannet_sp_practitionerrole_practitioner
    * Plannet_sp_practitionerrole_role
    * Plannet_sp_practitionerrole_service
    * Plannet_sp_practitionerrole_specialty

Specific JIRA tickets applied in this update are listed below:


#### Non-Compatible

* [FHIR-58225](https://jira.hl7.org/browse/FHIR-58225) Clarify Conformance Expectations for Provider Directory Search Capabilities
* [FHIR-57634](https://jira.hl7.org/browse/FHIR-57634) VirtualModalitiesVS is using local CodeSystem when the same exists in THO
* [FHIR-57633](https://jira.hl7.org/browse/FHIR-57633) OrganizationAffiliationRoleVS is using a local CodeSystem when the same exists in THO
* [FHIR-57632](https://jira.hl7.org/browse/FHIR-57632) HealthcareServiceCategoryVS is using a local CodeSystem when the same exists in THO
* [FHIR-57631](https://jira.hl7.org/browse/FHIR-57631) DeliveryMethodVS is using a local CodeSystem when the same exists in THO
* [FHIR-57630](https://jira.hl7.org/browse/FHIR-57630) the AccessibilityVS is using local codes when the same exist in THO
* [FHIR-57460](https://jira.hl7.org/browse/FHIR-57460) Accessibility vocabulary should use THO codeSystem
* [FHIR-57456](https://jira.hl7.org/browse/FHIR-57456) the AcceptingPatientsVS is using a local CodeSystem when the same exists in THO
* [FHIR-57453](https://jira.hl7.org/browse/FHIR-57453) insurance-product-type is in THO so should not be duplicated in Plan-Net
* [FHIR-51109](https://jira.hl7.org/browse/FHIR-51109) Clarify and narrow the required search parameter support

#### Substantive

* [FHIR-57809](https://jira.hl7.org/browse/FHIR-57809) Request to set Birthdate to 0..0 in Practitioner
* [FHIR-56859](https://jira.hl7.org/browse/FHIR-56859) Add MA Plan Finder identifier to InsurancePlan
* [FHIR-56850](https://jira.hl7.org/browse/FHIR-56850) Active flag on all PDEX FHIR Resources
* [FHIR-56373](https://jira.hl7.org/browse/FHIR-56373) The Taxonomy codes mentioned in the IG 1.2.0 version don't consist of all the Taxonomy codes mentioned on the NUCC website
* [FHIR-51909](https://jira.hl7.org/browse/FHIR-51909) New search parameters are not in the CapabilityStatement
* [FHIR-51481](https://jira.hl7.org/browse/FHIR-51481) Evaluate REST vs. Bulk exchange options
* [FHIR-51185](https://jira.hl7.org/browse/FHIR-51185) IG : DaVinci PDex Plan Net - Provider Dir (V1.1.0) - Practitioner Profile
* [FHIR-51912](https://jira.hl7.org/browse/FHIR-51912) The sample queries under 7.2.1 "Searching for active Practitioners and Organizations" are not correct and there is a misspelling of Practitioners
* [FHIR-51803](https://jira.hl7.org/browse/FHIR-51803) Conformance expectations incorrectly points to the Formulary CapabilityStatement vs PlanNet


#### Non-substantive

* [FHIR-56420](https://jira.hl7.org/browse/FHIR-56420) Incorrect word "Confexpectations" used as page header in Section 4
* [FHIR-52377](https://jira.hl7.org/browse/FHIR-52377) IG seems to imply incorrect use of _LastUpdated
* [FHIR-51844](https://jira.hl7.org/browse/FHIR-51844) Remove mention of PlanNet not including PracRole
* [FHIR-51759](https://jira.hl7.org/browse/FHIR-51759) Clarify conformance actors
* [FHIR-50180](https://jira.hl7.org/browse/FHIR-50180) new-patients-characteristics constraint typo
* [FHIR-53594](https://jira.hl7.org/browse/FHIR-53594) Add CPT IP statement to rest of IP statements
* [FHIR-53570](https://jira.hl7.org/browse/FHIR-53570) Change the Plan net Support->Discussion Forum link to point to the plan net stream



### Changes and Updates for Version 1.2.0

The following high level changes were addressed in this release:

* Updated dependencies to reference to multiple versions of US Core per latest Da Vinci recommendations (7.0.0, 6.1.0, and 3.1.1)
* Updated dependencies to reference Da Vinci HRex version 1.1.0
* Updated IG organization and structure to match the latest Da Vinci recommendations

Specific JIRA tickets applied in this update are listed below:

* [FHIR-46786](https://jira.hl7.org/browse/FHIR-46786)	SearchParameter with code `network`	
* [FHIR-46353](https://jira.hl7.org/browse/FHIR-46353)	Add capabilitystatement-expectation extensions to CapabilityStatement supportedProfile elements	
* [FHIR-45635](https://jira.hl7.org/browse/FHIR-45635)	DaVinci vs. Da Vinci for IG name/title/narrative	
* [FHIR-45300](https://jira.hl7.org/browse/FHIR-45300)	Retrieving Inactive or Terminated Provider Data Records through BULK FHIR API	
* [FHIR-43796](https://jira.hl7.org/browse/FHIR-43796)	PractitionerRole newpatients extension cardinality	
* [FHIR-41844](https://jira.hl7.org/browse/FHIR-41844)	Remove the requirement of meta.profile	
* [FHIR-40923](https://jira.hl7.org/browse/FHIR-40923)	Please remove value: 'OTHER' from Extensible Value Set: HealthcareServiceCategoryVS	
* [FHIR-40824](https://jira.hl7.org/browse/FHIR-40824)	Add operation for bulk export operation to US Da Vinci PDex Plan Net	
* [FHIR-40806](https://jira.hl7.org/browse/FHIR-40806)	Category shouldn't be constrained to only 1	
* [FHIR-40592](https://jira.hl7.org/browse/FHIR-40592)	Profile - Practitioner : Practitioner.qualification	
* [FHIR-37680](https://jira.hl7.org/browse/FHIR-37680)	Descriptive Paragraph on Plan-Net PractitionerRole problematic	
* [FHIR-36473](https://jira.hl7.org/browse/FHIR-36473)	Update specialty value sets based on changes to the referenced code system	
* [FHIR-36472](https://jira.hl7.org/browse/FHIR-36472)	Update specialty value sets based on changes to the referenced code system	
* [FHIR-34289](https://jira.hl7.org/browse/FHIR-34289)	Update Resource Relationship Diagam	
* [FHIR-34288](https://jira.hl7.org/browse/FHIR-34288)	Upgrade plan-net to US Core 4.0.1 	
* [FHIR-34140](https://jira.hl7.org/browse/FHIR-34140)	HealthcareService delivery-method is too restrictive	
* [FHIR-33206](https://jira.hl7.org/browse/FHIR-33206)	Ability to manage Provider Directory List for incoming/outgoing providers	
* [FHIR-33205](https://jira.hl7.org/browse/FHIR-33205)	Expand current options for InsurancePlan Plan Type 	
* [FHIR-33140](https://jira.hl7.org/browse/FHIR-33140)	Spelling error in OrganizationAffiliationRoleCS	
* [FHIR-31752](https://jira.hl7.org/browse/FHIR-31752)	Missing query for PlannetInsurancePlan Profile	
* [FHIR-31570](https://jira.hl7.org/browse/FHIR-31570)	Cardinality of Organization.address in Plan-net Network profile	
* [FHIR-31499](https://jira.hl7.org/browse/FHIR-31499)	Update specialty value sets based on changes to the referenced code system 	
* [FHIR-31498](https://jira.hl7.org/browse/FHIR-31498)	Update specialty value sets based on changes to the referenced code system 	
* [FHIR-31497](https://jira.hl7.org/browse/FHIR-31497)	Update specialty value sets based on changes to the referenced code system 	
* [FHIR-31496](https://jira.hl7.org/browse/FHIR-31496)	Update specialty value sets based on changes to the referenced code system 	
* [FHIR-31495](https://jira.hl7.org/browse/FHIR-31495)	Update specialty value sets based on changes to the referenced code system 	
* [FHIR-31494](https://jira.hl7.org/browse/FHIR-31494)	Update specialty value sets based on changes to the referenced code system 	
* [FHIR-29767](https://jira.hl7.org/browse/FHIR-29767)	Capture Cultural Competency proficiency for Practitioner	
* [FHIR-25334](https://jira.hl7.org/browse/FHIR-25334)	Suggest adding additional words to simplify and clarify.	
* [FHIR-25333](https://jira.hl7.org/browse/FHIR-25333)	Suggest removing as redundant with the first sentence.	
* [FHIR-25310](https://jira.hl7.org/browse/FHIR-25310)	added may	
* [FHIR-25309](https://jira.hl7.org/browse/FHIR-25309)	As there are many other use case then displayed	


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