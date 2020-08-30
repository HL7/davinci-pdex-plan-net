Instance: PharmChain
InstanceOf: PlannetOrganization
Description: "Organization that Provides Pharmacy Services"
Usage: #example
* meta.profile = Canonical(PlannetOrganization) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "Pharm Chain"
* type = OrgTypeCS#prvgrp "Provider Group"
* identifier[NPI].system = $NPICS
* identifier[NPI].value = "NPI-ORGA"
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][1].valueCode  = #tue
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][2].valueCode  = #wed
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][3].valueCode  = #thu
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][4].valueCode  = #fri 
* telecom[0].extension[contactpoint-availabletime][0].extension[availableStartTime].valueTime = 08:00:00
* telecom[0].extension[contactpoint-availabletime][0].extension[availableEndTime].valueTime = 17:00:00
* telecom[1].system = #url
* telecom[1].value = "https://www.pharmchain.com"
* telecom[1].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-1234"

Instance: BigBox
InstanceOf: PlannetOrganization
Description: "Organization that Manages 2 of PharmChain's pharmacies"
Usage: #example
* meta.profile =  Canonical(PlannetOrganization) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "BigBox"
* type = OrgTypeCS#bus "Non-Healthcare Business"
* name = "Big Box Retailer"
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][1].valueCode  = #tue
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][2].valueCode  = #wed
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][3].valueCode  = #thu
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][4].valueCode  = #fri 
* telecom[0].extension[contactpoint-availabletime][0].extension[availableStartTime].valueTime = 08:00:00
* telecom[0].extension[contactpoint-availabletime][0].extension[availableEndTime].valueTime = 17:00:00
* telecom[1].system = #url
* telecom[1].value = "https://www.bixboxretailer.com"
* telecom[1].rank = 1
* address.line[0] = "456 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-1234"


Instance: PharmChainRetailService
InstanceOf: PlannetHealthcareService
Description: "Pharmacy Service provided by PharmChain"
Usage: #example
* meta.profile =  Canonical(PlannetHealthcareService) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "Pharmacy by PharmChain"
* extension[deliverymethod].extension[type].valueCodeableConcept = DeliveryMethodCS#physical
* extension[newpatients].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#existptonly
* extension[newpatients].extension[fromNetwork].valueReference = Reference(AcmeofCTStdNet)
* category = HealthcareServiceCategoryCS#pharm   "Pharmacy"
* specialty = $NUCCProviderTaxonomy#3336C0003X "Retail Pharmacy"
* providedBy = Reference(PharmChain)
* location[0] = Reference(PharmLoc1)
* location[1] = Reference(PharmLoc2)
* location[2] = Reference(PharmLoc3)
* location[3] = Reference(PharmLoc4)
* telecom.extension[via-intermediary].valueReference = Reference(PharmChain)


