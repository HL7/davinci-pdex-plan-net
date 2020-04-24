

Profile:        PlannetEndpoint
Parent:         Endpoint
Id:             plannet-Endpoint 
Title:          "Plan-net Endpoint"
Description:    "The technical details of an endpoint that can be used for electronic services, such as for web services providing XDS.b or a REST endpoint for another FHIR server. This may include any security context information."
* identifier.extension contains 
    EndpointUsecase named endpoint-usecase 0..*
* identifier.extension[endpoint-usecase] ^short = "Endpoint Usecase"
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* status MS
* status = $EndpointStatus#active (exactly) 
* connectionType MS 
* connectionType from EndpointConnectionTypeVS (extensible)
* connectionType ^binding.extension[0].url = $MinValueSet
* connectionType ^binding.extension[0].valueCanonical = "http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/MinEndpointConnectionTypeVS" // MinEndpointConnectionTypeVS
* name MS
* managingOrganization only Reference(PlannetOrganization)
* managingOrganization MS
* contact MS
*  contact.extension contains
       $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* contact.extension[via-intermediary] ^short = "Via Intermediary"
* contact.value MS
* contact.system MS
* contact.use MS
* contact.rank MS
* contact.period MS
* period MS
* payloadType 1..1 MS 
* payloadType from EndpointPayloadTypeVS (extensible)
* payloadMimeType MS
* address MS
* header MS

Profile:        PlannetHealthcareService
Parent:         HealthcareService
Id:             plannet-HealthcareService
Title:          "Plan-net HealthcareService"
Description:    "The HealthCareService  resource typically describes services offered by an organization/practitioner at a location. The resource may be used to encompass a variety of services covering the entire healthcare spectrum, including promotion, prevention, diagnostics, hospital and ambulatory care, home care, long-term care, and other health-related and community services."
* extension contains
    NewPatients named newpatients 1..1 MS
* extension[newpatients] ^short = "New Patients"
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* active MS
* active = true 
* providedBy only Reference(PlannetOrganization)
* providedBy MS
* category MS
* type MS
* specialty MS
// * specialty from $NUCCProviderTaxonomy (required) -- NOT agreed to
* location only Reference(PlannetLocation)
* location MS
* name MS
* comment MS
* extraDetails MS
* photo MS
* telecom MS
* telecom.extension contains
       $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* telecom.use MS
* telecom.period MS
* coverageArea only Reference(PlannetLocation)
* coverageArea MS
// * serviceProvisionCode MS
// eligibility  MS
// program  
//* characteristic MS
//* referralMethod MS
* appointmentRequired MS
* availableTime MS
* availableTime.daysOfWeek MS
* availableTime.allDay MS
* availableTime.availableStartTime MS
* availableTime.availableEndTime MS
* notAvailable MS
* notAvailable.description MS
* notAvailable.during MS
* availabilityExceptions MS
* endpoint only Reference(PlannetEndpoint)
* endpoint MS




Profile:        PlannetInsurancePlan
Parent:         InsurancePlan
Id:             plannet-InsurancePlan
Title:          "Plan-net InsurancePlan"
Description:    "An InsurancePlan is a discrete package of health insurance coverage benefits that are offered under a particular network type. A given payer’s products typically differ by network type and/or covered benefits. A plan pairs a product’s covered benefits with the particular cost sharing structure offered to a consumer. A given product may comprise multiple plans (i.e. each plan offers different cost sharing requirements for the same set of covered benefits).

InsurancePlan describes a health insurance offering comprised of a list of covered benefits (i.e. the product), costs associated with those benefits (i.e. the plan), and additional information about the offering, such as who it is owned and administered by, a coverage area, contact information, etc."
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* status 1..1 MS
* status = $PublicationStatus#active  (exactly) 
* type 0..1 MS 
* type from PlanTypeVS (extensible)
* name MS
* alias MS
* ownedBy 1..1 MS
* ownedBy only Reference(PlannetOrganization)
* administeredBy 1..1 MS
* administeredBy only Reference(PlannetOrganization)
* coverageArea only Reference(PlannetLocation)
* coverageArea MS
* contact MS
* contact.name MS
* contact.name.use MS
* contact.name.text MS
* contact.name.family MS
* contact.name.given MS
* contact.name.prefix MS
* contact.name.suffix MS
* contact.name.period MS
* contact.telecom MS
* contact.telecom.extension contains
       $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
* contact.telecom.value MS
* contact.telecom.system MS
* contact.telecom.use MS
* contact.telecom.period MS
* endpoint only Reference(PlannetEndpoint)
* network only Reference(PlannetNetwork)


Profile:        PlannetLocation
Parent:         $USCoreLocation
Id:             plannet-Location
Title:          "Plan-net Location"
Description:    "A Location is the physical place where healthcare services are provided, practitioners are employed, 
                 organizations are based, etc. Locations can range in scope from a room in a building to a geographic region/area."
