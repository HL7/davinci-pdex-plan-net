
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
* #Urgent "Urgent Care" "Medical care provided for illnesses or injuries which require prompt attention but are typically not of such seriousness as to require the services of an emergency room."
* #Lab "Laboratory" "A laboratory where clinical pathology tests are carried out on clinical specimens to obtain information about the health of a patient to aid in diagnosis, treatment, and prevention of disease."
* #Emerg "Emergency care" " Provides life-saving measures in life-threatening situations (e.g., an Emergency Room(ER))"
* #Behav "Behavioral Health" "Provides treatments to help people with mental illnesses or substance use disorders. "
* #Dental "Dental" "Providing Dentistry services"
* #Vision "Vision" "Providing Vision Services"
* #Home "Home Health" "Provides skilled nursing care, as well as otherskilled care services, like physical and occupational therapy, speech-language therapy, and medical social services in your home."
* #DME "DME/Medical Supplies" "Provides equipment such as wheelchairs (manual and electric), hospital beds, traction equipment, canes, crutches, walkers, kidney machines, ventilators, oxygen, monitors, pressure mattresses, 
lifts, nebulizers, bili blankets and bili lights.  Provides consumable home health care supplies such as (e.g. diabetic supplies)"
* #Outpatient "Clinic or Outpatient Facility" "A facility that provides medical treatment that does not require admission to the hospital"
* #Group "Medical Group" "A group of medical providers  (e.g. Physicians) that provides health care services"
* #Pharmacy "Pharmacy" "A store where medicinal drugs are dispensed and sold."
* #Transport "Transporation" "Provides transporation services (e.g., Ambulance or Ambulette)"
* #Other "Other" "Other"



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


  
ValueSet: PlanTypeVS
Title: "Insurance Plan Type"
Description:  "Insurance Plan Type"
* $PaymentTypology#361 "State SCHIP program"
* $PaymentTypology#23 "Medicaid SCHIP"
* $PaymentTypology#22 "Medicaid (Non-managed Care Plan)"
* $PaymentTypology#11 "Medicare (Managed Care)"
* $PaymentTypology#111 "Medicare HMO"
* $PaymentTypology#112 "Medicare PPO"
* $PaymentTypology#113 "Medicare POS"
* $PaymentTypology#11 "Medicare (Non-managed Care"
* $PaymentTypology#121 "Medicare FFS"
* $PaymentTypology#122 "Medicare Drug Benefit"
* $PaymentTypology#123 "Medicare Medical Savings Account"
* $PaymentTypology#21 "Medicare (Managed Care)"
* $PaymentTypology#211 "Medicaid HMO"
* $PaymentTypology#212 "Medicaid PPO"
* $PaymentTypology#213 "Medicaid PCCM"
* $PaymentTypology#51 "Managed Care (Private)"
* $PaymentTypology#511 "Commercial Managed Care -HMO"
* $PaymentTypology#512 "Commercial Managed Care -PPO"
* $PaymentTypology#513 "Commercial Managed Care -POS "
* $PaymentTypology#514 "ExclusiveProvider Organization"
* $PaymentTypology#515 "Gatekeeper PPO (GPPO)"
* $PaymentTypology#516 "Commercial Managed Care -Pharmacy Benefit Manager"
* $PaymentTypology#517 "Commercial Managed Care -Dental"
* $PaymentTypology#52 "Private Health Insurance -Indemnity"
* $PaymentTypology#521 "Commercial Indemnity"
* $PaymentTypology#522 "Self-insured (ERISA) Administrative Services Only (ASO) plan"
* $PaymentTypology#523 "Medicare supplemental policy(as second payer)"
* $PaymentTypology#524 "Indemnity Insurance-Dental"
* $PaymentTypology#9999 "Qualified Health Plan -- NOT IN LIST"


ValueSet: HealthcareServiceCategoryVS
Title: "Healthcare Service Category"
Description: "Valueset for descripting the broad category of service being performed or delivered by a health care service"
* codes from system HealthcareServiceCategoryCS