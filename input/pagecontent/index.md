
### Introduction

This implementation guide defines a FHIR interface to a health insurer's insurance plans, their associated networks, and the organizations and providers that participate in these networks. Publication of this data through a standard FHIR-based API will enable third parties to develop applications through which consumers and providers can query the participants in a payer's network that may provide services that address their health care needs. Although there are multiple types and sources of providers' directories, including provider organizations (i.e., a hospital listing all its physicians), government (i.e., listing of providers in Medicare), payers (i.e., a health plan's provider network), and third-party entities (such as vendors that maintain provider directories), the focus of this implementation guide is on Payer Provider Directories.

The PDEX Payer Network (or Plan-Net) Implementation Guide is based conceptually on the <a href = "http://hl7.org/fhir/uv/vhdir/2018Sep/index.html">Validated Healthcare Directory Implementation Guide (VHDir IG)</a>, an international standard. The VHDir IG is based on <a href = "http://hl7.org/fhir/R4/index.html">FHIR Version 4.0</a>.  It was developed in cooperation with the <a href="http://www.healthit.gov/newsroom/about-onc">Office of the National Coordinator for Health Information Technology (ONC)</a> and <a href ="https://www.healthit.gov/policy-researchers-implementers/federal-health-architecture-fha">Federal Health Architecture (FHA)</a> with guidance from HL7 International, the Patient Administration Workgroup, and the HL7 US Realm Steering Committee.

The use of VhDir as the conceptual base for the profiles and extensions in the PDEX Payer Network Implementation Guide is intended to protect implementers of the Plan-Net IG from rework/remapping when the VHDir concept reaches implementation, and becomes a source of data for the PDEX Payer Network. The primary changes from the VHDir IG are to:

<ol>
<li> remove the validation and restriction resources</li>
<li> use US Core for R4 as the base suite of profiles where possible</li>
<li> eliminate extensions that are not necessary for this use case</li>
<li> introduce additional constraints (e.g. search criteria, cardinality, value-set bindings and MustSupport) where appropriate.</li>
</ol>
The diagram below depicts the scope of this implementation guide (IG). The IG defines the API that exposes a payer’s provider network (including pharmacy locations where appropriate) for access by a consumer or provider application. This is a query only API (GET) and does not support PUT or POST.

<img style="width:60%;height:auto;float:none;align:middle;" src="Bob3.png"/>

### Content and Organization

The IG is organized into the following sections:

* [Conformance Expectations](confexpectations.html): Conformance rules for this IG.
* [Background](background.html): Provides examples of how this specification can be used healthcare organizations.
* [Implementation](implementation.html): Provides examples of how this specification can be used healthcare organizations.
* [Artifacts](artifacts.html): The computable FHIR artifacts (profiles, value sets, etc.) for this specification.

### Relation to US Core and other IGs

This implementation guide was written for a US audience and profiles resources from <a href="{{site.data.fhir.ver.hl7_fhir_us_core}}/index.html">US Core STU 4</a>, where available (Practitioner, Organization and Location), and otherwise from R4 (OrganizationAffiliation, PractitionerRole, HealthCareService, Endpoint).  The PractitionerRole profile from US Core was not used because it is over-constrained for use in a Provider Directory based on Payer information.  The Network profile is based on USCore Organization, since there was no contradiction between the USCore profile and the Plan-Net requirements.  However, the NPI and CLIA identifier types, which are Must-Support, are clearly intended for provider organizations only and are not expected to be populated for other organization types. Alignment with VhDir is maintained by adapting VhDir content, where possible.

<h4>Disclaimers and Assumptions</h4>
<ul>
<li> <b>PDEX Payer Network is based conceptually on VhDir</b>: The PDEX Payer Network implementation guide is based conceptually on the VhDir implementation guide, which is still a work in progress. Plan-net will need to track changes to VhDir to fulfill its goal of minimizing rework.
</li><li> <b>The PDEX Payer Network endpoint is known to the client</b>: This implementation guide assumes that the directory endpoint is known to the client. There is an overarching system architecture issue that is critical to resolve -- how does the client discover the FHIR endpoint of interest. For the purposes of this IG, we consider that problem out of scope.</li>
</ul>
<h4>Background</h4>

Provider directories play a critical role in enabling identification of individual providers and provider organizations, as well as characteristics about them. Provider directories support a variety of use cases, including:
<ul>
<li>Patient/Payer focused</li>
<ul
><li>Find provider accessibility information (specialty, office hours, languages spoken, taking patients) - enables individuals and consumers to find contact and other accessibility information for individual healthcare providers and/or healthcare organizations
</li>
<li>Relationship between provider and insurance plan (insurance accepted) or plan and provider (network) - enables individual healthcare providers, organizations, and payers to discover the relationships between providers, organizations, and payers, as well as additional details about the relationships and entities involved
</li>
</ul>
<li>Basic Information Exchange</li>
<ul>
<li>Enable electronic exchange (e.g. discovery of electronic endpoints such as IHE/EHR endpoints, FHIR server URLs, Direct addresses) - enables the electronic exchange of health information by supporting the ability to discover electronic service information including electronic endpoints or electronic addresses</li>
<li>Find an individual and/or organization (even if no electronic endpoint is available) - enables users to find contact and other identifying information about healthcare organizations and individual healthcare providers</li>
</ul>
</ul>
<br>
This IG addresses two actors:
<ul>
<li>Health Plan API Actor:  A payer publishing a directory of its provider networks through a FHIR endpoint.</li>
<li>Application Actor:  A third party using the API published by a payer to provide useful views of the payer's provider networks for end users.</li>
</ul>
For anticipated query use cases, please see <a href="implementation.html#Representing">Representing and Searching Provider Data</a>.

<h4>Overview of Payer Directory - Resource Relationships</h4>

Note: the following diagrams provide a high-level view of the relationships between resources used in this IG. They do not necessarily reflect all of the relationships/references between resources.

<img src="Slide2.png" alt = "Key Relationships Among Payer Directory Resources" style="height:auto;float:none;align:middle;width:100%;"  />
<img src="Slide3.png" alt = "Relationships Between Payer Directory Resources -- Endpoints" style="height:auto;float:none;align:middle;width:100%;"  />

<h4>Credits</h4>
This IG was developed by the MITRE Corporation under the direction of the authors using [FHIR Shorthand syntax](https://build.fhir.org/ig/HL7/fhir-shorthand/) and the [SUSHI tookit](https://github.com/FHIR/sushi),  a free, open source toolchain from the MITRE Corporation.  Generous guidance on FHIR Shorthand and SUSHI was provided by Chris Moesel.  The capability statements were developed with support of tools and generous guidance from Eric Haas, and benefited from critical review by Yengibar Manasyan.


### Dependencies

{% include dependency-table.xhtml %}

### Intellectual Property Considerations
This implementation guide and the underlying FHIR specification are licensed as public domain under the [FHIR license](http://hl7.org/fhir/R4/license.html#license). The license page also describes rules for the use of the FHIR name and logo.

{% include ip-statements.xhtml %}
  
