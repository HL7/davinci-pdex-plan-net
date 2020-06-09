

Profile:        PlannetEndpoint
Parent:         Endpoint
Id:             plannet-Endpoint 
Title:          "Plan-net Endpoint"
Description:    "The technical details of an endpoint that can be used for electronic services, such as for web services providing XDS.b or a REST endpoint for another FHIR server. This may include any security context information."
* meta.lastUpdated 1..1
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
       ContactPointAvailableTime named contactpoint-availabletime 0..* MS and
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
* meta.lastUpdated 1..1
* extension contains
    NewPatients named newpatients 0..* MS
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
* category 1..1 MS
* category from HealthcareServiceCategoryVS (extensible)
* type MS
* specialty MS
* specialty from SpecialtiesVS (required)
* location only Reference(PlannetLocation)
* location MS
* name MS
* comment MS
* extraDetails MS
* photo MS
* telecom MS
* telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..* MS and
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
* meta.lastUpdated 1..1
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* status 1..1 MS
* status = $PublicationStatus#active  (exactly) 
* type 1..1 MS 
* type from InsuranceProductTypeVS (extensible)
* type ^short = "Product Type"
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
       ContactPointAvailableTime named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
* contact.telecom.value MS
* contact.telecom.system MS
* contact.telecom.use MS
* contact.telecom.period MS
* endpoint only Reference(PlannetEndpoint)
* network only Reference(PlannetNetwork)
* plan ^short = "Cost sharing details for the plan"
* plan.type from InsurancePlanTypeVS (extensible)
* plan.type ^short = "Categorization of the cost sharing for the plan"
* plan.coverageArea only Reference(PlannetLocation)
* plan.network only Reference(PlannetNetwork)


Profile:        PlannetLocation
Parent:         $USCoreLocation
Id:             plannet-Location
Title:          "Plan-net Location"
Description:    "A Location is the physical place where healthcare services are provided, practitioners are employed, 
                 organizations are based, etc. Locations can range in scope from a room in a building to a geographic region/area."
* meta.lastUpdated 1..1
* extension contains
    NewPatients named newpatients 0..* MS and
    Accessibility named accessibility 0..* MS and 
    NewPatientProfile named newpatientprofile 0..* MS
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
       ContactPointAvailableTime named contactpoint-availabletime 0..* MS and
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
* meta.lastUpdated 1..1
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
       ContactPointAvailableTime named contactpoint-availabletime 0..* MS and
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
* meta.lastUpdated 1..1
* extension contains
   Qualification named qualification 0..*  and
   OrgDescription named org-description 0..1 
* extension[qualification].extension[code].valueCodeableConcept from SpecialtyAndDegreeLicenseCertificateVS (required)
* extension[qualification] ^short = "Qualification"
* extension[org-description] ^short = "Organization Description"
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
       ContactPointAvailableTime named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
* contact.telecom.value MS
* contact.telecom.system MS
* contact.telecom.use MS
* telecom MS
* telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..* MS and
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
* meta.lastUpdated 1..1
* obeys organization-or-participatingOrganization 
* extension contains
   Qualification named qualification 0..* 
* extension[qualification].extension[code].valueCodeableConcept from SpecialtyAndDegreeLicenseCertificateVS (required)
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
* code from $OrganizationRoleVS  (extensible)
* specialty MS
* specialty from SpecialtiesVS (required)
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
* endpoint only Reference (PlannetEndpoint)




Profile:        PlannetPractitioner
Parent:         $USCorePractitioner
Id:             plannet-Practitioner
Title:          "Plan-net Practitioner"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."
* meta.lastUpdated 1..1
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
* address.extension contains $GeolocationExtension named geolocation 0..* 
* telecom.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..*  and
    ViaIntermediary named via-intermediary 0..* 
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* gender MS
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
* qualification.code from IndividualSpecialtyAndDegreeLicenseCertificateVS (required)
* qualification.period MS
* qualification.issuer MS
* communication MS



Profile:        PlannetPractitionerRole
Parent:         PractitionerRole
Id:             plannet-PractitionerRole
Title:          "Plan-net PractitionerRole"
Description:    "PractionerRole describes details about a provider, which can be a practitioner or an organization. When the provider is a practitioner, 
there may be a relationship to an organization. A provider renders services to patients at a location. When the provider is a practitioner, there may also 
be a relationship to an organization. Practitioner participation in healthcare provider insurance networks may be direct or through their role at an organization."

* meta.lastUpdated 1..1
* obeys practitioner-or-organization-or-healthcareservice-or-location 
* extension contains
   NewPatients named newpatients 0..* MS and
   NewPatientProfile named newpatientprofile 0..* MS and
   NetworkReference named network-reference 0..* MS and
   Qualification named qualification 0..* 
* extension[qualification].extension[code].valueCodeableConcept from IndividualSpecialtyAndDegreeLicenseCertificateVS (required)
* extension[newpatients] ^short = "New Patients"
* extension[network-reference] ^short = "NetworkReference"
* extension[qualification] ^short = "Qualification"
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
* code 1..1  MS  
* specialty 0..1  MS
* specialty from IndividualAndGroupSpecialtiesVS (required)
* location only Reference(PlannetLocation)
* location MS
* healthcareService only Reference(PlannetHealthcareService)
* telecom MS
* telecom.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..* MS and
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

