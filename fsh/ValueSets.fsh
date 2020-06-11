
CodeSystem: AccessibilityCS
Title: "Accessibility"
Description: "Codes for documenting general categories of accommodations available."

* #cultcomp	"Cultural competence"	"Provides services that meet the social, cultural, and linguistic needs of persons."
* #handiaccess	"handicap accessible"	"Provides access to persons with disabilities."
* #adacomp	"ADA compliant"	"Provides access which complies with the Americans with Disabilities Act and/or amendments."
* #pubtrans	"public transit options"	"Provides access using public transportation modes."
* #anssrvc	"answering service"	"Provides capability to communicate when intended recipient is not immediately available."
* #cognitive	"cognitive"	"Provides services for cognitively impaired persons."
* #mobility	"mobility"	"Provides services for mobility impaired persons."

ValueSet: AccessibilityVS
Title: "Accessibility"
Description: "Codes for documenting general categories of accommodations available. "
* codes from system AccessibilityCS


CodeSystem:  EndpointConnectionTypeCS
  Title: "Endpoint Connection Types (additional)"
  Description:  "Extension codes for http://terminology.hl7.org/CodeSystem/endpoint-connection-type"
* #hl7-fhir-opn "HL7 FHIR Operation" "Interact with a FHIR server interface using FHIR's RESTful interface using an operation other than messaging. For details on its version/capabilities you should connect the value in Endpoint.address and retrieve the FHIR CapabilityStatement."
* #rest-non-fhir "REST (not FHIR)" "Interact with a server using HTTP/REST but not FHIR.  Should be used for web portals."
 

CodeSystem:  EndpointPayloadTypeCS
  Title: "Endpoint Payload Types"
  Description:  "Endpoint Payload Types are constrained to NA (Not Applicable) as part of this IG"
* #NA "Not Applicable" "Not Applicable"

CodeSystem:  OrgTypeCS
  Title: "Organization Type."
  Description:  "Codesystem for types of organizations found in provider directories."
* #Prov "Provider" "A healthcare provider."
* #PrvGrp "Provider Group" "A healthcare provider group"
* #Payer "Payer" "A healthcare payer."
 
 CodeSystem: HealthcareServiceCategoryCS
 Title: "Healthcare Service Category"
 Description: "Codesystem for descripting the broad category of service being performed or delivered by a health care service"
* #Behavioral "Behavioral Health" "Services related to the promotion of mental health, resilience and wellbeing; the treatment of mental and substance use disorders; and the support of those who experience and/or are in recovery from these conditions, along with their families and communities."
* #Dental "Dental" "Services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the mouth."
* #DME "DME/Medical Supplies" "Health care consumables or equipments supplied to patients"
* #Emergency "Emergency care" "Health care services rendered within a designated emergency care facility, for point-in-time evaluation and/or treatment any medical condition such that a prudent layperson possessing an average knowledge of medicine and health, believes that immediate unscheduled medical care is required."
* #Group "Medical Group" "Health care services rendered by a group of people, e.g. a group of Physicians."
* #Home "Home Health"	"Health care services delivered to patients within their residence rather than a clinical setting; usually provided by nurses, home health aides, and other professionals on a regularly scheduled visit."
* #Hospital "Hospital" "Health care services rendered within a hospital or other inpatient setting providng patient treatment with specialzed medical and nursing staff and medical equipment."
* #Laboratory "Laboratory" "Pathology and laboratory testing on clinical specimenst to obtain informaion about the health of a paeint to aid in diagnosis, treatment and prevention of disease."
* #Other "Other" "Other"
* #Outpatient "Clinic or Outpatient Facility" "Health care services rendered in an outpatient facility, e.g. medical procedures, surgeries, etc."
* #Provider "Medical Provider"  "Health care services rendered by a person, e.g. Physician."
* #Pharmacy "Pharmacy" "Services related to the storage, compounding, dispensing and sale of drugs."
* #Transport "Transporation" "Services which transport patients to or from a medical facility, e.g., ambulance. "
* #Urgent "Urgent Care" "Unscheduled health care services which provide for point-in-time evaluation or treatment of a non-life-threatening medical condition."
* #Vision "Vision" "Services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the eyes."

ValueSet: SpecialtiesVS
Title: "Specialties"
Description:  "Specialties value set based on National Uniform Claim Committee (NUCC) Provider Taxonomy Code Set."
* codes from valueset IndividualAndGroupSpecialtiesVS
* codes from valueset NonIndividualSpecialtiesVS

ValueSet: SpecialtyAndDegreeLicenseCertificateVS
Title: "Specialties, Degrees, Licenses, and Certificates"
Description:  "Specialties and Degree License and Certificates"
* codes from valueset SpecialtiesVS 
* codes from valueset $V2table0360v27CS

