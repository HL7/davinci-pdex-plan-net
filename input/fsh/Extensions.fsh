Extension: Accessibility
Id: accessibility
Title: "Accessibility"
Description: "An extension to describe accessibility options offered by a practitioner or at a location."
* value[x] 1..1 
* value[x] only CodeableConcept 
* value[x] from AccessibilityVS (extensible)


Extension: CommunicationProficiency
Id: communication-proficiency
Title: "Communication Proficiency"
Description: "An extension to express a practitioner’s spoken proficiency with the language indicated in practitioner.communication."
* value[x] 1..1 
* value[x] only CodeableConcept 
* valueCodeableConcept from LanguageProficiencyVS (required)   // was example

Extension: ContactPointAvailableTime
Id: contactpoint-availabletime
Title: "Contactpoint Availabletime"
Description: "An extension representing the days and times a contact point is available"
* value[x] 0..0
* extension contains
   daysOfWeek 0..* MS and 
   allDay 0..1 MS and
   availableStartTime 0..1 MS and
   availableEndTime 0..1 MS
* extension[daysOfWeek].value[x] only code 
* extension[daysOfWeek].valueCode from $DaysOfWeekVS
* extension[allDay].value[x] only boolean 
* extension[availableStartTime].value[x] only time 
* extension[availableEndTime].value[x] only time  

Extension: DeliveryMethod
Id: delivery-method
Title: "Delivery Method"
Description: "An extension describing the service delivery method.   If service delivery is virtual, one or more delivery modalities should be specified."
* value[x] 0..0
* extension contains
   type 1..1 and
   virtualModalities 0..* MS 
* extension[type].value[x] only CodeableConcept 
* extension[type].value[x] from DeliveryMethodVS (required)
* extension[type] ^short = "Physical or Virtual Service Delivery"
* extension[type].value[x] 1..1
* extension[virtualModalities].value[x] only CodeableConcept 
* extension[virtualModalities].value[x] from VirtualModalitiesVS (extensible)
* extension[virtualModalities].value[x] 1..1
* extension[virtualModalities] ^short = "Modalities of Virtual Delivery"


Extension: EndpointUsecase
Id: endpoint-usecase
Title: "Endpoint Usecase"
Description: "EndpointUseCase is an enumeration of the specific use cases (service descriptions) supported by the endpoint"
* value[x] 0..0
* extension contains
   type 1..1 MS and
   standard 0..1 MS 
* extension[type] ^short = "An indication of the type of services supported by the endpoint"
* extension[type].value[x] only  CodeableConcept 
* extension[type].value[x]  1..1
* extension[type].value[x] from EndpointUsecaseVS (extensible)
* extension[standard] ^short = "A URI to a published standard describing the services supported by the endpoint (e.g. an HL7 implementation guide)"
* extension[standard].value[x] only uri 
* extension[standard].value[x] 1..1


Extension: LocationReference
Id: location-reference
Title: "Location Reference"
Description: "A reference to a Location resource (plannet-Location) defining the coverage area of a health insurance provider network"
* value[x] only Reference (PlannetLocation)
* value[x] 1..1 MS 


Extension: NetworkReference
Id: network-reference
Title: "Network Reference"
Description: "A reference to the healthcare provider insurance networks (plannet-Network) the practitioner participates in through their role"
* value[x] only Reference(PlannetNetwork) 
* value[x] 1..1 MS 


Extension: NewPatients
Id: newpatients
Title: "New Patients"
Description: "New Patients indicates whether new patients are being accepted in general, or from a specific network.   
              This extension is included in the PractitionerRole, HealthcareService, and Location profiles.  
              This provides needed flexibility for specifying whether a provider accepts new patients by location and network."
* obeys new-patients-characteristics
* value[x] 0..0
* extension contains
   acceptingPatients  1..1 MS and
   fromNetwork 0..1 MS  and
   characteristics 0..* MS 
* extension[acceptingPatients].value[x] only CodeableConcept
* extension[acceptingPatients] ^short = "Accepting Patients"
* extension[acceptingPatients].value[x] 1..1
* extension[acceptingPatients].value[x] from AcceptingPatientsVS (required)
* extension[fromNetwork].value[x] only Reference(PlannetNetwork)
* extension[fromNetwork].value[x] 1..1
* extension[fromNetwork] ^short = "From Network"
* extension[characteristics].value[x] only string
* extension[characteristics].value[x] 1..1
* extension[characteristics] ^short = "Characteristics of accepted patients"



Invariant:  new-patients-characteristics 
Description: "If no new patients are accepted, no characteristics are allowed"
Expression: "extension('acceptingPatients').valueCodeableConcept.coding.exists(code = 'no') implies extension('characteristics').empty()"
Severity:   #error


Extension: OrgDescription
Id: org-description
Title: "Org Description"
Description: "An extension to provide a human-readable description of an organization."
* value[x] 1..1 MS
* value[x] only string 



Extension: PractitionerQualification
Id: practitioner-qualification
Title: "Practitioner Qualification"
Description: "An extension to add status and whereValid elements to a practitioner’s qualifications."
* value[x] 0..0
* extension contains
   status 1..1 MS and
   whereValid 0..* MS 
* extension[status] ^short = "Status"
* extension[status].value[x] only  code 
* extension[status].value[x] 1..1
* extension[status].valueCode from QualificationStatusVS (required)
* extension[status].valueCode =  $QualificationStatusCS#active (exactly)
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
   issuer 0..1 MS and
   status 1..1 MS and
   period 0..1 MS and 
   whereValid 0..* MS
* extension[identifier].value[x] only Identifier 
* extension[identifier].value[x] 1..1
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] 1..1
* extension[code].value[x] from SpecialtyAndDegreeLicenseCertificateVS (extensible)
* extension[issuer].value[x] 1..1
* extension[issuer].value[x] only Reference(PlannetOrganization)
* extension[status].value[x] 1..1
* extension[status].value[x] only  code 
* extension[status].valueCode from QualificationStatusVS (required)
* extension[status].valueCode = $QualificationStatusCS#active (exactly)
* extension[period].value[x] only Period 
* extension[period].value[x] 1..1
* extension[whereValid].value[x] only CodeableConcept or Reference(PlannetLocation)
* extension[whereValid].value[x] from $USPSState (required)
* extension[whereValid].value[x] 1..1

Extension: ViaIntermediary
Id: via-intermediary
Title: "Via Intermediary"
Description: "A reference to an alternative point of contact (plannet-PractitionerRole, plannet-Organization, plannet-OrganizationAffiliation, or plannet-Location) for this organization"
* value[x] only Reference(PlannetPractitionerRole or PlannetOrganizationAffiliation or PlannetLocation or PlannetOrganization) 
* value[x] 1..1 MS


