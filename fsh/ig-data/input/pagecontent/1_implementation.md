<div>
<h3><a name="Implementation"></a>Implementation Notes</h3>
<p>This page contains miscellaneous information on FHIR implementation. The content is primarily directed at implementers of Plan-Net. The following topics are addressed:</p>
<ul>
<li><a href="implementation.html#privacy-considerations">Privacy Considerations</a></li>
<li><a href="implementation.html#conformance-requirements">Conformance Requirements</a></li>
<li><a href="implementation.html#relationship-to-us-core">Relationship to USCore</a></li>
<li><a href="implementation.html#general-security-considerations">General Security Considerations</a></li>
</ul>
<h4><a name="Privacy"></a>Privacy Considerations</h4>
Access to the Plan-net service should not require authentication, and the server should not maintain any records that could associate the consumer with the entities that were queried.
<p>A conformant Plan-net service <strong>SHALL NOT</strong> require a directory mobile application to send consumer identifying information in order to query content.</p>
<p>A directory mobile application <strong>SHALL NOT</strong> send consumer identifiable information when querying a Plan-net service.</p>
<h4><a name="Conformance"></a>Conformance Requirements</h4>
<p>The conformance verbs - <strong>SHALL</strong>, <strong>SHOULD</strong>, <strong>MAY</strong> - used in this guide are defined in [FHIR Conformance Rules](https://trifolia-fhir-dev.lantanagroup.com/http:/hl7.org/fhir/R4/conformance-rules.html).</p>
<h4><a name="MustSupport"></a>Must Support</h4>
<p>When querying and reading the Plan-Net Profiles defined in this IG, Must Support on any profile data element <strong>SHALL</strong> be interpreted as follows:</p>
<h5>Health Plan API Requirements</h5>
<ul>
<li>Health Plan API actors <strong>SHALL</strong> be capable of populating all data elements as part of the query results. * In situations where information on a particular data element is not present and the cardinality is 0.. , the Health Plan API actors <strong>SHALL NOT</strong> include the data elements in the resource instance returned as part of the query results.</li>
<li>In situations where information on a particular data element is not present and the cardinality is &gt;0.. <strong>SHALL</strong>&nbsp;send the reason for the missing information using values (such as nullFlavors) from the value set where they exist or use the dataAbsentReason extension.</li>
</ul>
<h5>Application Requirements</h5>
<ul>
<li>Application actors&nbsp;<strong>SHALL</strong> be capable of processing resource instances containing the data elements without generating an error or causing the application to fail.</li>
<li>Application actors <strong>SHOULD</strong> be capable of displaying the data elements for human use or storing the information for other purposes.</li>
<li>When querying Health Plan API actors, Application actors <strong>SHALL</strong>&nbsp;interpret missing data elements within resource instances as data not present in the Health Plan API actors system.</li>
<li>Consumer App actors&nbsp;<strong>SHALL</strong>&nbsp;be able to process resource instances containing data elements asserting missing information.</li>
</ul>
<h4>Relationship to US Core</h4>
<p>This guide used a corresponding US Core profile as its base profile in all cases where such a profile existed and wasn't in conflict with the Payer data models supporting a provider directory (i.e. Location, Organization and Practitioner). Conflicts prevented the use of the USCore PractitionerRole profile, but all compatible aspects of the USCore PractitionerRole profile were retained in the corresponding Plan-Net profile.</p>
<h4>General Security Considerations</h4>
</div>