ValueSet: IndividualSpecialtyAndDegreeLicenseCertificateVS
Title: "Individual Specialties, Degrees, Licenses, and Certificates"
* codes from valueset IndividualAndGroupSpecialtiesVS
* codes from system $V2table0360v27CS

ValueSet: NonIndividualSpecialtyAndDegreeLicenseCertificateVS
Title: "Non-Individual Specialties, Degrees, Licenses, and Certificates"
* codes from valueset NonIndividualSpecialtiesVS
* codes from system $V2table0360v27CS

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


  
CodeSystem: InsuranceProductTypeCS
Title: "Insurance Product Type"
Description:  "Insurance Product Type"
* #CommercialPPO "Commercial PPO"  "Health insurance provided through a Preferred Provider Organization (PPO)"
* #CommercialHDHP "Commercial HDHP" "Health insurance provided through a High Deductible Health Plan (HDHP)"
* #CommercialPOS "Commercial POS" "Health insurance provided through a Point-of-Service (POS) Plan	"
* #CommercialHMO "Commercial HMO" "Health insurance provided through a Health Maintenance Organization (HMO)"
* #CommercialEPO "Commercial EPO" "Health insurance provided through a Exclusive Provider Organization(EPO)"
* #Medicaid "Medicaid" "Health insurance provided to eligible adults and children under the Federal Medicaid program	"
* #MedicaidHMO "Medicaid HMO" "Health insurance provided to eligible adults and children under the Federal Medicaid program through a Health Maintenance Organization (HMO)	"
* #MedicareAdvantage "Medicare Advantage" "Health insurance provided by a private company that contracts with Medicare to provide all Medicare Part A and Part B benefits."
* #MedicareAdvantageHMO "Medicare Advantage HMO" "Health insurance offered by a private company that contracts with Medicare to provide all Medicare Part A and Part B benefits through a Health Maintenance Organization (HMO)"
* #MedicareA "Medicare Part A" "Health insurance provided under the Federal Medicare program covering inpatient hospital stays, care in a skilled nursing facility, hospice care, and some home health care."
* #MedicareB "Medicare Part B" "Health insurance provided under the Federal Medicare program covering certain doctors' services, outpatient care, medical supplies, and preventive services."
* #MedicareD "Medicare Part D" "Health insurance provided under the Federal Medicare program covering prescription drugs."
* #MedicareAB "Medicare A/B" "Health insurance provided under the Federal Medicare program covering inpatient hospital stays, care in a skilled nursing facility, hospice care, some home health care, certain doctors' services, outpatient care, medical supplies, and preventive services.."
* #QHP "Qualified Health Plan" "Health insurance provided through and certified by the Health Insurance Marketplace that provides essential health benefits (EHBs), follows established limits on cost sharing, and meets other requirements outlined within the application process."
* #IHS "Indian Health Service" "Health care program provided to United States American Indians and Alaska Natives."
* #FEP "Federal Employee Program" "Health insurance provided to employees of the Federal government."
* #TRICARE "TRICARE" "Health care program provided to uniformed service members, retirees, and their families around the world."
* #VA "Veterans Affairs Plan"  "Health care program provided to eligible veterans."
* #Dental "Dental Plan" "Health insurance provided to cover services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the oral cavity."
* #DentalHMO "Dental HMO" "Health insurance provided to cover services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the oral cavity provided through a Health Maintenance Organization (HMO)."
* #Vision "Vision Plan" "Health insurance provided to cover services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the eyes."
* #VisionHMO "Vision HMO" "Health insurance provided to cover services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the eyes provided through a Health Maintenance Organization (HMO)."

ValueSet: InsuranceProductTypeVS
Title: "Insurance Product Type"
Description: "Valueset for InsurancePlan product types. Any set of plans that share a network type and a set of benefits is a product.  Plans within a prouduct share coverage but differ in cost-sharing."
* codes from system InsuranceProductTypeCS

CodeSystem: InsurancePlanTypeCS
Title: "Insurance Plan Type"
Description:  "Codes for InsurancePlan  plan types.  Plans within a prouduct share coverage but differ in cost-sharing"
* #Platinum "Platinum-QHP" "Plan with highest monthly premium and lowest costs when you need care	A Qualified Health Plan with the highest monthly premiums and smallest out-of-pocket costs for the member in comparison to other metal-category plans"
* #Gold "Gold-QHP" "Plan with high monthly premium and low costs when you need care	A Qualified Health Plan with the higher monthly premiums and smaller out-of-pocket costs for the member in comparison to other metal-category plans"
* #Silver "Silver-QHP" "Plan with moderate monthly premium and moderate costs when you need care	A Qualified Health Plan with the lower monthly premiums and larger out-of-pocket costs for the member in comparison to other metal-category plans"
* #Bronze "Bronze-QHP" "Plan with lowest monthly premium and highest costs when you need care	A Qualified Health Plan with the lowest monthly premiums and largest out-of-pocket costs for the member in comparison to other metal-category plans"
* #LowDeductible "Low Deductible" "A plan that requires the insured to pay out of pocket a smaller proportion of incurred health care costs."
* #HighDeductible "High Deductible" "A plan that requires the insured to pay out of pocket a larger proportion of incurred health care costs than a traditional insurance plan."

