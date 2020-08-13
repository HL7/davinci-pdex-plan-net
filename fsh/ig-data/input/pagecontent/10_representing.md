<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">
<h3><a name="Reprsenting"></a>Representing and Searching Provider Directory Data</h3>
<p>It is important for payers to use the Plan-Net profiles consistently in order to achieve true interoperability of directory information among payers. The intent. of this section is to provide examples of the canonical use of the profiles provided in this IG that will guide implementers towards the consistent use of these profiles that will enable 3rd party applications to search the data.</p>
<table width="947">
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
<p>&ldquo;Pharmacy&rdquo;</p>
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
<p>&ldquo;Joe Smith&rdquo;</p>
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
<p>&ldquo;Montgomery Cardiology&rdquo; or &ldquo;CVS&rdquo;</p>
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
<p>&ldquo;Cardiologist&rdquo;</p>
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
<h4><a name="Privacy"></a>HealthcareService</h4>
<p>The first type of search starts from HealthcareService.category and HealthcareService.specialty, so it essential that each provider's service be supported by appropriate HealthcareService instances.&nbsp; HealthcareServices are typically provided by an organization, except in the case of a Practitioner that is not associated with an organization (see the solo practitioner example), and can be linked to a set of locations where service is provided, or identified as virtual services through an indicated set of virtual modalities.&nbsp; &nbsp;The examples illustrate this with an organization that provides three distinct Pharmacy services -- retail, compounding, and mail-order -- across its locations.&nbsp; All organizations that provide service should define an appropriate set. of HealthcareServices to facilitate search.&nbsp; The HealthcareService category, specialty and type fields are the highest level of organization of the services provided by the provider's network.</p>
<p>Relevant examples:</p>
<h4><a name="Privacy"></a>Insurance Plan and Network<br /><br /></h4>
<p>Each payer will offer one or more products -- Insurance Plans -- and each plan is associated with one or more Networks.&nbsp; &nbsp;Practitioners and Organizations indicate participation in a Network by establishing. alink to the Network using a PractitionerRole or OrganizationAffiliation instance, respectively.&nbsp; &nbsp;PractitionerRole and OrganizationAffiliation instances are what tie Practitioners and Organizations to HealthcareServices, Organizations, Networks and Locations.</p>
<p>The examples demonstrate the use of the InsurancePlan profile to represent two distinct Qualified Health Plan products covering the state of Connecticut, using. a pair of Networks.&nbsp; The practitioners and organizations in the examples participate in one or both of these networks.</p>
<p>Relevant examples:</p>
<h4><a name="Privacy"></a>Location</h4>
<p>Location instances provide all of the information of interest to consumers about a particular location where service is provided, including contact information, address, accessibility, hours of operation and contact, as well as position (lattitude and longitude).&nbsp; &nbsp;Locations can also be used to represent regions using an associated or attached GeoJSON object.</p>
<p>Relevant examples:</p>
<h4><a name="Privacy"></a>Practitioners and PractitionerRoles</h4>
<p>Relevant examples:</p>
<h4><a name="Privacy"></a>Organizations and Organization Affiliations</h4>
<p>Relevant examples:</p>
<h4><a name="Privacy"></a>Endpoints</h4>
<p>Relevant examples:</p>
<h4>&nbsp;</h4>

<div>