
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
* #Hospital "Hospital" "A facility and the associated services that provide episodic, that can be multi-day, specialized acute care requiring medical and nursing staff and medical equipment."
* #Provider "Medical Provider"  "A person who provides care services that are intended to impact mental or phsical health."
* #Urgent "Urgent Care" "Unscheduled health care service provided for point-in-time evaluation and/or treatment a non-life-threatening medical condition."
* #Laboratory "Laboratory" "Provision of clinical pathology tests on clinical specimens to obtain information about the health of a patient to aid in diagnosis, treatment, and prevention of disease.."
* #Emergency "Emergency care" " Health care service provided within a designated Emergency Department facility, for point-in-time evaluation and/or treatment any medical condition such that a prudent layperson possessing an average knowledge of medicine and health, believes that immediate unscheduled medical care is required."
* #Behavioral "Behavioral Health" "Provides treatments to help people with mental illnesses or substance use disorders. "
* #Dental "Dental" "Services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the mouth."
* #Vision "Vision" "Services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the eyes."
* #Home "Home Health" "Provides skilled nursing care, as well as otherskilled care services, like physical and occupational therapy, speech-language therapy, and medical social services in your home."
* #DME "DME/Medical Supplies" "Provides equipment such as wheelchairs (manual and electric), hospital beds, traction equipment, canes, crutches, walkers, kidney machines, ventilators, oxygen, monitors, pressure mattresses, 
lifts, nebulizers, bili blankets and bili lights.  Provides consumable home health care supplies such as (e.g. diabetic supplies)"
* #Outpatient "Clinic or Outpatient Facility" "A facility that provides medical treatment that does not require admission to the hospital"
* #Group "Medical Group" "A collection of medical providers that provides health care services under a common organization structure."
* #Pharmacy "Pharmacy" "Dispenses and sells medicinal drugs."
* #Transport "Transporation" "Conveyance services to or from a medical facility (e.g., Ambulance or Ambulette)"
* #Other "Other" "Other"

ValueSet: SpecialtyAndDegreeLicenseCertificateVS
Title: "Specialties, Degrees, Licenses, and Certificates"
* codes from valueset $NUCCProviderTaxonomy 
* codes from valueset $V2table0360v27CS

ValueSet: IndividualSpecialtyAndDegreeLicenseCertificateVS
Title: "Individual Specialties, Degrees, Licenses, and Certificates"
* codes from valueset IndividualAndGroupSpecialtiesVS
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
Description:  "Endpoint Usecases."
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
* #CommercialPPO "Commercial PPO"  "Health insurance provided and administered by a non-governmental entity through a Preferred Provider Organization (PPO)"
* #CommercialHDHP "Commercial HDHP" "Health insurance provided and administered by a non-governmental entity through a High Deductible Health Plan (HDHP)"
* #CommercialPOS "Commercial POS" "Health insurance provided and administered by a non-governmental entity through a Point-of-Service (POS) Plan"
* #CommercialHMO "Commercial HMO" "Health insurance provided and administered by a non-governmental entity through a Health Maintenance Organization (HMO)"
* #CommercialEPO "Commercial EPO" "Health insurance provided and administered by a non-governmental entity through a Exclusive Provider Organization(EPO)"
* #Medicaid "Medicaid" "Health insurance provided to eligible adults and children under the Federal Medicaid program"
* #MedicaidHMO "Medicaid HMO" "Health insurance provided to eligible adults and children under the Federal Medicaid program through a Health Maintenance Organization (HMO)"
* #MedicareAdvantage "Medicare Advantage" "Health insurance offered by a private company that contracts with Medicare to provide all Medicare Part A and Part B benefits."
* #MedicareAdvantageHMO "Medicare Advantage HMO" "Health insurance offered by a private company that contracts with Medicare to provide all Medicare Part A and Part B benefits through a Health Maintenance Organization (HMO)"
* #MedicareA "Medicare Part A" "Health insurance provided under the Federal Medicare program covering inpatient hospital stays, care in a skilled nursing facility, hospice care, and some home health care."
* #MedicareB "Medicare Part B" "Health insurance provided under the Federal Medicare program covering certain doctors' services, outpatient care, medical supplies, and preventive services."
* #MedicareD "Medicare Part D" "Health insurance provided under the Federal Medicare program covering prescription drugs."
* #MedicareAB "Medicare A/B" "Health insurance provided under the Federal Medicare program covering inpatient hospital stays, care in a skilled nursing facility, hospice care, some home health care, certain doctors' services, outpatient care, medical supplies, and preventive services."
* #QHP "Qualified Health Plan" "An insurance plan that is certified by the Health Insurance Marketplace, provides essential health benefits (EHBs), follows established limits on cost sharing, and meets other requirements outlined within the application process."
* #IHS "Indian Health Service" "The Federal Health Program for United States American Indians and Alaska Natives"
* #FEP "Federal Employee Program" "Health insurance provided and administered by a non-governmental entity to employees of the Federal government"
* #TRICARE "TRICARE" "Health insurance provided and administred by a non-governmental entity for uniformed service members, retirees, and their families"
* #VA "Veterans Affairs Plan"  "The Federal Health Program for eligible veterans of United States uniformed services"
* #Dental "Dental Plan" "A plan covering services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the mouth."
* #DentalHMO "Dental HMO" "A plan covering services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the mouth provided through a Health Maintenance Organization (HMO)."
* #Vision "Vision Plan" "A plan covering services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the eyes."
* #VisionHMO "Vision HMO" "A plan covering services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the eyes provided through a Health Maintenance Organization (HMO)."

ValueSet: InsuranceProductTypeVS
Title: "Insurance Product Type"
Description: "Valueset for InsurancePlan product types. Any set of plans that share a network type and a set of benefits is a product.  Plans within a prouduct share coverage but differ in cost-sharing."
* codes from system InsuranceProductTypeCS

CodeSystem: InsurancePlanTypeCS
Title: "Insurance Plan Type"
Description:  "Insurance Plan Type"
* #Platinum "Platinum" "A standardized type of health insurance that pays, on average, roughly 90% of members' health care expenses. The members pay the other 10% of their health care expenses in the form of copayments, coinsurance, and deductibles."
* #Gold "Gold" "A standardized type of health insurance that pays, on average, roughly 80% of members' health care expenses. The members pay the other 20% of their health care expenses in the form of copayments, coinsurance, and deductibles."
* #Silver "Silver" "A standardized type of health insurance that pays, on average, roughly 70% of members' health care expenses. The members pay the other 30% of their health care expenses in the form of copayments, coinsurance, and deductibles."
* #Bronze "Bronze" "A standardized type of health insurance that pays, on average, roughly 60% of members' health care expenses. The members pay the other 40% of their health care expenses in the form of copayments, coinsurance, and deductibles."
* #LowDeductible "Low Deductible" "A plan that requires the insured to pay out of pocket a larger proportion of incurred health care costs than a traditional insurance plan in order to have a lower monthly premium."
* #HighDeductible "High Deductible" "A plan that requires the insured to pay out of pocket a smaller proportion of incurred health care costs than a traditional insurance plan which in turn requires a higher monthly premium."
* #Catastrophic "Catastrophic" "A plan typically available to individuals under the age of 30 at the start of the plan (calendar) year that generally has a low monthly premium and only covers a limited amount of benefits. "

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