* extension contains
    NewPatients named newpatients 0..* MS and
    Accessibility named accessibility 0..* MS and 
    $NewPatientProfileExtension named newpatientprofile 0..* MS
* extension[newpatients] ^short = "New Patients"
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* status 1..1 MS
* alias MS
* description MS
* mode 0..0
* type MS
* telecom MS
* telecom.extension contains
       $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* telecom.use MS
* telecom.period MS
// * physicalType MS
* position MS
* managingOrganization 0..1 MS
* managingOrganization only Reference(PlannetOrganization)
* partOf 0..1 MS
* partOf only Reference(PlannetLocation)
* hoursOfOperation MS
* hoursOfOperation.daysOfWeek MS
* hoursOfOperation.allDay MS
* hoursOfOperation.openingTime MS
* hoursOfOperation.closingTime MS
* availabilityExceptions MS
* endpoint MS
* endpoint only Reference(PlannetEndpoint)


Profile:        PlannetNetwork
Parent:         Organization 
Id:             plannet-Network
Title:          "Plan-net Network"
Description:    "A Network refers to a healthcare provider insurance network. A healthcare provider insurance network is an aggregation of organizations and individuals that deliver a set of services across a geography through health insurance products/plans. A network is typically owned by a payer.

In the PlanNet IG, individuals and organizations are represented as participants in a PLan-Net Network through the practitionerRole and Plan-Net-organizationAffiliation resources, respectively.


Guidance:   When the contact is a department name, rather than a human (e.g., patient help line), include a blank family and given name, and provide the department name in contact.nae.text"
* extension contains
    LocationReference named location-reference 0..* MS
* extension[location-reference] ^short = "Location Reference"
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* active 1..1 MS
* active = true (exactly)
* type MS
* type = $OrgType#pay 
* name MS
* alias MS
* telecom 0..0
* address 0..1 MS
* partOf 1..1 MS
* partOf only Reference(PlannetOrganization)
* contact MS
* contact.name MS
* contact.name.use MS
* contact.name.text MS
* contact.name.family MS
* contact.name.given MS
* contact.name.prefix MS
* contact.name.suffix MS
* contact.name.period MS
* contact.telecom MS
* contact.telecom.extension contains
       $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
* contact.telecom.value 1..1 MS
* contact.telecom.system 1..1 MS
* contact.telecom.use MS
* contact.telecom.period MS
* endpoint only Reference(PlannetEndpoint)
* endpoint MS 



Profile:        PlannetOrganization
Parent:         $USCoreOrganization
Id:             plannet-Organization
Title:          "Plan-net Organization"
Description:    "An organization is a formal or informal grouping of people or organizations with a common purpose, such as a company, institution, corporation, community group, or healthcare practice.
Guidance:   When the contact is a department name, rather than a human (e.g., patient help line), include a blank family and given name, and provide the department name in contact.name.text"
* extension contains
   Qualification named qualification 0..* MS and
   $OrgDescriptionExtension named org-description 0..1 MS
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* active MS
* active = true 
* name MS
* alias MS
* partOf MS  
* partOf only Reference(PlannetOrganization)
* address MS
* address.extension contains $GeolocationExtension named geolocation 0..* MS
* address.use MS
* address.type MS
* address.text MS
* address.line MS 
* address.city MS
* address.state MS
* address.postalCode MS
* address.country MS
* address.period MS
* contact MS
* contact.telecom MS
* contact.telecom.extension contains
       $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
* contact.telecom.value MS
* contact.telecom.system MS
* contact.telecom.use MS
* telecom MS
* telecom.extension contains
       $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* telecom.use MS
* telecom.period MS
* type from OrgTypeVS
* endpoint MS

Profile:        PlannetOrganizationAffiliation
Parent:         OrganizationAffiliation
Id:             plannet-OrganizationAffiliation
Title:          "Plan-net OrganizationAffiliation"
Description:    "The OrganizationAffiliation resource describes relationships between two or more organizations, including the services one organization provides another, the location(s) where they provide services, the availability of those services, electronic endpoints, and other relevant information."
* obeys organization-or-participatingOrganization 
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* active MS
* active = true 
* period MS
* organization MS 
* organization only Reference (PlannetOrganization)
* participatingOrganization MS 
* participatingOrganization only Reference (PlannetOrganization)
* network MS 
* network only Reference (PlannetNetwork)
* code MS
* specialty MS
* specialty from $NUCCProviderTaxonomy (required)
* location MS 
* location only Reference (PlannetLocation)
* healthcareService MS 
* healthcareService only Reference (PlannetHealthcareService)
* telecom MS
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* telecom.use MS
* telecom.period MS
* endpoint MS




