
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
* #Hospital "Hospital" "A health care institution providing patient treatment with specialized medical and nursing staff and medical equipment"
* #Provider "Medical Provider"  "A person (e.g. Physician) who provides health care services"
* #Urgent "Urgent Care" "Provides medical care  for illnesses or injuries which require prompt attention but are typically not of such seriousness as to require the services of an emergency room."
* #Laboratory "Laboratory" "A laboratory where clinical pathology tests are carried out on clinical specimens to obtain information about the health of a patient to aid in diagnosis, treatment, and prevention of disease."
* #Emergency "Emergency care" " Provides life-saving measures in life-threatening situations (e.g., an Emergency Room(ER))"
* #Behavioral "Behavioral Health" "Provides treatments to help people with mental illnesses or substance use disorders. "
* #Dental "Dental" "Provides Dentistry services"
* #Vision "Vision" "Provides Vision Services"
* #Home "Home Health" "Provides skilled nursing care, as well as otherskilled care services, like physical and occupational therapy, speech-language therapy, and medical social services in your home."
* #DME "DME/Medical Supplies" "Provides equipment such as wheelchairs (manual and electric), hospital beds, traction equipment, canes, crutches, walkers, kidney machines, ventilators, oxygen, monitors, pressure mattresses, 
lifts, nebulizers, bili blankets and bili lights.  Provides consumable home health care supplies such as (e.g. diabetic supplies)"
* #Outpatient "Clinic or Outpatient Facility" "A facility that provides medical treatment that does not require admission to the hospital"
* #Group "Medical Group" "A group of medical providers  (e.g. Physicians) that provides health care services"
* #Pharmacy "Pharmacy" "Dispenses and sells medicinal drugs."
* #Transport "Transporation" "Provides transporation services (e.g., Ambulance or Ambulette)"
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
* #MedicareC "Medicare Part C" "????Isn't this the same as Medicare Advantage?????."
* #MedicareD "Medicare Part D" "Health insurance provided under the Federal Medicare program covering prescription drugs."
* #MedicareAB "Medicare A/B" "Health insurance provided under the Federal Medicare program covering inpatient hospital stays, care in a skilled nursing facility, hospice care, some home health care, certain doctors' services, outpatient care, medical supplies, and preventive services."
* #QHP "Qualified Health Plan" "As defined in the Patient Protection and Affordable Care Act (PPACA), a qualified health plan (QHP) is an insurance plan that is certified by the Health Insurance Marketplace, provides essential health benefits (EHBs), follows established limits on cost sharing, and meets other requirements outlined within the application process."
* #IHS "Indian Health Service" "???? A QHP offered to Indians/Alaskans????"
* #FEP "Federal Employee Program" "Health insurance provided and administered by a non-governmental entity to employees of the Federal government"
* #TRICARE "TRICARE" "Health insurance provided and administred by a non-governmental entity for uniformed service members, retirees, and their families"
* #VA "Veterans Affairs Plan"  "???????"
* #Dental "Dental Plan" "Dental insurance plan"
* #DentalHMO "Dental HMO" "Dental insurance provided through a Preferred Provider Organization (PPO)"
* #Vision "Vision Plan" "Vision insurance plan"
* #VisionHMO "Vision HMO" "Vision insurance provided through a Health Maintenance Organization (HMO)"

ValueSet: InsuranceProductTypeVS
Title: "Insurance Product Type"
Description: "Valueset for InsurancePlan product types. Any set of plans that share a network type and a set of benefits is a product.  Plans within a prouduct share coverage but differ in cost-sharing."
* codes from system InsuranceProductTypeCS

CodeSystem: InsurancePlanTypeCS
Title: "Insurance Plan Type"
Description:  "Insurance Plan Type"
* #Platinum "Platinum" "Plan with highest monthly premium and lowest costs when you need care"
* #Gold "Gold" "Plan with high monthly premium and low costs when you need care"
* #Silver "Silver" "Plan with moderate monthly premium and moderate costs when you need care"
* #Bronze "Bronze" "Plan with lowest monthly premium and highest costs when you need care"
* #LowDeductible "Low Deductible" "Low Deductible plan"
* #HighDeductible "High Deductible" "High Deductible plan"
* #LowPremium "Low Premium" "Low Premium plan"
* #HighPremium "High Premium" "High Premium plan"

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

