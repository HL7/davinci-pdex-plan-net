This implementation guide uses specific terminology such as SHALL, SHOULD, MAY to flag statements that have relevance for the evaluation of conformance with the guide. As well, profiles in this implementation guide make use of the [mustSupport](http://hl7.org/fhir/R4/profiling.html#mustsupport) element. Base expectations for the intepretations of these terms are set in the [FHIR core specification](http://hl7.org/fhir/R4/conformance-rules.html#conflang) and general Da Vinci-wide expectations are defined in [HRex]({{site.data.fhir.ver.hrex}}/conformance.html)

Additional conformance expectations specific to this guide are as follows:

### Conformance Expectations
* This guide inherits all conformance expectations identified in the Health Record Exchange (Hrex) Conformance Expectations section. All systems claiming conformance to this guide **SHALL** conform to the requirements listed in that section.

* Server systems claiming conformance to this guide **SHALL** meet the capability statement expectation requirements identified in the [Plan-Net CapabilityStatement ](CapabilityStatement-plan-net.html) and **SHALL** have a CapabilityStatement that has a CapabilityStatement.instantiates with a URL of http://hl7.org/fhir/us/davinci-drug-formulary/CapabilityStatement/usdf-server or a URL to the appropriate version of the CapabilityStatement.

### MustSupport
* The must support requirements for this IG inherit from the Conformance Expectations section of the [Da Vinci HRex IG]({{site.data.fhir.ver.hrex}}/conformance.html#mustsupport) and from [US Core]({{site.data.fhir.ver.uscore7}}/must-support.html). 


<p>When querying and reading the Plan-Net Profiles defined in this IG, Must Support on any profile data element <strong>SHALL</strong> be interpreted as follows:</p>
<h5>Health Plan API Requirements</h5>
<ul>
<li>Health Plan API actors <strong>SHALL</strong> be capable of populating all Must Support data elements as part of the query results.</li>
<li>In situations where information on a particular Must Support data element is not present and the minimum cardinality is 0 , the Health Plan API actors <strong>SHALL NOT</strong> include the data elements in the resource instance returned as part of the query results.</li>
<li>In situations where information on a particular data element is not present and the minimum cardinality is &gt;0 <strong>SHALL</strong>&nbsp;send the reason for the missing information using values (such as nullFlavors) from the value set where they exist or use the dataAbsentReason extension.</li>
</ul>
<h5>Application Requirements</h5>
<ul>
<li>Application actors&nbsp;<strong>SHALL</strong> be capable of processing resource instances containing the Must Support data elements without generating an error or causing the application to fail.</li>
<li>Application actors <strong>SHOULD</strong> be capable of displaying the data elements for human use or storing the information for other purposes.</li>
<li>When querying Health Plan API actors, Application actors <strong>SHALL</strong>&nbsp;interpret missing Must Support data elements within resource instances as data not present in the Health Plan API actors system.</li>
<li>Consumer App actors&nbsp;<strong>SHALL</strong>&nbsp;be able to process resource instances containing Must Support data elements asserting missing information.</li>
</ul>