Profile:        PlannetPractitioner
Parent:         $USCorePractitioner
Id:             plannet-Practitioner
Title:          "Plan-net Practitioner"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."
* extension contains
   CommunicationProficiency named communication-proficiency 0..1 MS
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* active MS
* active = true 
* name MS
* name.use MS
* name.text MS
* name.family MS
* name.given MS
* name.prefix MS
* name.suffix MS
* name.period MS
* address MS
* address.extension contains $GeolocationExtension named geolocation 0..* MS
* address.use MS
* address.type MS
* address.text MS
* address.line MS 
* address.city MS
* address.state MS
* address.postalCode MS
* address.country MS
* address.period MS
* telecom MS
* telecom.extension contains
    $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
    ViaIntermediary named via-intermediary 0..* MS
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* telecom.use MS
* telecom.period MS
* gender MS
* birthDate MS 
* photo MS
* qualification MS
* qualification.extension contains 
    PractitionerQualification named practitioner-qualification 0..1 MS
* qualification.identifier MS
* qualification.identifier.use MS
* qualification.identifier.type MS
* qualification.identifier.system MS
* qualification.identifier.value MS
* qualification.identifier.period MS
* qualification.identifier.assigner MS
* qualification.code MS
* qualification.code from $V2table0360v27 (extensible)    // used to be (example)
* qualification.period MS
* qualification.issuer MS
* communication MS



Profile:        PlannetPractitionerRole
Parent:         PractitionerRole
Id:             plannet-PractitionerRole
Title:          "Plan-net PractitionerRole"
Description:    "PractionerRole describes details about a provider, which can be a practitioner or an organization. When the provider is a practitioner, there may be a relationship to an organization. A provider renders services to patients at a location. When the provider is a practitioner, there may also be a relationship to an organization. 
Practitioner participation in healthcare provider insurance networks may be direct or through their role at an organization.   Plannet-PractitionerRole could not be based on USCore because USCore-PractitionerRole Profile 
requires an associated practitioner and an associated organization which does not take into account that not all providers are people, i.e. the provider could be a 
group of people or a facility, nor does it take into account that not all practitioners are affiliated with an organization, i.e. they have a solo practice."
* obeys practitioner-or-organization-or-healthcareservice-or-location 
* extension contains
   NewPatients named newpatients 0..* MS and
   $NewPatientProfileExtension named newpatientprofile 0..* MS and
   NetworkReference named network-reference 0..* MS and
   Qualification named qualification 0..* MS
* extension[newpatients] ^short = "New Patients"
* extension[network-reference] ^short = "NetworkReference"
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* active 1..1 MS
* active = true 
* period MS 
* practitioner only Reference(PlannetPractitioner)   // 1..1 from USCore
* organization only Reference(PlannetOrganization)         // 1..1 from USCore
* practitioner 0..1  MS   // 1..1 from USCore
* organization 0..1   MS  // 1..1 from USCore
* code  from  $us-core-provider-role-vs (required) 
* code 1..1  MS
* specialty from $NUCCProviderTaxonomy (required)
* specialty 0..1 MS
* location only Reference(PlannetLocation)
* location MS
* healthcareService only Reference(PlannetHealthcareService)
* telecom MS
* telecom.extension contains
    $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
    ViaIntermediary named via-intermediary 0..* MS
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* telecom.rank MS
* telecom.use MS
* telecom.period MS
* availableTime MS
* availableTime.daysOfWeek MS
* availableTime.allDay MS
* availableTime.availableStartTime MS
* availableTime.availableEndTime MS
* notAvailable MS
* notAvailable.description MS
* notAvailable.during MS
* endpoint only Reference(PlannetEndpoint) 
* endpoint 0..* MS


Invariant:  practitioner-or-organization-or-healthcareservice-or-location 
Description: "If PlannetPractitionerRole.practitioner is absent  ( PlannetPractitionerRole.organization, PlannetPractitionerRole.healthcareservice, PlannetPractitionerRole.location) must be present"
Expression: "practitioner.exists() or (organization.exists() or healthcareservice.exists() or location.exists())"
Severity:   #error
XPath:      "f:practitioner or (f:organization or f:healthcareservice or f:location) "


Invariant:  organization-or-participatingOrganization 
Description: "PlannetOrganizationAffiliation.organization or  PlannetOrganizationAffiliation.participatingOrganization"
Expression: "organization.exists() or participatingOrganization.exists()"
Severity:   #error
XPath:      "f:organization or f:participatingOrganization "


Extension: ViaIntermediary
Id: via-intermediary
Title: "Via Intermediary"
Description: "A reference to an alternative point of contact (plannet-PractitionerRole, plannet-Organization, plannet-OrganizationAffiliation, or plannet-Location) for this organization"
* value[x] only Reference
* valueReference MS
* valueReference only Reference(PlannetOrganization | PlannetPractitionerRole | PlannetOrganizationAffiliation | PlannetLocation) 