Instance: PharmChainAffil1
InstanceOf: PlannetOrganizationAffiliation
Description: "Organization Affiliation for PharmChain"
Usage: #example
* meta.profile =  Canonical(PlannetOrganizationAffiliation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* network = Reference(AcmeofCTStdNet)
* participatingOrganization = Reference (PharmChain)
* healthcareService = Reference(PharmChainRetailService)
* location[0] = Reference(PharmLoc1)
* location[1] = Reference(PharmLoc2)
* code = OrganizationAffiliationRoleCS#pharmacy 

Instance: PharmChainAffil2
InstanceOf: PlannetOrganizationAffiliation
Description: "Organization Affiliation for PharmChain"
Usage: #example
* meta.profile = Canonical(PlannetOrganizationAffiliation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* network = Reference(AcmeofCTStdNet)
* participatingOrganization = Reference (PharmChain)
* healthcareService = Reference(PharmChainCompService)
* location[0] = Reference(PharmLoc1)
* code = OrganizationAffiliationRoleCS#pharmacy 

Instance: PharmChainAffil3
InstanceOf: PlannetOrganizationAffiliation
Description: "Organization Affiliation for PharmChain"
Usage: #example
* meta.profile = Canonical(PlannetOrganizationAffiliation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* network = Reference(AcmeofCTStdNet)
* participatingOrganization = Reference (PharmChain)
* healthcareService = Reference(PharmChainMailService)
* code = OrganizationAffiliationRoleCS#pharmacy 


Instance: PharmChainCompService
InstanceOf: PlannetHealthcareService
Description: "Compound Pharmacy Service provided by PharmacyOrganization A"
Usage: #example
* meta.profile = Canonical(PlannetHealthcareService) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "Compounding Pharmacy by OrgA"
* extension[deliverymethod].extension[type].valueCodeableConcept = DeliveryMethodCS#physical
* category = HealthcareServiceCategoryCS#pharm "Pharmacy"
* specialty = $NUCCProviderTaxonomy#3336C0003X "Compounding Pharmacy"
* specialty.text = "Compounding Pharmacy"
* providedBy = Reference(PharmChain)
* location[0] = Reference(PharmLoc1)
* telecom.extension[via-intermediary].valueReference = Reference(PharmLoc1)

Instance: PharmChainMailService
InstanceOf: PlannetHealthcareService
Description: "Mail Order Pharmacy Service provided by PharmacyOrganization A"
Usage: #example
* meta.profile = Canonical(PlannetHealthcareService) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "Mail Order Pharmacy by OrgA"
* extension[deliverymethod].extension[type].valueCodeableConcept = DeliveryMethodCS#virtual
* extension[deliverymethod].extension[virtualModalities][0].valueCodeableConcept = VirtualModalitiesCS#web
* extension[deliverymethod].extension[virtualModalities][1].valueCodeableConcept = VirtualModalitiesCS#app 
* extension[deliverymethod].extension[virtualModalities][2].valueCodeableConcept = VirtualModalitiesCS#tdd 
* extension[deliverymethod].extension[virtualModalities][3].valueCodeableConcept =  VirtualModalitiesCS#phone 
* category = HealthcareServiceCategoryCS#pharm "Pharmacy"
* specialty = $NUCCProviderTaxonomy#3336M0002X "Mail Order Pharmacy"
* providedBy = Reference(PharmChain)
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[1].system = #url
* telecom[1].value = "https://mailorderrx.com"
* telecom[1].rank = 1



Instance: PharmLoc1
InstanceOf: PlannetLocation
Description: "Location of Pharmacy1 in PharmChain's network"
Usage: #example
* meta.profile = Canonical(PlannetLocation) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "OrgA CT Location 1"
* type = $V3RoleCode#OUTPHARM "outpatient pharmacy"
* managingOrganization = Reference(BigBox)
* extension[newpatients].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#existptonly
* extension[newpatients].extension[fromNetwork].valueReference = Reference(AcmeofCTStdNet)
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
* position.longitude = 3.0
* position.latitude = 15.0
* hoursOfOperation[0].daysOfWeek[0]  = #mon 
* hoursOfOperation[0].daysOfWeek[1] = #tue
* hoursOfOperation[0].daysOfWeek[2] = #wed
* hoursOfOperation[0].daysOfWeek[3] = #thu
* hoursOfOperation[0].daysOfWeek[4]  = #fri 
* hoursOfOperation[0].allDay = true
* hoursOfOperation[1].daysOfWeek[0]  = #sat
* hoursOfOperation[1].daysOfWeek[1]  = #sun
* hoursOfOperation[1].openingTime = 08:00:00
* hoursOfOperation[1].closingTime = 17:00:00



Instance: PharmLoc2
InstanceOf: PlannetLocation
Description: "Location of Pharmacy2 in PharmChain's network"
Usage: #example
* meta.profile = Canonical(PlannetLocation) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "OrgA CT Location 2"
* type = $V3RoleCode#OUTPHARM "outpatient pharmacy"
* managingOrganization = Reference(BigBox)
* extension[newpatients].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#existptonly
* extension[newpatients].extension[fromNetwork].valueReference = Reference(AcmeofCTStdNet)
* extension[accessibility][0].valueCodeableConcept = AccessibilityCS#adacomp
* extension[accessibility][1].valueCodeableConcept = AccessibilityCS#pubtrans
* telecom[0].system = #phone
* telecom[0].value = "(777)-888-9999"
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
* address.line[0] = "444 Main Street"
* address.city = "Rainbow"
* address.state = "CT"
* address.postalCode = "00014-1334"
* position.longitude = 9.0
* position.latitude = 18.0
* hoursOfOperation[0].daysOfWeek[0]  = #mon 
* hoursOfOperation[0].daysOfWeek[1] = #tue
* hoursOfOperation[0].daysOfWeek[2] = #wed
* hoursOfOperation[0].daysOfWeek[3] = #thu
* hoursOfOperation[0].daysOfWeek[4]  = #fri 
* hoursOfOperation[0].allDay = true
* hoursOfOperation[1].daysOfWeek[0]  = #sat
* hoursOfOperation[1].daysOfWeek[1]  = #sun
* hoursOfOperation[1].openingTime = 08:00:00
* hoursOfOperation[1].closingTime = 17:00:00


Instance: PharmLoc3
InstanceOf: PlannetLocation
Description: "Location of Pharmacy3 in PharmChain's network"
Usage: #example
* meta.profile = Canonical(PlannetLocation) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "OrgA MA Location 1"
* type = $V3RoleCode#OUTPHARM "outpatient pharmacy"
* managingOrganization = Reference(BigBox)
* extension[newpatients].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#existptonly
* extension[newpatients].extension[fromNetwork].valueReference = Reference(AcmeofCTStdNet)
* extension[accessibility][0].valueCodeableConcept = AccessibilityCS#adacomp
* extension[accessibility][1].valueCodeableConcept = AccessibilityCS#pubtrans
* telecom[0].system = #phone
* telecom[0].value = "(444)-555-666"
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
* address.line[0] = "456 Main Street"
* address.city = "Somewhere"
* address.state = "CT"
* address.postalCode = "00014-1234"
* position.longitude = 7.0
* position.latitude = 12.0
* hoursOfOperation[0].daysOfWeek[0]  = #mon 
* hoursOfOperation[0].daysOfWeek[1] = #tue
* hoursOfOperation[0].daysOfWeek[2] = #wed
* hoursOfOperation[0].daysOfWeek[3] = #thu
* hoursOfOperation[0].allDay = true
* hoursOfOperation[1].daysOfWeek[0]  = #sun
* hoursOfOperation[1].openingTime = 08:00:00
* hoursOfOperation[1].closingTime = 17:00:00


Instance: PharmLoc4
InstanceOf: PlannetLocation
Description: "Location of Pharmacy4 in PharmChain's network"
Usage: #example
* meta.profile = Canonical(PlannetLocation) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "OrgA MA Location 2"
* type = $V3RoleCode#OUTPHARM "outpatient pharmacy"
* managingOrganization = Reference(BigBox)
* extension[newpatients].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#existptonly
* extension[newpatients].extension[fromNetwork].valueReference = Reference(AcmeofCTStdNet)
* extension[accessibility][0].valueCodeableConcept = AccessibilityCS#adacomp
* telecom[0].system = #phone
* telecom[0].value = "(222)-333-4444"
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
* address.line[0] = "345 Main Street"
* address.city = "Nowheresville"
* address.state = "CT"
* address.postalCode = "00014-1234"
* position.longitude = 5.0
* position.latitude = 16.0
* hoursOfOperation[0].daysOfWeek[0]  = #mon 
* hoursOfOperation[0].daysOfWeek[1] = #tue
* hoursOfOperation[0].daysOfWeek[2] = #wed
* hoursOfOperation[0].daysOfWeek[3] = #thu
* hoursOfOperation[0].daysOfWeek[4]  = #fri 
* hoursOfOperation[0].allDay = true
* hoursOfOperation[1].daysOfWeek[0]  = #sat
* hoursOfOperation[1].openingTime = 08:00:00
* hoursOfOperation[1].closingTime = 17:00:00

