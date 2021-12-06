Instance: HartfordOrthopedics 
InstanceOf: PlannetOrganization
Description: "Hartford Orthpedic Services is a group providing Orthpods for Acme of CT at Hartford General Hospital"
Usage: #example
* meta.profile = Canonical(PlannetOrganization)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "NPI456"
* identifier[NPI].system = $NPICS
* name = "Hartford Orthopedics Services"
* type = OrgTypeCS#prvgrp "Provider Group"
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][1].valueCode  = #tue
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][2].valueCode  = #wed
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][3].valueCode  = #thu
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][4].valueCode  = #fri 
* telecom[0].extension[contactpoint-availabletime][0].extension[allDay].valueBoolean = true
* telecom[0].extension[contactpoint-availabletime][1].extension[daysOfWeek][0].valueCode  = #sat
* telecom[0].extension[contactpoint-availabletime][1].extension[daysOfWeek][1].valueCode  = #sun 
* telecom[0].extension[contactpoint-availabletime][1].extension[availableStartTime].valueTime = 08:00:00
* telecom[0].extension[contactpoint-availabletime][1].extension[availableEndTime].valueTime = 17:00:00
* telecom[1].system = #url
* telecom[1].value = "https://www.orga.com"
* telecom[1].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "(111)-222-3333"
* contact.telecom[0].rank = 2
* contact.telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* contact.telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][1].valueCode  = #tue
* contact.telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][2].valueCode  = #wed
* contact.telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][3].valueCode  = #thu
* contact.telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][4].valueCode  = #fri 
* contact.telecom[0].extension[contactpoint-availabletime][0].extension[allDay].valueBoolean = true
* contact.telecom[0].extension[contactpoint-availabletime][1].extension[daysOfWeek][0].valueCode  = #sat
* contact.telecom[0].extension[contactpoint-availabletime][1].extension[daysOfWeek][1].valueCode  = #sun 
* contact.telecom[0].extension[contactpoint-availabletime][1].extension[availableStartTime].valueTime = 08:00:00
* contact.telecom[0].extension[contactpoint-availabletime][1].extension[availableEndTime].valueTime = 17:00:00

Instance: Hospital
InstanceOf: PlannetOrganization
Description: "Hartford General Hospital"
Usage: #example
* meta.profile = Canonical(PlannetOrganization)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "NPI456"
* identifier[NPI].system = $NPICS
* name = "Hartford General Hospital"
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[1].system = #url
* telecom[1].value = "https://www.hartfordgeneralhospital.com"
* telecom[1].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Hartford"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "(111)-222-3333"
* contact.telecom[0].rank = 1
* type = OrgTypeCS#fac "Facility"
/* 
* extension[qualification].extension[identifier]
* extension[qualification].extension[code] = 
* extension[qualification].extension[issuer].display = "CMS"
* extension[qualification].extension[status] = $QualificationStatusCS#active
*/

Instance: HospERService
InstanceOf: PlannetHealthcareService
Description: "Hartford General Hospital ER"
Usage: #example
* meta.profile = Canonical(PlannetHealthcareService)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[deliverymethod].extension[type].valueCodeableConcept = DeliveryMethodCS#physical
* category = HealthcareServiceCategoryCS#emerg  
* specialty =  $NUCCProviderTaxonomy#207P00000X   "Emergency Medicine Physician"
* providedBy = Reference(Hospital)
* location[0] = Reference(HospLoc1)