Extension: LocationReference
Id: location-reference
Title: "Location Reference"
Description: "A reference to a Location resource (plannet-Location) defining the coverage area of a health insurance provider network"
* value[x] only Reference
* valueReference MS
* valueReference only Reference(PlannetLocation) 

Extension: NetworkReference
Id: network-reference
Title: "Network Reference"
Description: "A reference to the healthcare provider insurance networks (plannet-Network) the practitioner participates in through their role"
* value[x] only Reference
* valueReference MS
* valueReference only Reference(PlannetNetwork) 

Extension: NewPatients
Id: newpatients
Title: "New Patients"
Description: "New Patients indicates whether new patients are being accepted in general, or from a specific network.   
              This extension is included in the PractitionerRole, HealthcareService, and Location profiles.  
              This provides needed flexibility for specifying whether a provider accepts new patients by location and network."
* value[x] 0..0
* extension contains
   acceptingPatients  1..1 MS and
   fromNetwork 0..1 MS 
* extension[acceptingPatients].value[x] only boolean
* extension[fromNetwork].value[x] only Reference(PlannetNetwork)

Extension: EndpointUsecase
Id: endpoint-usecase
Title: "Endpoint Usecase"
Description: "EndpointUseCase is an enumeration of the specific use cases (service descriptions) supported by the endpoint"
* value[x] 0..0
* extension contains
   Type 1..1 MS and
   Standard 0..1 MS 
* extension[Type] ^short = "An indication of the type of services supported by the endpoint"
* extension[Type].value[x] only  CodeableConcept 
* extension[Type].value[x] 1..1
* extension[Type].valueCodeableConcept from EndpointUsecaseVS (extensible)
* extension[Standard] ^short = "A URI to a published standard describing the services supported by the endpoint (e.g. an HL7 implementation guide)"
* extension[Standard].value[x] only uri 

Extension: PractitionerQualification
Id: practitioner-qualification
Title: "Practitioner Qualification"
Description: "An extension to add status and whereValid elements to a practitioner’s qualifications."
* value[x] 0..0
* extension contains
   status 1..1 MS and
   whereValid 0..1 MS 
* extension[status] ^short = "Status"
* extension[status].value[x] only  code 
* extension[status].value[x] 1..1
* extension[status].valueCode from $CredentialStatus (example)
* extension[status].valueCode = $CredentialStatus#active (exactly)
* extension[whereValid] ^short = "Where the qualification is valid"
* extension[whereValid].value[x] only CodeableConcept or Reference(PlannetLocation)
* extension[whereValid].valueCodeableConcept from $USPSState (required)
* extension[whereValid].value[x] 1..1

Extension: Qualification
Id: qualification
Title: "Qualification"
Description: "An extension to add qualifications for an organization (e.g. accreditation) or practitionerRole (e.g. registered to prescribe controlled substances)."
* extension contains
   identifier 0..* MS and 
   code 1..1 MS and
   issuer 1..1 MS and
   status 1..1 MS and
   period 0..1 MS and 
   whereValid 0..* MS
* extension[identifier].value[x] only Identifier 
* extension[identifier].value[x] 1..1
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] 1..1
* extension[code].valueCodeableConcept from $V2table0360v27 (example)
* extension[issuer].value[x] 1..1
* extension[issuer].value[x] only Reference(PlannetOrganization)
* extension[status].value[x] 1..1
* extension[status].value[x] only  code 
* extension[status].valueCode from $CredentialStatus (example)
* extension[status].valueCode = $CredentialStatus#active (exactly)
* extension[period].value[x] only Period 
* extension[period].value[x] 1..1
* extension[whereValid].value[x] only CodeableConcept or Reference(PlannetLocation)
* extension[whereValid].valueCodeableConcept from $USPSState (required)
* extension[whereValid].value[x] 1..1

Extension: Accessibility
Id: accessibility
Title: "Accessibility"
Description: "An extension to describe accessibility options offered by a practitioner or at a location."
* value[x] 1..1 
* value[x] only CodeableConcept 
* valueCodeableConcept from $AccessibilityVS (extensible)


Extension: CommunicationProficiency
Id: communication-proficiency
Title: "Communication Proficiency"
Description: "An extension to express a practitioner’s spoken proficiency with the language indicated in practitioner.communication."
* value[x] 1..1 
* value[x] only CodeableConcept 
* valueCodeableConcept from $LanguageProficiency (required)   // was example

//Extension: ConnectionTypeMinValue
//Parent:  $MinValueSet
//Id: connection-type-min-value
//Title: "Minimum Value for ConnectType"
//* value[x] only canonical 
//* valueCanonical = MinEndpointConnectionTypeVS
