<h3><a name="Implementation"></a>Implementation Notes</h3>
<p>This page contains miscellaneous information on FHIR implementation. The content is primarily directed at implementers of Plan-Net. </p>
<h4><a id="privacy-considerations"></a>Privacy Considerations</h4>
<p>Access to the Plan-net service should not require authentication, and the server should not maintain any records that could associate the consumer with the entities that were queried.</p>
<p>A conformant Plan-net service <strong>SHALL NOT</strong> require a directory mobile application to send consumer identifying information in order to query content.</p>
<p>A directory mobile application <strong>SHALL NOT</strong> send consumer identifiable information when querying a Plan-net service.</p>
<h4><a id="conformance-requirements"></a>Conformance Requirements</h4>
<p>The conformance verbs - <strong>SHALL</strong>, <strong>SHALL NOT,&nbsp;</strong><strong>SHOULD</strong>, <strong>MAY</strong> - used in this guide are defined in <a href="http://hl7.org/fhir/R4/conformance-rules.html">FHIR Conformance Rules</a>.</p>
<h4><a id="must-support"></a>Must Support</h4>
<p>When querying and reading the Plan-Net Profiles defined in this IG, Must Support on any profile data element <strong>SHALL</strong> be interpreted as follows:</p>
<h5>Health Plan API Requirements</h5>
<ul>
<li>Health Plan API actors <strong>SHALL</strong> be capable of populating all Must Support data elements as part of the query results.</li>
<li>In situations where information on a particular Must Support data element is not present and the cardinality is 0.. , the Health Plan API actors <strong>SHALL NOT</strong> include the data elements in the resource instance returned as part of the query results.</li>
<li>In situations where information on a particular data element is not present and the cardinality is &gt;0.. <strong>SHALL</strong>&nbsp;send the reason for the missing information using values (such as nullFlavors) from the value set where they exist or use the dataAbsentReason extension.</li>
</ul>
<h5>Application Requirements</h5>
<ul>
<li>Application actors&nbsp;<strong>SHALL</strong> be capable of processing resource instances containing the Must Support data elements without generating an error or causing the application to fail.</li>
<li>Application actors <strong>SHOULD</strong> be capable of displaying the data elements for human use or storing the information for other purposes.</li>
<li>When querying Health Plan API actors, Application actors <strong>SHALL</strong>&nbsp;interpret missing Must Support data elements within resource instances as data not present in the Health Plan API actors system.</li>
<li>Consumer App actors&nbsp;<strong>SHALL</strong>&nbsp;be able to process resource instances containing Must Support data elements asserting missing information.</li>
</ul>
<h4><a id="relationship-to-us-core"></a>Client Detection of Updates Directory Content</h4>
<p>Each profile in this guide requires that the lastUpdate timestamp be provided as part of the profile's data content.&nbsp; Clients that cache query results can track additions or modifications to directory content through queries that filter content using the _lastUpdated search parameter.&nbsp; Clients should periodically check that data cached from past queries has not been deleted by querying for the same elements by _id.</p>
<h4><a id="general-security-considerations"></a>General Security Considerations</h4>
<strong>NO CONTENT</strong>
<h3><a name="Representing"></a>Representing and Searching Provider Directory Data</h3>
<p>It is important for payers to use the Plan-Net profiles consistently in order to achieve true interoperability of directory information among payers. The intent of this section is to provide examples of the canonical use of the profiles provided in this IG that will guide implementers towards the consistent use of these profiles that will enable 3rd party applications to search the data.&nbsp; The Plan-Net design is based around the following types of searches.</p>
<table style="border-color: Black;" border="3" width="947">
<tbody>
<tr>
<td width="231">
<p><strong>Search</strong></p>
</td>
<td width="180">
<p><strong>Example</strong></p>
</td>
<td width="279">
<p><strong>Focal&nbsp; Resource and Field</strong></p>
</td>
<td width="257">
<p><strong>Qualifications of Search</strong></p>
</td>
</tr>
<tr>
<td width="231">
<p>General Search</p>
</td>
<td width="180">
<p>Pharmacy</p>
</td>
<td width="279">
<p>HealthcareService.category, HealthcareService.specialty</p>
</td>
<td width="257">
<p>Location, network</p>
</td>
</tr>
<tr>
<td width="231">
<p>Provider by Name</p>
</td>
<td width="180">
<p>Joe Smith</p>
</td>
<td width="279">
<p>Practitioner.name</p>
</td>
<td width="257">
<p>Location, network, specialty/role, privileges</p>
</td>
</tr>
<tr>
<td width="231">
<p>Organization by Name</p>
</td>
<td width="180">
<p>Montgomery Cardiology or CVS</p>
</td>
<td width="279">
<p>Organization.name</p>
</td>
<td width="257">
<p>Location, network, specialty</p>
</td>
</tr>
<tr>
<td width="231">
<p>Provider by Specialty</p>
</td>
<td width="180">
<p>Cardiologist</p>
</td>
<td width="279">
<p>Practitioner.qualification, PractitionerRole.specialty</p>
</td>
<td width="257">
<p>Location, network, name</p>
</td>
</tr>
<tr>
<td width="231">
<p>Organization by Specialty</p>
</td>
<td width="180">
<p>Compounding Pharmacy</p>
</td>
<td width="279">
<p>Organization.qualification,<br /> OrganizationAffiliation.specialty</p>
</td>
<td width="257">
<p>Location, network, name</p>
</td>
</tr>
</tbody>
</table>
<p>The content in this section of the IG is based on the <a href="artifacts.html#7">examples</a> provided and on the patterns provided <a href="patterns.pptx">here</a>.<br />Specific examples are referenced in the text below.</p>
<h4><a name="HealthcareService"></a>HealthcareService</h4>
<p>The first type of search starts from HealthcareService.category and HealthcareService.specialty, so it essential that each provider's service be supported by appropriate set of HealthcareService instances.&nbsp; HealthcareServices are typically provided by an organization, except in the case of a Practitioner that is not associated with an organization (see the solo practitioner example), and can be linked to a set of locations where service is provided, or identified as virtual services through an indicated set of virtual modalities.&nbsp; &nbsp;The examples illustrate this with an organization that provides three distinct Pharmacy services -- retail, compounding, and mail-order -- across its locations.&nbsp; All organizations that provide service should define an appropriate set. of HealthcareServices to facilitate search.&nbsp; The HealthcareService category, specialty and type fields are the highest level of organization of the services provided by the provider's network.</p>
<p>Relevant examples:</p>
<table style="height: 119px; border-color: Black;" border="1" width="509">
<tbody>
<tr>
<td style="width: 162px;">Scenario</td>
<td style="width: 162px;">Example Instances</td>
</tr>
<tr>
<td style="width: 162px;">Retail Pharmacy Chain</td>
<td style="width: 162px;">
<p><a title="HealthcareService/PharmChainRetailService" href="HealthcareService-PharmChainRetailService.html">PharmChainRetailService</a></p>
</td>
</tr>
<tr>
<td style="width: 162px;">Compounding Pharmacy</td>
<td style="width: 162px;"><a title="HealthcareService/PharmChainCompService" href="HealthcareService-PharmChainCompService.html">PharmChainCompService</a></td>
</tr>
<tr>
<td style="width: 162px;">Mail Order Pharmacy (virtual service with no physical location)</td>
<td style="width: 162px;"><a title="HealthcareService/PharmChainMailService" href="HealthcareService-PharmChainMailService.html">PharmChainMailService</a></td>
</tr>
<tr>
<td style="width: 162px;">Provider Group</td>
<td style="width: 162px;"><a title="HealthcareService/HartfordOrthopedicServices" href="HealthcareService-HartfordOrthopedicServices.html">HartfordOrthopedicServices</a></td>
</tr>
<tr>
<td style="width: 162px;">Emergency Room</td>
<td style="width: 162px;"><a title="HealthcareService/HospERService" href="HealthcareService-HospERService.html">HospERService</a></td>
</tr>
<tr>
<td style="width: 162px;">Cancer Clinic</td>
<td style="width: 162px;"><a title="HealthcareService/CancerClinicService" href="HealthcareService-CancerClinicService.html">CancerClinicService</a></td>
</tr>
<tr>
<td style="width: 162px;">
<div>
<div>Virtual Counseling Service</div>
</div>
</td>
<td style="width: 162px;"><a href="HealthcareService-VirtualCounselService.html">VirtualCounselService</a></td>
</tr>
<tr>
<td style="width: 162px;">&nbsp;Solo Family Practitioner&nbsp;</td>
<td style="width: 162px;">&nbsp;<a href="HealthcareService-HansSoloService.html">HansSoloService</a></td>
</tr>
</tbody>
</table>
<h4><a name="InsurancePlanAndNetwork"></a>Insurance Plan and Network<br /><br /></h4>
<p>Each payer will offer one or more products -- Insurance Plans -- and each plan is associated with one or more Networks.&nbsp; Practitioners and Organizations indicate participation in a Network with a link to the Network using a PractitionerRole or OrganizationAffiliation instance, respectively.&nbsp; &nbsp;PractitionerRole and OrganizationAffiliation instances are what tie Practitioners and Organizations to HealthcareServices, Organizations, Networks and Locations.</p>
<p>The examples demonstrate the use of the InsurancePlan profile to represent two distinct Qualified Health Plan products covering the state of Connecticut, using a pair of Networks.&nbsp; The practitioners and organizations in the examples participate in one or both of these networks.</p>
<p>Relevant examples:</p>
<table border="1" width="509">
<tbody>
<tr>
<td>Scenario</td>
<td>Example Instances</td>
</tr>
<tr>
<td>Insurance Company</td>
<td>
<p><a title="Organization/Acme" href="Organization-Acme.html">Acme</a></p>
</td>
</tr>
<tr>
<td>QHP Gold Plan with two networks</td>
<td><a title="InsurancePlan/AcmeQHPGold" href="InsurancePlan-AcmeQHPGold.html">AcmeQHPGold</a></td>
</tr>
<tr>
<td>QHP Bronze plan with one network</td>
<td><a title="InsurancePlan/AcmeQHPBronze" href="InsurancePlan-AcmeQHPBronze.html">AcmeQHPBronze</a></td>
</tr>
<tr>
<td>Standard Network</td>
<td><a title="Organization/AcmeofCTStdNet" href="Organization-AcmeofCTStdNet.html">AcmeofCTStdNet</a></td>
</tr>
<tr>
<td>Premium Network</td>
<td><a title="Organization/AcmeofCTPremNet" href="Organization-AcmeofCTPremNet.html">AcmeofCTPremNet</a></td>
</tr>
</tbody>
</table>
<h4><a name="Location"></a>Location</h4>
<p>Location instances provide information about location where service is provided, including contact information, address, accessibility, hours of operation and contact, as well as position (lattitude and longitude).&nbsp; &nbsp;Locations can also be used to represent regions using an associated or attached GeoJSON object.</p>
<p>Relevant examples:</p>
<table border="1" width="509">
<tbody>
<tr>
<td>Scenario</td>
<td>Example Instances</td>
</tr>
<tr>
<td>Hospital Location #1</td>
<td>
<p><a title="Location/HospLoc1" href="Location-HospLoc1.html">HospLoc1</a></p>
</td>
</tr>
<tr>
<td>Hospital Location #2</td>
<td><a title="Location/HospLoc2" href="Location-HospLoc2.html">HospLoc2</a></td>
</tr>
<tr>
<td>Pharmacy Location #1 .&nbsp; Shows newpatient,<br />accessibliity, and contactpoint-availabletime extensions</td>
<td><a title="Location/PharmLoc1" href="Location-PharmLoc1.html">PharmLoc1</a></td>
</tr>
<tr>
<td>Pharmacy Location #2</td>
<td><a title="Location/PharmLoc2" href="Location-PharmLoc2.html">PharmLoc2</a></td>
</tr>
<tr>
<td>Location used as CoverageArea</td>
<td><a title="Location/StateOfCTLocation" href="Location-StateOfCTLocation.html">StateOfCTLocation</a></td>
</tr>
</tbody>
</table>
<h4><a name="PractitionersAndPractitionerRole"></a>Practitioners and PractitionerRoles</h4>
<p>Practitioner instances provide information about a specific person, including name, gender, languages spoken, and qualifications.&nbsp; &nbsp;PractitionerRole defines a role for a particular practitioner, and associates it with locations, specialties, an organization, and networks.</p>
<table style="height: 243px; width: 803px;" border="1">
<tbody>
<tr>
<td style="width: 432px;">Scenario</td>
<td style="width: 355px;">Example Instances</td>
</tr>
<tr>
<td style="width: 432px;">Solo Practitioner (no organization)</td>
<td style="width: 355px;">
<p><a title="Practitioner/HansSolo" href="Practitioner-HansSolo.html">HansSolo</a>,&nbsp;<a title="PractitionerRole/HansSoloRole1" href="PractitionerRole-HansSoloRole1.html">HansSoloRole1</a>,&nbsp;<a title="HealthcareService/HansSoloService" href="HealthcareService-HansSoloService.html">HansSoloService</a></p>
</td>
</tr>
<tr>
<td style="width: 432px;">Anonymous role (not associated with a specific practitioner)</td>
<td style="width: 355px;"><a title="PractitionerRole/AnonRole" href="PractitionerRole-AnonRole.html">AnonRole</a></td>
</tr>
<tr>
<td style="width: 432px;">Physician working at a provider group</td>
<td style="width: 355px;"><a title="Practitioner/JoeSmith" href="Practitioner-JoeSmith.html">JoeSmith</a><a title="PractitionerRole/JoeSmithRole2" href="PractitionerRole-JoeSmithRole2.html">, JoeSmithRole2</a></td>
</tr>
<tr>
<td style="width: 432px;">Physician with admitting privileges</td>
<td style="width: 355px;"><a title="Practitioner/JoeSmith" href="Practitioner-JoeSmith.html">JoeSmith</a><a title="PractitionerRole/JoeSmithRole3" href="PractitionerRole-JoeSmithRole3.html">, JoeSmithRole3</a></td>
</tr>
<tr>
<td style="width: 432px;">Physician working at a hospital</td>
<td style="width: 355px;"><a title="Practitioner/JoeSmith" href="Practitioner-JoeSmith.html">JoeSmith</a><a title="PractitionerRole/JoeSmithRole1" href="PractitionerRole-JoeSmithRole1.html">, JoeSmithRole1</a></td>
</tr>
<tr>
<td style="width: 432px;">Counselor working virtually</td>
<td style="width: 355px;">
<div>
<div><a href="PractitionerRole-CounselorRole1.html">CounselorRole1</a></div>
</div>
</td>
</tr>
</tbody>
</table>
<h4><a name="OrganizationAndOrganizationAffiliation"></a>Organizations and Organization Affiliations</h4>
<p>Organization instances provide information about a specific organization and organizational hierarchies, including organization name, specialty, type, address and contact information.&nbsp; Organization Affiliation instances describe a role, and link a participating organization that provides or performs the role, with an organization where that role is available, and also links the participating organization to a HealthcareServices and networks.&nbsp; OrganizationalAffiliation can also be used to associate a HealthcareService provided by an organization with networks.</p>
<table border="1">
<tbody>
<tr>
<td>Scenario</td>
<td>Example Instances</td>
</tr>
<tr>
<td>Pharmacy services are associated with a specific provider network</td>
<td>
<p><a title="Organization/PharmChain" href="Organization-PharmChain.html">PharmChain</a>,&nbsp;<a title="OrganizationAffiliation/PharmChainAffil1" href="OrganizationAffiliation-PharmChainAffil1.html">PharmChainAffil1</a>,&nbsp;<a title="OrganizationAffiliation/PharmChainAffil2" href="OrganizationAffiliation-PharmChainAffil2.html">PharmChainAffil1</a>,&nbsp;<a title="OrganizationAffiliation/PharmChainAffil3" href="OrganizationAffiliation-PharmChainAffil3.html">PharmChainAffil1</a></p>
</td>
</tr>
<tr>
<td>Clinic Providing Service to a Hospital</td>
<td><a title="Organization/BurrClinic" href="Organization-BurrClinic.html">BurrClinic</a>,&nbsp;<a title="OrganizationAffiliation/BurrClinicAffil" href="OrganizationAffiliation-BurrClinicAffil.html">BurrClinicAffil,&nbsp;</a><a title="Organization/Hospital" href="Organization-Hospital.html">Hospital</a></td>
</tr>
<tr>
<td>Clinic that is part of a Hospital</td>
<td><a title="Organization/HamiltonClinic" href="Organization-HamiltonClinic.html">HamiltonClinic</a>,&nbsp;<a title="OrganizationAffiliation/HamiltonClinicAffil" href="OrganizationAffiliation-HamiltonClinicAffil.html">HamiltonClinicAffil,&nbsp;</a><a title="Organization/Hospital" href="Organization-Hospital.html">Hospital</a></td>
</tr>
<tr>
<td>Specialty group providing service to a network at hospital</td>
<td><a title="Organization/HartfordOrthopedics" href="Organization-HartfordOrthopedics.html">HartfordOrthopedics</a>,&nbsp;<a title="OrganizationAffiliation/HartfordOrthopedicAffil" href="OrganizationAffiliation-HartfordOrthopedicAffil.html">HartfordOrthopedicAffil,&nbsp;</a><a title="Organization/Hospital" href="Organization-Hospital.html">Hospital</a></td>
</tr>
<tr>
<td>Clinic that is a member of a regional HIE</td>
<td><a title="Organization/BurrClinic" href="Organization-BurrClinic.html">BurrClinic</a>,&nbsp;<a title="Organization/ConnHIE" href="Organization-ConnHIE.html">ConnHIE</a>,&nbsp;<a title="OrganizationAffiliation/ConnHIEAffil" href="OrganizationAffiliation-ConnHIEAffil.html">ConnHIEAffil</a></td>
</tr>
</tbody>
</table>
<h4><a name="Privacy"></a>Endpoints</h4>
<p>An Endpoint instance&nbsp;provides&nbsp; technical details of an endpoint that can be used for electronic services, such as a portal or FHIR REST services, messaging or operations, or DIRECT messaging.</p>
<table style="height: 33px;" border="1" width="776">
<tbody>
<tr>
<td style="width: 167px;">Scenario</td>
<td style="width: 593px;">Example Instances</td>
</tr>
<tr>
<td style="width: 167px;">Payer Portal</td>
<td style="width: 593px;"><a title="Endpoint/AcmeOfCTPortalEndpoint" href="Endpoint-AcmeOfCTPortalEndpoint.html">AcmeOfCTPortalEndpoint</a></td>
</tr>
</tbody>
</table>
<div>&nbsp;</div>