Instance: HospLoc1
InstanceOf: PlannetLocation
Description: "Location1 of Hartford Hospital"
Usage: #example
* meta.profile = Canonical(PlannetLocation) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "Hartford Hospital Location 1"
* type = $V3RoleCode#HOSP 
* managingOrganization = Reference(Hospital)
* extension[accessibility][1].valueCodeableConcept = AccessibilityCS#pubtrans
* extension[accessibility][0].valueCodeableConcept = AccessibilityCS#adacomp
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][1].valueCode  = #tue
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][2].valueCode  = #wed
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][3].valueCode  = #thu
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][4].valueCode  = #fri 
* telecom[0].extension[contactpoint-availabletime][0].extension[allDay].valueBoolean = true
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][5].valueCode  = #sat
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][6].valueCode  = #sun 
* telecom[1].system = #url
* telecom[1].value = "https://www.hgh.com"
* telecom[1].rank = 1
* address.line[0] = "456 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* position.longitude = 3.0
* position.latitude = 15.0
* hoursOfOperation[0].daysOfWeek[0]  = #mon 
* hoursOfOperation[0].daysOfWeek[1] = #tue
* hoursOfOperation[0].daysOfWeek[2] = #wed
* hoursOfOperation[0].daysOfWeek[3] = #thu
* hoursOfOperation[0].daysOfWeek[4]  = #fri 
* hoursOfOperation[0].allDay = true
* hoursOfOperation[0].daysOfWeek[5]  = #sat
* hoursOfOperation[0].daysOfWeek[6]  = #sun



Instance: HospLoc2
InstanceOf: PlannetLocation
Description: "Location2 of Hartford Hospital"
Usage: #example
* meta.profile = Canonical(PlannetLocation) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "Hartford Hospital Location 2"
* type = $V3RoleCode#HOSP
* managingOrganization = Reference(Hospital)
* extension[accessibility][1].valueCodeableConcept = AccessibilityCS#pubtrans
* extension[accessibility][0].valueCodeableConcept = AccessibilityCS#adacomp
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][1].valueCode  = #tue
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][2].valueCode  = #wed
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][3].valueCode  = #thu
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][4].valueCode  = #fri 
* telecom[0].extension[contactpoint-availabletime][0].extension[allDay].valueBoolean = true
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][5].valueCode  = #sat
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][6].valueCode  = #sun 
* telecom[1].system = #url
* telecom[1].value = "https://www.hgh.com"
* telecom[1].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* position.longitude = 3.0
* position.latitude = 15.0
* hoursOfOperation[0].daysOfWeek[0]  = #mon 
* hoursOfOperation[0].daysOfWeek[1] = #tue
* hoursOfOperation[0].daysOfWeek[2] = #wed
* hoursOfOperation[0].daysOfWeek[3] = #thu
* hoursOfOperation[0].daysOfWeek[4]  = #fri 
* hoursOfOperation[0].allDay = true
* hoursOfOperation[0].daysOfWeek[5]  = #sat
* hoursOfOperation[0].daysOfWeek[6]  = #sun

Instance: HartfordOrthopedicServices
InstanceOf: PlannetHealthcareService
Description: "Hartford Orthopedic Services"
Usage: #example
* meta.profile = Canonical(PlannetHealthcareService)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[deliverymethod].extension[type].valueCodeableConcept = DeliveryMethodCS#physical
* category = HealthcareServiceCategoryCS#prov 
* specialty = $NUCCProviderTaxonomy#207X00000X "Orthopaedic Surgery Physician"   // Orthopedics
* providedBy = Reference(HartfordOrthopedics)
* location[1] = Reference(HospLoc2)
* location[0] = Reference(HospLoc1)

