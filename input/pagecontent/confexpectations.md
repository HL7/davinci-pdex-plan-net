This implementation guide uses specific terminology such as SHALL, SHOULD, MAY to flag statements that have relevance for the evaluation of conformance with the guide. As well, profiles in this implementation guide make use of the [mustSupport](http://hl7.org/fhir/R4/profiling.html#mustsupport) element. Base expectations for the intepretations of these terms are set in the [FHIR core specification](http://hl7.org/fhir/R4/conformance-rules.html#conflang) and general Da Vinci-wide expectations are defined in [HRex]({{site.data.fhir.ver.hrex}}/conformance.html)

Additional conformance expectations specific to this guide are as follows:

### Conformance Expectations
* This guide inherits all conformance expectations identified in the Health Record Exchange (Hrex) Conformance Expectations section. All systems claiming conformance to this guide **SHALL** conform to the requirements listed in that section.

* Server systems claiming conformance to this guide **SHALL** meet the capability statement expectation requirements identified in the [US Drug Formulary Server Capability Statement](CapabilityStatement-usdf-server.html) and **SHALL** have a CapabilityStatement that has a CapabilityStatement.instantiates with a URL of http://hl7.org/fhir/us/davinci-drug-formulary/CapabilityStatement/usdf-server or a URL to the appropriate version of the CapabilityStatement.

### MustSupport
* The must support requirements for this IG are taken directly from the Conformance Expectations section of the [Da Vinci HRex IG]({{site.data.fhir.ver.hrex}}/conformance.html#mustsupport) and from [US Core]({{site.data.fhir.ver.uscore7}}/must-support.html). 

