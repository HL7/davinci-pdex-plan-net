<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<h3><a name="Implementation"></a>Implementation Notes</h3>
<p>This page contains miscellaneous information on  FHIR implementation. The content is primarily directed at implementers of Plan-Net. The following topics are addressed: </p>

<ul>
    <li><a href="#Privacy">Privacy Considerations</a></li>
    <li><a href="#Conformance">Conformance Requirements</a></li>
    <li><a href="#USCore">Relationship to USCore</a></li>
</ul>

<h4><a name="Privacy"></a>Privacy Considerations</h4>


Access to the Plan-net service should not require authentication, and the server should not maintain any records that could associate the consumer with the entities that were queried.

A conformant Plan-net service SHALL NOT require a directory mobile application to send consumer identifying information in order to query content.

A directory mobile application SHALL NOT send consumer identifiable information when querying a Plan-net service.

<h4><a name="Conformance"></a>Conformance Requirements</h4>

The conformance verbs - SHALL, SHOULD, MAY - used in this guide are defined in [FHIR Conformance Rules](https://trifolia-fhir-dev.lantanagroup.com/http:/hl7.org/fhir/R4/conformance-rules.html).

<h4><a name="MustSupport"></a>Must Support</h4>
When querying and reading the Plan-Net Profiles defined in this IG, Must Support on any profile data element **SHALL** be interpreted as follows:

<h5>Health Plan API Requirements</h5>
* Health Plan API actors **SHALL** be capable of populating all data elements as part of the query results.
* In situations where information on a particular data element is not present and the cardinality is 0.. , the Health Plan API actors **SHALL NOT** include the data elements in the resource instance returned as part of the query results.
* In situations where information on a particular data element is not present and the cardinality is >0.. **SHALL** send the reason for the missing information using values (such as nullFlavors) from the value set where they exist or use the dataAbsentReason extension.

<h5>Application Requirements</h5>
* Application actors **SHALL** be capable of processing resource instances containing the data elements without generating an error or causing the application to fail.
* Application actors **SHOULD** be capable of displaying the data elements for human use or storing the information for other purposes.
* When querying Health Plan API actors, Application actors **SHALL** interpret missing data elements within resource instances as data not present in the Health Plan API actors system.
* Consumer App actors **SHALL** be able to process resource instances containing data elements asserting missing information.

<h4>Relationship to US Core</h4>
<p>This guide used a corresponding US Core profile as its base profile in all cases where such a profile existed and wasn't in conflict with the Payer data models supporting a provider directory (i.e. Location, Organization and Practitioner).   Conflicts prevented the use of the USCore PractitionerRole profile, but all compatible aspects of the USCore PractitionerRole profile were retained in the corresponding Plan-Net profile.   


</div>
