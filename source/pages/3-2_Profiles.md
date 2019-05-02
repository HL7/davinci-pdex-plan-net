---
title: 3-2 Profiles
layout: default
active: 3-2 Profiles
---

### 3-2-1 Healthcare Network Directory 

The provision of a Member-accessible Healthcare Directory API for a health plan's network **SHALL** use the profiles and other stipulations detailed in the [Validated Healthcare Directory Implementation Guide](http://build.fhir.org/ig/HL7/VhDir/index.html) (VHDir IG). 

The following profiles from the VHDir IG **SHALL** be used, if required:
- [VhDir Insurance Plan](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-insuranceplan.html)
- [VhDir Network](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-network.html)
- [VhDir Practitioner Role](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-practitionerrole.html)
- [VhDir Practitioner](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-practitioner.html)
- [VhDir Organization Affiliation](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-organizationaffiliation.html)
- [VhDir Organization](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-organization.html)
- [VhDir Location](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-location.html)
- [VhDir Healthcare Service](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-healthcareservice.html)
- [VhDir Endpoint](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-endpoint.html)

#### 3-2-1-1 CapabilityStatement

The [Validated Healthcare Directory Implementation Guide](http://build.fhir.org/ig/HL7/VhDir/index.html) (VHDir IG) is detailed here: [http://build.fhir.org/ig/HL7/VhDir/CapabilityStatement-vhdir-server.html](http://build.fhir.org/ig/HL7/VhDir/CapabilityStatement-vhdir-server.html)

### 3-2-2 Pharmacy Network Directory

The Pharmacy Network Directory API **SHALL** be provided as a sub-set of the Member-accessible Healthcare Directory.

#### 3-2-2-1 CapabilityStatement

The Pharmacy Network Directory API can be exposed as a sub-set of the Healthcare Directory. The CapabilityStatement is detailed here: [http://build.fhir.org/ig/HL7/VhDir/CapabilityStatement-vhdir-server.html](http://build.fhir.org/ig/HL7/VhDir/CapabilityStatement-vhdir-server.html) 