ValueSet: InsurancePlanTypeVS
Title: "Insurance Plan Type"
Description: "Valueset for InsurancePlan  plan types.  Plans within a prouduct share coverage but differ in cost-sharing."
* codes from system InsurancePlanTypeCS

ValueSet: HealthcareServiceCategoryVS
Title: "Healthcare Service Category"
Description: "Valueset for descripting the broad category of service being performed or delivered by a health care service"
* codes from system HealthcareServiceCategoryCS

CodeSystem:  OrgTypeCS
  Title: "Organization Type."
  Description:  "Codesystem for types of organizations found in provider directories."
* #Prov "Provider" "A healthcare provider."
* #PrvGrp "Provider Group" "A healthcare provider group"
* #Payer "Payer" "A healthcare payer."
 
/*
 CodeSystem: IndividualPractitionerRoleCS
 Title: "Individual Practitioner Roles"
 Description: "Individual Practitioner Roles"
* #Physicians "Allopathic & Osteopathic Physicians" "Allopathic & Osteopathic Physicians"
* #BehavSocial "Behavioral Health & Social Service Providers"  "Behavioral Health & Social Service Providers"
* #Chiropractic "Chiropractic Providers" "Chiropractic Providers"
* #Dental "Dental Provider" "Dental Provider."
* #Dietary "Dietary & Nutritional Service Providers" "Dietary & Nutritional Service Providers"
* #Emergency "Emergency Medical Service Providers" "Emergency Medical Service Providers"
* #Vision "Eye and Vision Services Providers" "Eye and Vision Services Providers"
* #Group "Multi-Specialty Group" "Multi-Specialty Group"
* #Nursing "Nursing Service Providers" "Nursing Service Providers"
* #NursingRelated "Nursing Service Related Providers" "Nursing Service Related Providers"
* #Other "Other Service Providers" "Other Service Providers"
* #PAAPN "Physician Assistants & Advanced Practice Nursing Providers" "Physician Assistants & Advanced Practice Nursing Providers."
* #Podiatry "Podiatric Medicine & Surgery Service Providers" "Podiatric Medicine & Surgery Service Providers"
* #Respiratory "Respiratory, Developmental, Rehabilitative and Restorative Service Providers" "Respiratory, Developmental, Rehabilitative and Restorative Service Providers"
* #Speech "Speech, Language and Hearing Service Providers" "Speech, Language and Hearing Service Providers"
* #Technical "Technologists, Technicians & Other Technical Service Providers" "Technologists, Technicians & Other Technical Service Providers"


CodeSystem: NonIndividualPractitionerRoleCS
 Title: "Non-Individual Practitioner Roles"
 Description: "Non-Individual Practitioner Roles"
* #Agency "Agencies" "Agencies"
* #Ambulatory "Ambulatory Health Care Facilities"
* #HospitalUnit "Hospital Units" "Hospital Units"
* #Hospital "Hospital" "Hospital"
* #Lab "Laboratories" "Laboratories"
* #ManagedCareOrg "Managed Care Organizations" "Managed Care Organizations"
* #NursingCustodial "Nursing & Custodial Care Facilities" "Nursing & Custodial Care Facilities"
* #OtherServices "Other Service Providers" "Other Service Providers"
* #Residential "Residential Treatment Facilities" "Residential Treatment Facilities"
* #Respite "Respite Care Facility" "Respite Care Facility"
* #Supplier "Suppliers" "Suppliers"
* #Transport "Transportation Services" "Transportation Services"

ValueSet: PractitionerRolesVS
Title: "PractitionerRoles"
* codes from system IndividualPractitionerRoleCS 
* codes from system NonIndividualPractitionerRoleCS


ValueSet: IndividualPractitionerRolesVS
Title: "Individual PractitionerRoles"
* codes from system IndividualPractitionerRoleCS 

ValueSet: NonIndividualPractitionerRolesVS
Title: "Non-Individual PractitionerRoles"
* codes from system NonIndividualPractitionerRoleCS
*/

CodeSystem: QualificationStatusCS
Title: "Qualification Status"
Description: "Codes for documenting the status of a qualification."
* #active "active" "The credential may be considered valid for use."
* #inactive "inactive" "The credential may not be considered valid for use."
* #issued-in-error "The credential was mistakenly assigned and should not be considered valid for use."
* #revoked "revoked" "The credential was revoked by the issuing organization and should not be considered valid for use."
* #pending "pending" "The credential has not been officially assigned. It may or may not be considered valid for use."
* #unknown "unknown" "The status of this credential is unknown. It may or may not be considered valid for use."

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