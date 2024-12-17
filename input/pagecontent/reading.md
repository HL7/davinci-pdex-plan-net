### Reading this IG

This guide is based on the [HL7 FHIR 4.0.1](http://hl7.org/fhir/R4/) standard, as well as the [Da Vinci PDex Plan Net](https://www.hl7.org/fhir/us/davinci-pdex-plan-net/) and [US Core](https://www.hl7.org/fhir/us/core/) standards, which build additional capabilities on top of FHIR. This architecture is intended to maximize the number of clinical systems that conform to this guide as well as to allow for easy growth and extensibility of system capabilities in the future.

To understand how to read an Implementation Guide implementers should refer to the [How to Read page](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html) in the FHIR Specification.

### Underlying Technologies
This guide is based on the [HL7 FHIR]({{site.data.fhir.path}}index.html) standard.  Implementers of this specification therefore need to understand some basic information about these specifications.

#### FHIR
This implementation guide uses terminology, notations and design principles that are
specific to FHIR.  Before reading this implementation guide, it's important to be familiar with some of the basic principles of FHIR, as well as general guidance on how to read FHIR specifications.  Readers who are unfamiliar with FHIR are encouraged to read (or at least skim) the following prior to reading the rest of this implementation guide.

* [FHIR Overview]({{site.data.fhir.path}}overview.html)
* [Developer's Introduction]({{site.data.fhir.path}}overview-dev.html) (or [Clinical Introduction]({{site.data.fhir.path}}overview-clinical.html))
* [FHIR Data Types]({{site.data.fhir.path}}datatypes.html)
* [Using Codes]({{site.data.fhir.path}}terminologies.html)
* [References between Resources]({{site.data.fhir.path}}references.html)
* [How to Read Resource & Profile Definitions]({{site.data.fhir.path}}formats.html) and additional [IG reading guidance](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html)
* [Base Resource]({{site.data.fhir.path}}resource.html)

This implementation guide supports the [R4]({{site.data.fhir.path}}index.html) version of the FHIR standard.

This implementation guide also builds on the [US Core]({{site.data.fhir.hl7_fhir_us_core}}) Implementation Guide and implementers need to familiarize themselves with the profiles in that IG.

The following FHIR Resources are used in this IG:

* [capabilitystatement](http://hl7.org/fhir/R4/capabilitystatement.html)
* [codesystem](http://hl7.org/fhir/R4/codesystem.html)
* [endpoint](http://hl7.org/fhir/R4/endpoint.html)
* [insuranceplan](http://hl7.org/fhir/R4/insuranceplan.html)
* [location](http://hl7.org/fhir/R4/location.html)
* [organization](http://hl7.org/fhir/R4/organization.html)
* [organizationaffiliation](http://hl7.org/fhir/R4/organizationaffiliation.html)
* [practitioner](http://hl7.org/fhir/R4/practitioner.html)
* [practitionerrole](http://hl7.org/fhir/R4/practitionerrole.html)
* [searchparameter](http://hl7.org/fhir/R4/searchparameter.html)
* [structuredefinition](http://hl7.org/fhir/R4/structuredefinition.html)
* [valueset](http://hl7.org/fhir/R4/valueset.html)