Instance: HartfordOrthopedicAffil
InstanceOf: PlannetOrganizationAffiliation
Description: "Hartford Orthopedic Services affiliation with Acme of CT Provider Network and Hartford General Hospital"
Usage: #example
* meta.profile = Canonical(PlannetOrganizationAffiliation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* code = $HL7OrganizationRoleCS#provider 
* healthcareService = Reference(HartfordOrthopedicServices)
* participatingOrganization = Reference(HartfordOrthopedics)
* organization = Reference(Hospital)
* location[1] = Reference(HospLoc2)
* location[0] = Reference(HospLoc1)
* network = Reference(AcmeofCTStdNet)

Instance: HamiltonClinicAffil
InstanceOf: PlannetOrganizationAffiliation
Description: "Hamilton Clinic's affiliation with Acme of CT Provider Network and Hartford General Hospital"
Usage: #example
* meta.profile = Canonical(PlannetOrganizationAffiliation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* code = OrganizationAffiliationRoleCS#outpatient 
* healthcareService = Reference(HamiltonClinicServices)
* participatingOrganization = Reference(HamiltonClinic)
* location[0] = Reference(HospLoc1)
* network = Reference(AcmeofCTStdNet)


Instance: HamiltonClinicServices
InstanceOf: PlannetHealthcareService
Description: "Hamilton Clinic Services"
Usage: #example
* meta.profile = Canonical(PlannetHealthcareService)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[deliverymethod].extension[type].valueCodeableConcept = DeliveryMethodCS#physical
* category = HealthcareServiceCategoryCS#outpat
* specialty = $NUCCProviderTaxonomy#207Q00000X "Family Medicine Physician"  
* providedBy = Reference(HamiltonClinic)
* location[0] = Reference(HospLoc1)


Instance: HamiltonClinic
InstanceOf: PlannetOrganization
Description: "Hamilton Clinic (a Division of Hartford Hospital)"
Usage: #example
* meta.profile = Canonical(PlannetOrganization)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "NPI78"
* identifier[NPI].system = $NPICS
* name = "Hamilton Clinic"
* partOf = Reference(Hospital)
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[1].system = #url
* telecom[1].value = "https://www.hartfordgeneralhospital.com"
* telecom[1].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "(111)-222-3333"
* contact.telecom[0].rank = 1
* type = OrgTypeCS#fac "Facility"


Instance: BurrClinicAffil
InstanceOf: PlannetOrganizationAffiliation
Description: "Burr Clinic's affiliation with Acme of CT Provider Network and Hartford General Hospital"
Usage: #example
* meta.profile = Canonical(PlannetOrganizationAffiliation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* code = OrganizationAffiliationRoleCS#outpatient 
* healthcareService = Reference(BurrClinicServices)
* participatingOrganization = Reference(BurrClinic)
* location[0] = Reference(HospLoc2)
* network = Reference(AcmeofCTStdNet)
* organization = Reference(Hospital)

Instance: BurrClinicServices
InstanceOf: PlannetHealthcareService
Description: "Burr Clinic Services"
Usage: #example
* meta.profile = Canonical(PlannetHealthcareService)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[deliverymethod].extension[type].valueCodeableConcept = DeliveryMethodCS#physical
* category = HealthcareServiceCategoryCS#outpat
* specialty = $NUCCProviderTaxonomy#207Q00000X "Family Medicine Physician"  
* providedBy = Reference(BurrClinic)
* location[0] = Reference(HospLoc1)


Instance: BurrClinic
InstanceOf: PlannetOrganization
Description: "Burr Clinic provides service to Hartford Hospital"
Usage: #example
* meta.profile = Canonical(PlannetOrganization)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "NPI999"
* identifier[NPI].system = $NPICS
* name = "Burr Clinic"
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[1].system = #url
* telecom[1].value = "https://www.burrclinic.com"
* telecom[1].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "(111)-222-3333"
* contact.telecom[0].rank = 1
* type = OrgTypeCS#fac "Facility"


Instance: ConnHIE
InstanceOf: PlannetOrganization
Description: "Connecticut HIE"
Usage: #example
* meta.profile = Canonical(PlannetOrganization)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "Connecticut HIE"
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[1].system = #url
* telecom[1].value = "https://www.connhie.com"
* telecom[1].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "(111)-222-3333"
* contact.telecom[0].rank = 1
* type = OrgTypeCS#atyprv "Atypical Provider"

Instance: ConnHIEAffil
InstanceOf: PlannetOrganizationAffiliation
Description: "Burr Clinic's affiliation with Conn HIE"
Usage: #example
* meta.profile = Canonical(PlannetOrganizationAffiliation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* code = OrganizationAffiliationRoleCS#bt
* participatingOrganization = Reference(BurrClinic)
* organization = Reference(ConnHIE)


/*


Instance: PractitionerARole1
InstanceOf: PlannetPractitionerRole
Description: "Dr Smith moonlighting as ER Doc at Rockville Hospital"
Usage: #example
* meta.profile = Canonical(PlannetPractitionerRole)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* code = ProviderRoleCS#PH 
* practitioner = Reference(PractitionerA)
* healthcareService = Reference(HealthCareServiceEmergency)
// specialty = internal medicine
// available M-F

Instance: PractitionerARole2
InstanceOf: PlannetPractitionerRole
Description: "Dr Smith Internal Medicine at Rockville Clinic"
Usage: #example
* meta.profile = Canonical(PlannetPractitionerRole)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* code = ProviderRoleCS#PH
// specialty = internal medicine
// Available:  Sat/Sun
* healthcareService = Reference(HealthCareServiceOutpatientClinic)

Instance: HealthCareServiceOutpatientClinic
InstanceOf: PlannetHealthcareService
Description: "Rockville Clinic Outpatient Internal Medicine Service"
Usage: #example
* meta.profile = Canonical(PlannetHealthcareService)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[deliverymethod].extension[type].valueCodeableConcept = DeliveryMethodCS#physical
* category = HealthcareServiceCategoryCS#Outpatient
* specialty = $NUCCProviderTaxonomy#3336C0003X   // Fix to Internal Medicine
* providedBy = Reference(OrganizationInternalMedicineLLC)
* location[0] = Reference(RockvilleClinicLocation)

Instance: HealthCareServiceEmergency
InstanceOf: PlannetHealthcareService
Description: "Rockville Hospital ER"
Usage: #example
* meta.profile = Canonical(PlannetPractitionerRole)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[deliverymethod].extension[type].valueCodeableConcept = DeliveryMethodCS#physical
* category = HealthcareServiceCategoryCS#Emergency 
* providedBy = Reference(OrganizationRockvilleHospital)
* location[0] = Reference(RockvilleHospitalLocation)


Instance: PharmacyOrganizationAffiliation1
InstanceOf: PlannetOrganizationAffiliation
Description: "Organization Affiliation for PharmacyOrganizationA"
Usage: #example
* id = "1"
* meta.profile = Canonical(PlannetOrganizationAffiliation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* network = Reference(AcmeOfCTSPreferredProviderNetwork)
* participatingOrganization = Reference (PharmacyOrganizationA)
* healthcareService = Reference(PharmacyAHealthCareService)
* location[0] = Reference(PharmacyLocation1)
* location[1] = Reference(PharmacyLocation2)

Instance: AcmeOfCTSPreferredProviderNetwork
InstanceOf: PlannetNetwork
Description: "Acme of CT Preferred Provider Network"
Usage: #example
* id = "1"
* meta.profile = Canonical(PlannetNetwork)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* partOf = Reference(PayerOrganizationA)
* type = #payer 

Instance: PharmacyLocation1
InstanceOf: PlannetLocation
Description: "Location of Pharmacy1 in PharmacyOrganizationA's network"
Usage: #example
* meta.profile = Canonical(PlannetLocation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "CT Location 1"
* type = $V3RoleCode#OUTPHARM
Instance: PharmacyLocation2
InstanceOf: PlannetLocation
Description: "Location of Pharmacy1 in PharmacyOrganizationA's network"
Usage: #example
* meta.profile = Canonical(PlannetLocation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "CT Location 2"
* type = $V3RoleCode#OUTPHARM

Instance: PharmacyLocation3
InstanceOf: PlannetLocation
Description: "Location of Pharmacy1 in PharmacyOrganizationA's network"
Usage: #example
* meta.profile = Canonical(PlannetLocation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "MA Location 1"
* type = $V3RoleCode#OUTPHARM

Instance: PharmacyLocation4
InstanceOf: PlannetLocation
Description: "Location of Pharmacy1 in PharmacyOrganizationA's network"
Usage: #example
* meta.profile = Canonical(PlannetLocation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "MA Location 2"
* type = $V3RoleCode#OUTPHARM

Instance: PayerOrganizationA
InstanceOf: PlannetOrganization
Description: "Payer Organization"
Usage: #example
* meta.profile = Canonical(PlannetOrganization)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "PayerA"
* type = $V3RoleCode#OUTPHARM
*/