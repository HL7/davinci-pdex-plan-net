
<h1>PDEX Payer Network Implementation Guide</h1>
<h1>Introduction</h1>

This implementation guide defines a FHIR interface to a health insurers insurance plans, their associated networks, and the organizations and providers that participate in these networks. Publication of this data through a standard FHIR-based API will enable third parties to develop applications through which consumers and providers can query the participants in a payers network that may provide services that address their health care needs. Although there are multiple types and sources of providers' directories, including provider organizations (i.e., a hospital listing all its physicians), government (i.e., listing of providers in Medicare), payers (i.e., a health plan's provider network), and third-party entities (such as vendors that maintain provider directories), the focus of this implementation guide is on Payer Provider Directories.

The PDEX Payer Network (or Plan-Net) Implementation Guide is based on the [Validated Healthcare Directory Implementation Guide (VHDir IG)](http://hl7.org/fhir/uv/vhdir/2018Sep/index.html), an international standard. The VHDir IG is based on [FHIR Version 4.0](http://build.fhir.org/). It was developed in cooperation with the [Office of the National Coordinator for Health Information Technology (ONC)](http://www.healthit.gov/newsroom/about-onc) and [Federal Health Architecture (FHA)](https://www.healthit.gov/policy-researchers-implementers/federal-health-architecture-fha) with guidance from HL7 International, the Patient Administration Workgroup, and the HL7 US Realm Steering Committee.

The use of VhDir as the conceptual base for the PDEX Payer Network Implementation Guide, including reuse by reference of most of the extensions defined there, is intended to protect implementers of the Plan-Net IG from rework/remapping when the VHDir concept reaches implementation, and becomes a source of data for the PDEX Payer Network. The primary changes from the VHDir IG are to:

1. remove the validation and restriction resources
2. use US Core for R4 as the base suite of profiles where possible
3. eliminate extensions that are not necessary for this use case
4. introduce additional constraints (e.g. search criteria, cardinality, and MustSupport) where appropriate.

The diagram below depicts the scope of this implementation guide (IG). The IG defines the API that exposes a payer’s provider network (including pharmacy locations where appropriate) for access by a consumer or provider application. This is a query only API (GET) and does not support PUT or POST.

<img style="width:60%;height:auto;float:none;align:middle;" src="Bob3.png"/>

<h1>Relation to US Core and other IGs</h1>

This implementation guide was written for a US audience and profiles resources from the R4 version of the US Core IG, where available (Practitioner, Organization and Location), and otherwise from R4 (OrganizationAffiliation, PractitionerRole, HealthCareService, Endpoint).  The PractitionerRole profile from US Core was not used because it is over-constrained for use in a Provider Directory based on Payer information.  Alignment with VhDir is maintained by using extensions and value sets from VhDir where possible, or adapting their content when direct usage is not possible.

Disclaimers and Assumptions
===========================

*  **PDEX Payer Network is based conceptually on VhDir**: The PDEX Payer Network implementation guide is based conceptually on the VhDir implementation guide, which is still a work in progress. Plan-net will need to track changes to VhDir to fulfill its goal of minimizing rework.
*  **The PDEX Payer Network endpoint is known to the client**: This implementation guide assumes that the directory endpoint is known to the client. There is an overarching system architecture issue that is critical to resolve -- how does the client discover the FHIR endpoint of interest. For the purposes of this IG, we consider that problem out of scope.

Background
==========
Provider directories play a critical role in enabling identification of individual providers and provider organizations, as well as characteristics about them. Provider directories support a variety of use cases, including:
* Patient/Payer focused
* Find provider accessibility information (specialty, office hours, languages spoken, taking patients) - enables individuals and consumers to find contact and other accessibility information for individual healthcare providers and/or healthcare organizations
* Relationship between provider and insurance plan (insurance accepted) or plan and provider (network) - enables individual healthcare providers, organizations, and payers to discover the relationships between providers, organizations, and payers, as well as additional details about the relationships and entities involved
* Basic Information Exchange
* Enable electronic exchange (e.g. discovery of electronic endpoints such as IHE/EHR endpoints, FHIR server URLs, Direct addresses) - enables the electronic exchange of health information by supporting the ability to discover electronic service information including electronic endpoints or electronic addresses
* Find an individual and/or organization (even if no electronic endpoint is available) - enables users to find contact and other identifying information about healthcare organizations and individual healthcare providers

All use cases involve an application or consumer client querying a service provided by a payer.


Use Case Examples
=================

* Find Information about a Specific Practitioner
* Lookup by Name
* Lookup by NPI
~~~~
NPI = 1237551547 
GET https://davinci-plan-net-ri.logicahealth.org/fhir/Practitioner?identifier=1237551547
https://davinci-plan-net-ri.logicahealth.org/fhir/PractitionerRole?practitioner.identifier=1235733566
~~~~
* What Insurance Plans does a Practitioner Accept
* Find a Practitioner based on Properties
* Find a specialist who accepts my insurance and is affiliated with my local hospital
* Find a specialist who has office hours on Wednesdays
* Find a practitioner near me who accepts my insurance and is accepting new patients
* Find a female practitioner near me who speaks Spanish
* Healthcare Services
* Who provides opthalmology services in my area
* What locations provide specialty services for my local hospital network

Overview of Payer Directory - Resource Relationships
====================================================

Note: the following diagrams provide a high-level view of the relationships between resources used in this IG. They do not necessarily reflect all of the relationships/references between resources.

<img src="Slide2.png" alt = "Key Relationships Among Payer Directory Resources" style="height:auto;float:none;align:middle;"  />
<img src="Slide3.png" alt = "Relationships Between Payer Directory Resources -- Endpoints" style="height:auto;float:none;align:middle;"  />

Credits
=======
This IG was developed by the MITRE Corporation under the direction of the authors using [FHIR Shorthand syntax](https://build.fhir.org/ig/HL7/fhir-shorthand/) and the [SUSHI tookit](https://github.com/FHIR/sushi),  a free, open source toolchain from the MITRE Corporation.  The capability statements were developed with support of tools and generous guidance from Eric Haas.

  
Authors
=======

<table border="1" style="width:100%">
  <tr>
    <th>Name</th>
    <th>Email</th>
  </tr>

 <tr>
  <td>Troy Bergstrand</td>
  <td>Troy.Bergstrand@bcidaho.com</td>
  </tr>
  <tr>
  <td>Laurie Burckhardt</td>
  <td>Laurie.Burckhardt@wpsic.com</td>
  </tr>
   <tr>
   <td>Bob Dieterle </td>
  <td>rdieterle@enablecare.us</td>
  </tr>    
  <tr>
  <td>Gail Kocher</td>
  <td>Gail.Kocher@bcbsa.com</td>
  </tr>
  <tr>
  <td>Saul A. Kravitz</td>
  <td>saul@mitre.org</td>
  </tr>
    <tr>
  <td>Robert McClure MD </td>
  <td>rmcclure@mdpartners.com</td>
  </tr>
<tr>
  <td>Mary Kay McDaniel </td>
  <td>MaryKay.McDaniel@cognosante.com</td>
  </tr>
  </table>
{: rules="groups"}
