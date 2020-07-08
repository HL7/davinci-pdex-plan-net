
ValueSet: AcceptingPatientsVS
Title: "Accepting Patients Codes"
Description: "Codes for acceptance of new patients"
* codes from system AcceptingPatientsCS

ValueSet: AccessibilityVS
Title: "Accessibility"
Description: "Codes for documenting general categories of accommodations available. "
* codes from system AccessibilityCS

ValueSet: DeliveryMethodVS
Title: "Delivery Methods"
Description: "Codes for documenting delivery methods. "
* codes from system DeliveryMethodCS

ValueSet: VirtualModalitiesVS
Title: "Virtual Modalities"
Description: "Codes for virtual service delivery modalities ."
* codes from system VirtualModalitiesCS


ValueSet: SpecialtiesVS
Title: "Specialties"
Description:  "Specialties value set based on National Uniform Claim Committee (NUCC) Health Care Provider Taxonomy code set."
* codes from valueset IndividualAndGroupSpecialtiesVS
* codes from valueset NonIndividualSpecialtiesVS

ValueSet: SpecialtyAndDegreeLicenseCertificateVS
Title: "Specialties, Degrees, Licenses, and Certificates"
Description:  "Specialties and Degree License and Certificates"
* codes from valueset SpecialtiesVS 
* codes from valueset $V2table0360VS

ValueSet: IndividualSpecialtyAndDegreeLicenseCertificateVS
Title: "Individual Specialties, Degrees, Licenses, and Certificates"
* codes from valueset IndividualAndGroupSpecialtiesVS
* codes from valueset $V2table0360VS

ValueSet: NonIndividualSpecialtyAndDegreeLicenseCertificateVS
Title: "Non-Individual Specialties, Degrees, Licenses, and Certificates"
* codes from valueset NonIndividualSpecialtiesVS
* codes from valueset $V2table0360VS

ValueSet: EndpointConnectionTypeVS
Title: "Endpoint Connection Types"
Description:  "Endpoint Connection Types"
* codes from system $ConnectionTypeCS
* codes from system EndpointConnectionTypeCS 

ValueSet: MinEndpointConnectionTypeVS
Title: "Minimum Endpoint Connection Types"
Description:  "Minimum Endpoint Connection Types"
* $ConnectionTypeCS#hl7-fhir-rest "HL7 FHIR"
* $ConnectionTypeCS#hl7-fhir-msg "HL7 FHIR Messaging"
* EndpointConnectionTypeCS#hl7-fhir-opn "HL7 FHIR Operation"
* $ConnectionTypeCS#direct-project	"Direct Project"
* EndpointConnectionTypeCS#rest-non-fhir "REST (not FHIR)"

ValueSet: EndpointUsecaseVS
Title: "Endpoint Usecases"
Description:  "Codes for documenting business use case by a general grouping by business area."
* $V3ActReason#TREAT  "treatment"
* $V3ActReason#HPAYMT "healthcare payment"
* $V3ActReason#COC "coordination of care"
* $V3ActReason#COVERAGE "eligibility verification and determination"
* $V3ActReason#HOPERAT "healthcare operations"
* $V3ActReason#PUBHLTH "public health"
* $V3ActReason#HRESCH "healthcare research"
* $V3ActReason#ETREAT "emergency treatment"
* $V3ActReason#PATRQT "patient requested"   
* $V3ActReason#HRESCH "healthcare research"


ValueSet: EndpointPayloadTypeVS
Title: "Endpoint Payload Types"
Description:  "Endpoint Payload Types are constrained to NA (Not Applicable) as part of this IG"
* EndpointPayloadTypeCS#NA  "Not Applicable"


ValueSet: OrgTypeVS
Title: "Organization Type"
Description:  "Provider Directory Organization Type."
*  OrgTypeCS#Prov "Provider"
*  OrgTypeCS#PrvGrp "Provider Group"
*  OrgTypeCS#Payer "Payer" 


  

ValueSet: InsuranceProductTypeVS
Title: "Insurance Product Type"
Description: "Valueset for InsurancePlan product types. Any set of plans that share a network type and a set of benefits is a product.  Plans within a prouduct share coverage but differ in cost-sharing."
* codes from system InsuranceProductTypeCS


ValueSet: InsurancePlanTypeVS
Title: "Insurance Plan Type"
Description: "Valueset for InsurancePlan  plan types.  Plans within a prouduct share coverage but differ in cost-sharing."
* codes from system InsurancePlanTypeCS

ValueSet: HealthcareServiceCategoryVS
Title: "Healthcare Service Category"
Description: "Valueset for descripting the broad category of service being performed or delivered by a health care service"
* codes from system HealthcareServiceCategoryCS


ValueSet: QualificationStatusVS
Title: "Qualification Status"
Description: "Codes for documenting the status of a qualification."
* codes from system QualificationStatusCS

CodeSystem:  LanguageProficiencyCS
Title: "Language Proficiency"
Description: "Codes for documenting spoken language proficiency based on the Interagency Language Roundtable scale of abilities to communicate in a language."
* #00	"No proficiency"	"Unable to function in the spoken language."
//* #06	"Memorized proficiency"	"Able to satisfy immediate needs using rehearsed utterances. Shows little real autonomy of expression, flexibility or spontaneity."
* #10	"Elementary proficiency"	"Able to satisfy minimum courtesy requirements and maintain very simple face-to-face conversations on familiar topics. A native speaker must often use slowed speech, repetition, paraphrase, or a combination of these to be understood by this individual."
//* #16	"Elementary proficiency, plus"	"Can initiate and maintain predictable face-to-face conversations and satisfy limited social demands."
* #20	"Limited working proficiency"	"Able to satisfy routine social demands and limited work requirements."
//* #26	"Limited working proficiency, plus"	"Able to satisfy most work requirements with language usage that is often, but not always, acceptable and effective."
* #30	"General professional proficiency"	"Able to speak the language with sufficient structural accuracy and vocabulary to participate effectively in most formal and informal conversations in practical, social and professional topics."
//* #36	"General professional proficiency, plus"	"Is often able to use the language to satisfy professional needs in a wide range of sophisticated and demanding tasks."
* #40	"Advanced professional proficiency"	"Able to use the language fluently and accurately on all levels normally pertinent to professional needs."
//* #46	"Advanced professional proficiency, plus"	"Speaking proficiency is regularly superior in all respects, usually equivalent to that of a well educated, highly articulate native speaker."
* #50	"Functional native proficiency"	"Speaking proficiency is functionally equivalent to that of a highly articulate well-educated native speaker and reflects the cultural standards of the country where the language is natively spoken."

ValueSet: LanguageProficiencyVS
Title: "Language Proficiency"
Description: "Codes for documenting spoken language proficiency based on the Interagency Language Roundtable scale of abilities to communicate in a language."
* codes from system LanguageProficiencyCS



ValueSet: PractitionerRoleVS
Title: "PractitionerRole Code "
Description: "ValueSet for PractitionerRole.code "
* codes from system ProviderRoleCS
* codes from system $HL7PractitionerRoleCS



ValueSet: HealthcareServiceTypeVS
Description: "Valueset for HealthCareService type"
Title: "HealthcareService Types"
* codes from system HealthcareServiceTypeCS
